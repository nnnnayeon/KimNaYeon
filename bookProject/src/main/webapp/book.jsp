<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<link rel="stylesheet" href="css/main.css">
<title>bookPage</title>
</head>
<body>
<%
int log = -1;
if(session.getAttribute("log") != null) {
	log = (int) session.getAttribute("log");
	/* System.out.println(log + "@@"); */
} else {
	System.out.println(log + "$$");
}
%>
	<jsp:include page="header.jsp"></jsp:include>
	
	<h2>Book</h2>
	
	<div class="subMenuWrap">
		<div class="subMenu">
			<div class="bookPage" onclick="location.href='./book.jsp'">BOOK</div>
			<div class="boardPage" onclick="location.href='./board.jsp'">BOARD</div>
		</div>
	</div>


</body>
</html>