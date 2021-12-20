<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</head>
<body>
	<header class="container-fluid px-0">
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark px-3">
			<a href="#" class="navbar-brand">JSP Board</a>

			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-targer="#mynavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			
			<div class="collapse navbar-collapse" id="mynavbar">
				<ul class="navbar-nav me-auto">
					<li class="nav-item">
						<a href="#" class="nav-link active">메뉴 1</a>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-link">메뉴 2</a>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-link">메뉴 3</a>
					</li>
				</ul>

				<div class="d-flex">
					<a href="login.jsp" class="btn btn-outline-primary">로그인</a>
				</div>
			</div>
		</nav>
	
		<div class="container">
			<div class="mt-4 p-5 bg-secondary rounded bg-opacity-50">
				<h1 class="text-center">로그인</h1>
			</div>
		</div>
	</header>

	<main class="container mt-5">
		<section class="row">
			<article class="col-sm-4 mx-auto">
				<form action="./loginCheck.jsp" method="post">
					<div class="my-3">
						<label for="user-id" class="form-label">ID : </label>
						<input type="text" class="form-control" id="user-id" name="userId" placeholder="ID를 입력해주세요">
					</div>
					<div class="my-3">
						<label for="user-pw" class="form-label">Password : </label>
						<input type="password" class="form-control" id="user-pw" name="userPw" placeholder="Password를 입력해주세요">
					</div>
					<div class="d-grid gap-2">
						<button type="submit" class="btn btn-primary">로그인</button>
						<a href="signin.jsp" class="btn btn-secondary">회원 가입</a>
					</div>
				</form>
			</article>
		</section>
	</main>

	<footer class="container-fluid text-center p-5 mt-5">
		<p class="lead text-muted">made by bitc</p>
	</footer>
</body>
</html>












