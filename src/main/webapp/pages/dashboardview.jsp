<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">
<style>
body {
	background:
		url('https://i.pinimg.com/originals/d0/4a/2a/d04a2a9694c81133f120a0c32ba947fd.jpg')
		no-repeat center center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	margin: 0px;
	color: black;
	padding-left: 30px;
	padding-top: 5px;
	overflow: hidden;
}

.main {
	padding-top: 1px;
}

hr {
	height: 2px;
	border-width: 0;
	color: black;
	background-color: grey;
	position: relative;
	left: -1.3%;
}

ul {
	list-style: none;
}

a {
	text-decoration: none;
}

.padbtm {
	padding-top: 10px;
}
</style>
</head>
<body>
	<div class="main">
		<%
				HttpSession httpSession = request.getSession();
				if (httpSession != null) {
			%>
		<h1>Welcome <%=httpSession.getAttribute("mail") %></h1>
		<%} %>
		<hr>
	</div>
	<div class="choose">
		<ul>
			<h2>
				<li><a style="color: black;" href="<%=request.getContextPath()%>/viewbooks"><i
						class="fas fa-book"></i> View Books</a></li>
				<li class="padbtm"><a style="color: black;"
					href="<%=request.getContextPath()%>/logout"><i
						class="fas fa-sign-out-alt"></i> Logout</a></li>
			</h2>
		</ul>
	</div>
</body>
</html>