<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>부트스트랩을 사용한 폼</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-6 mx-auto">
				<h3 class="text-center mt-5">회원 가입</h3>
				
				<form action="form06_process.jsp" method="post">
					<div class="mb-3 mt-3">
						<label for="userId" class="form-label">아이디 : </label>
						<input type="text" class="form-control" id="userId" name="userId" placeholder="아이디를 입력해 주세요">
					</div>
					
					<div class="mb-3">
						<label for="userPw" class="form-label">비밀번호 : </label>
						<input type="password" class="form-control" id="userPw" name="userPw" placeholder="비밀번호를 입력해주세요"><br>
					</div>
					
					<div class="mb-3">
						<label for="userName" class="form-label">이름 : </label>
						<input type="text" class="form-control" id="userName" name="userName" placeholder="이름을 입력해 주세요">
					</div>
					
					<div class="mb-3">
						<label for="select-phone1">연락처 : </label>
						<div class="row">
							<div class="col">
								<select name="select-phone1" class="form-select">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="017">017</option>
								</select>
							</div>
							<div class="col">
								<input type="text" class="form-control" id="phone2" name="phone2" size="4">
							</div>
							<div class="col">
								<input type="text" class="form-control" id="phone3" name="phone3" size="4">
							</div>
						</div>
					</div>
					
					<div class="mb-3">
						<label class="form-label">성별 : </label>
						<div>
							<div class="form-check form-check-inline">
								<input type="radio" class="form-check-input" id="userGenderM" name="userGender" value="남자" checked>
								<label class="form-check-label" for="userGenderM">남자</label>
							</div>
							<div class="form-check form-check-inline">
								<input type="radio" class="form-check-input" id="userGenderF" name="userGender" value="여자">
								<label class="form-check-label" for="userGenderF">여자</label>
							</div>
						</div>
					</div>
					
					<div class="mb-3">
						<label class="form-label">취미 : </label>
						<div>
							<div class="form-check form-check-inline">
								<input type="checkbox" class="form-check-input" id="hobby1" name="hobby" value="독서" checked >
								<label class="form-check-label" for="hobby1">독서</label>
							</div>
							<div class="form-check form-check-inline">
								<input type="checkbox" class="form-check-input" id="hobby2" name="hobby" value="운동">
								<label class="form-check-label" for="hobby2">운동</label>
							</div>
							<div class="form-check form-check-inline">
								<input type="checkbox" class="form-check-input" id="hobby3" name="hobby" value="영화" >
								<label class="form-check-label" for="hobby3">영화</label>
							</div>
						</div>
					</div>

					<div class="mb-3">
						<label for="comment" class="form-label">인사말 : </label>
						<textarea class="form-control" id="comment" name="comment" cols="30" rows="3" placeholder="가입 인사를 입력해주세요"></textarea>
					</div>
					
					<button class="btn btn-primary" type="submit">가입하기</button>
					<button class="btn btn-secondary" type="reset">다시 쓰기</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>










