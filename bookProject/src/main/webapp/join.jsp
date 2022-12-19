<%@ page import="project.UserDAO" %>
<%@ page import="project.UserDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<title>Join</title>
</head>
<body>

	<div class="wrap">
		<jsp:include page="header.jsp"></jsp:include>
		
		<div class="joinBox">
			<h2>JOIN</h2>
			
			<form id="joinForm" method="post" action="./Service">
			<input type="hidden" name="command" value="join">
			
				<input type="text" name="user_id" id="user_id" placeholder="ID" required><br>
				<input type="password" name="user_pw" id="user_pw" placeholder="PW" required><br>
				<input type="text" name="user_name" id="user_name" placeholder="이름" required><br>
				<input type="text" name="user_phone" id="user_phone" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="전화번호 입력" title="###-####-####" required><br>
				
				
				<input type="submit" class="joinBtn" value="가입하기"><br>
				<input type="button" value="로그인 하러가기" onclick="location.href='./login.jsp'">
			</form>
		</div>
	</div>
				<%-- <% 
				String id = request.getParameter("user_id");
				System.out.println("id: " + id);
				%> --%>

</body>
</html>