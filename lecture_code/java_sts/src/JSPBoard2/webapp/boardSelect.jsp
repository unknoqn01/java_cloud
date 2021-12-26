<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.bitc.dto.BoardDto" %>
<%@ page import="com.bitc.dto.BoardDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</head>
<body>
	<!-- 문제 1) boardList.jsp에서 선택한 글의 상세 내용을 확인하는 페이지를 완성하세요 -->
	<!-- ps) BoardDao 클래스 내에 boardSelect() 메서드를 생성하여 지정한 데이터 읽어오기 -->
	<!-- ps) 부트스트랩 적용 -->
	
	<!-- 문제 2) boardEdit.jsp 파일을 생성하고, BoardDao 클래스를 사용하여 해당 정보를 수정하는 페이지를 작성하세요 -->
	<!-- ps) BoardDao 클래스 내에 boardUpdate() 메서드를 생성하여 지정한 데이터 수정하기 -->
	<!-- ps) BoardUpdateProcess.jsp 파일을 생성하고 뷰 부분은 삭제한 후 update 구문을 처리 -->
	<!-- ps) boardList.jsp 페이지로 돌아가야 함, 부트스트랩 적용 -->
	
	<!-- 문제 3) boardDel.jsp 파일을 생성하고, BoardDao 클래스를 사용하여 해당 정보를 삭제하는 페이지를 작성하세요 -->
	<!-- ps) BoardDao 클래스 내에 boardDelete() 메서드를 생성하여 지정한 데이터 수정하기 -->
	<!-- ps) BoardDeleteProcess.jsp 파일을 생성하고 뷰 부분은 삭제한 후 update 구문을 처리 -->
	<!-- ps) boardList.jsp 페이지로 돌아가야 함, 부트스트랩 적용 -->
	<jsp:include page="header.jsp" flush="false"></jsp:include>
	
	<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	
	BoardDao dao = new BoardDao();
	BoardDto board = dao.boardSelect(idx);
	%>
	<main class="container mt-4">
		<section class="row">
			<article class="col-sm">
				<div class="my-3">
					<label for="title" class="form-label">제목 : </label>
					<input type="text" class="form-control" id="title" readonly value="<%= board.getTitle() %>">
				</div>
				<div class="my-3 row">
					<div class="col-sm">
						<label for="userId" class="form-label">글쓴이 : </label>
						<input type="text" class="form-control" id="userId" readonly value="<%= board.getCreatorId() %>">
					</div>
					<div class="col-sm">
						<label for="hit-cnt" class="form-label">조회수 : </label>
						<input type="text" class="form-control" id="hit-cnt" readonly value="<%= board.getHitCnt() %>">
					</div>
				</div>
				<div class="my-3">
					<label for="contents" class="form-label">내용 : </label>
					<textarea rows="5" class="form-control" id="contents" readonly><%= board.getContents() %></textarea>
				</div>
				<div class="clearfix my-3">
					<button type="button" class="btn btn-secondary float-start" id="btnList">목록</button>
					<button type="button" class="btn btn-success float-end ms-2" id="btnEdit">수정</button>
					<button type="button" class="btn btn-danger float-end" id="btnDel">삭제</button>
				</div>
			</article>
		</section>
	</main>
	
	<%@ include file="footer.jsp" %>
	
	<script>
		window.addEventListener("DOMContentLoaded", function() {
			var btnList = document.querySelector("#btnList");
			var btnEdit = document.querySelector("#btnEdit");
			var btnDel = document.querySelector("#btnDel");
			var boardIdx = "<%= idx %>";
			
			btnList.addEventListener("click", function() {
				history.back();
			});
			
			btnEdit.addEventListener("click", function() {
				location.href="boardEdit.jsp?idx=" + boardIdx;
			});
			
			btnDel.addEventListener("click", function() {
				location.href="boardDel.jsp?idx=" + boardIdx;
			});
		});
	</script>
</body>
</html>

