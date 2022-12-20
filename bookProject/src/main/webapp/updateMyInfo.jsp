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
<title>myPage</title>
</head>
<body>
<%
int log = -1;
String userName = "";

if(session.getAttribute("log") != null) {
	log = (int) session.getAttribute("log");
	/* System.out.println(log + "@@"); */
	
	UserDAO dao = UserDAO.getInstance();
	
	userName = dao.getName(log);
} else {
	System.out.println(log + "$$");
}
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
	
	<div class="updateMe">
		<form id="updateForm" method="post" action="./Service">
		<input type="hidden" name="command" value="update">
			
			<span class="userId">아이디</span>
			<input type="text" readonly>
			
			<span class="userPw">비밀번호</span>
			<input type="password" name="password" class="name">
			
			<span class="userName">이름</span>
			<input type="text" name="name" class="name" placeholder="이름">
			
			<span class="userEmail">번호</span>
			<input type="text" name="mobile" class="mobile" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" title="###-####-####">
			
			<input type="submit" class="updateBtn" value="수정하기">
			<input type="button" class="backBtn" value="뒤로가기" onclick="location.href='./myPage.jsp'">
		
		</form>
	</div>
	
	
	
	<!-- <div class="myPageMenuWrap">
		<div class="myPageMenu">
			<div class="updateMe">내 프로필</div>
			<div class="updatePw">비밀번호 변경</div>
			<div class="deleteUser">회원탈퇴</div>
		</div>
	</div> -->
	
	<div id="myContent"></div>

</body>
</html>