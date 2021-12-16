SELECT * FROM `testdb`.`t_board`;

 -- 목록 불러오기
 select idx, title, creator_id, created_date, hit_cnt from t_board
 where deleted_yn = 'N';
 
-- 상세 글 내용
select idx, title, contents, creator_id, created_date, update_id, updated_date, hit_cnt
from t_board
where idx = 1
and deleted_yn = 'N';

-- 글쓰기 
insert into t_board (title, contents, creator_id, created_date)
values ('제목 4', '컨텐츠1', 'tememberster01', '2021-12-01 14:18:00');

-- 현재 시간으로 글쓰기
-- now() 함수를 사용하여 현재 시간으로 적용 
insert into t_board (title, contents, creator_id, created_date)
values ('제목 1', '컨텐츠1', 'tememberster01', now());

-- 글 내용 수정
update t_board set title = '제목 2', contents = '컨텐츠 2',
update_id = 'editor01', updated_date = now(), hit_cnt = hit_cnt+1 
where idx = 1
and deleted_yn = 'N';

-- 글 삭제
-- 실제 데이터 삭제
delete from t_board where idx = 1;

-- update문으로 삭제된 것처럼 처리하기
update t_board set deleted_yn = 'Y' where idx = '4';










