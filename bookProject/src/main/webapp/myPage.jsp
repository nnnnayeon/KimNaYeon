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
	
	<div class="myPage">
		<h3><%=userName %>님 마이페이지</h3>
		
		<input type="button" class="btn" name="updateBtn" value="프로필편집" onclick="location.href='./updateMyInfo.jsp'">
	</div>
	
	<div class="myBook">
		<div class="dibsBook">찜</div>
		<div class="myReviews">내리뷰</div>
	</div>
	
	<%
	}
	%>
</body>
</html>