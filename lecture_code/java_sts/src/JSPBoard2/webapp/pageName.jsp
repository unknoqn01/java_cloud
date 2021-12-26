<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
// 현재 페이지 파일명을 불러옴
String path = request.getServletPath();
// '/' 문자가 있는 위치를 가져오기
int k = path.lastIndexOf('/');
// 첫번째 지정한 위치에서 두번째 지정한 위치까지의 문자를 가져오기
path = path.substring(k + 1, path.length());

String pageName = ""; // 각 페이지 제목란에 출력할 문자를 저장할 변수

if (path.equals("boardList.jsp")) {
	pageName = "게시판 목록 페이지";
}
else if (path.equals("boardSelect.jsp")) {
	pageName = "로그인 페이지";
}
else if (path.equals("login.jsp")) {
	pageName = "로그인 페이지";
}
else if (path.equals("logout.jsp")) {
	pageName = "로그 아웃 페이지";
}
else if (path.equals("signin.jsp")) {
	pageName = "회원 가입 페이지";
}
%>











