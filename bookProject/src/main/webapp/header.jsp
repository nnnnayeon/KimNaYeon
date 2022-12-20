<%@ page import="project.UserDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<link rel="stylesheet" href="css/header.css">
<title>header</title>
</head>
<body>
<%
int log = -1;
String userName = "";

if(session.getAttribute("log") != null) {
	log = (int) session.getAttribute("log");
	System.out.println(log + "##");
	
	UserDAO dao = UserDAO.getInstance();
	
	userName = dao.getName(log);
	System.out.println("userName : " + userName);
}
%>
	<div class="header">
		<a href="index.jsp" id="Logo">LOGO</a>
		
		<div class="topMenu">
			<% 
			if(session.getAttribute("log") != null) {
			%>
			<div class="loginWrap">
				<div class="loginName"><%= userName %> 님</div>
				
				<form id="logoutForm" method="post" action="./Service">
				<input type="hidden" id="hiddenInput" name="command" value="">
					<div class="logout" onclick="clickEvent()">logout</div>
				</form>
			</div>
			
			<div class="mypage" onclick="location.href='./myPage.jsp'">mypage</div>
			
			<%
			} else {
			%>
			<div class="login" onclick="location.href='./login.jsp'">login</div>
			<div class="join" onclick="location.href='./join.jsp'">join</div>
			<%
			}
			%>
		</div>
	</div>
	
<script type="text/javascript">
function clickEvent(){
	let log = document.getElementById('logoutForm');
	let hiddenInput = document.getElementById('hiddenInput');
	
	hiddenInput.setAttribute('value','logout');
	log.submit();
}

</script>

</body>
</html>