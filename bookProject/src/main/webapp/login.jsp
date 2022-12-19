<%@ page import="project.UserDAO" %>
<%@ page import="project.UserDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<title>Login</title>
</head>
<body>
	
	<div class="wrap">
		<jsp:include page="header.jsp"></jsp:include>
		
		<div class="loginBox">
			<h2>LOGIN</h2>
			
			<form id="loginForm" method="post" action="./Service">
			<input type="hidden" name="command" value="login">
			
				<input type="text" name="user_id" id="user_id" placeholder="ID" required><br>
				<input type="password" name="user_pw" id="user_pw" placeholder="PW" required><br>
				
				<input type="submit" value="로그인"><br>
				
				<input type="button" value="회원가입" onclick="location.href='./join.jsp'"><br>
				
			</form>
			
		</div>
	</div>
	
</body>
</html>