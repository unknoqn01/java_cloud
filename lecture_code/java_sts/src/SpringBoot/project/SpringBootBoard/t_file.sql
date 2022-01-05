SELECT * FROM testdb.t_file;

-- board_idx : 게시물 번호, 해당 첨부파일이 어떠한 게시물에 포함된 것인지 나타나기 위한 컬럼, tboard 테이블의 idx와 연동

-- original_filename, stored_filepath : 각각 원본 파일 이름, 서버에 저장된 파일 경로, 동일한 파일이 저장딜 경우 
-- 서버의 운영체제에 따라서 저장되지 않거나 파일명이 변경되는 형태로 저장됨, 파일명이 변경될 경우
-- 해당 파일을 찾지 못하기 때문에 각 프로젝트에서 지정한 규칙에 따라 새로운 파일명으로 저장하고 저장된 파일의 경로를 데이터 베이스에 저장함

insert into t_file (board_idx, original_file_name, stored_file_path, file_size, creator_id, created_date)
values (14, 'asd.jpg', 'ddd.jpg', 123, 'tester01', '2021-12-31 14:15:00');

-- 다운로드
select original_file_name, stored_file_path, file_size
from t_file
where file_idx = 3
and board_idx = 14
and deleted_yn = 'N';














