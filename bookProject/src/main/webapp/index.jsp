<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<link rel="stylesheet" href="css/main.css">
<title>Main</title>
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
	
	<div class="contents">
		<div class="bookContent">
			<figure class="book">
				<img src="./image/book.jpg" height="430px" onclick="location.href='./book.jsp'">
				<figcaption>
					<div>
						<h2>Book</h2>
					</div>
				</figcaption>
			</figure>
		</div>
		
		<div class="boardContent">
			<figure class="board">
				<img src="./image/boardd.jpg" height="430px" onclick="location.href='./board.jsp'">
				<figcaption>
					<div>
						<h2>Board</h2>
					</div>
				</figcaption>
			</figure>
		</div>
	</div>

</body>
</html>