<%@ page import="project.UserDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/common.css">
<title>deleteUser</title>
</head>
<body>
<%
int log = -1;
String userName = "";

if(session.getAttribute("log") == null) {
	String url = "/";
	request.getRequestDispatcher(url).forward(request, response);
	System.out.println(log + "$$");
	
} else {
	log = (int) session.getAttribute("log");
	
	UserDAO dao = UserDAO.getInstance();
	
	userName = dao.getName(log);
%>
	<jsp:include page="header.jsp"></jsp:include>
	
	<h2>MyPage</h2>
	
	<div class="subMenuWrap">
		<div class="subMenu">
			<div class="bookPage" onclick="location.href='./book.jsp'">BOOK</div>
			<div class="boardPage" onclick="location.href='./board.jsp'">BOARD</div>
		</div>
	</div>
	
	<h3>회원정보 수정</h3>
	
	<div class="myPageMenuWrap">
		<div class="myPageMenu">
			<div class="updateMe" onclick="location.href='./updateMyInfo.jsp'">내 프로필</div>
			<div class="updatePw" onclick="location.href='./updateMyPw.jsp'">비밀번호 변경</div>
			<div class="deleteUser" onclick="location.href='./deleteUser.jsp'">회원탈퇴</div>
		</div>
	</div>
	
	<div class="updateMe">
		<form id="updateForm" method="post" action="./Service">
		<input type="hidden" name="command" value="update">
			
			<span class="userPw">비밀번호</span>
			<input type="password" name="password" class="name">
			
			<input type="submit" class="updateBtn" value="탈퇴하기">
		
		</form>
	</div>
	
	<%
	}
	%>
</body>
</html>