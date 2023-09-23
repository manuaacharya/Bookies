<%@page import="com.boot.pojo.books"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isErrorPage="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Books Dashboard</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
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
	padding-top: 23px;
	overflow-x: hidden;
	padding-right: 25px;
	backdrop-filter: blur(3px);
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
	left: -0.1%;
}

.glow-on-hover {
	font-size: x-large;
	width: 50px;
	height: 45px;
	border: none;
	outline: none;
	color: black;
	background: white;
	cursor: pointer;
	position: relative;
	z-index: 0;
	border-radius: 10px;
}

.glow-on-hover:before {
	content: '';
	background: linear-gradient(45deg, #ff0000, #ff7300, #fffb00, #48ff00, #00ffd5,
		#002bff, #7a00ff, #ff00c8, #ff0000);
	position: absolute;
	top: -2px;
	left: -2px;
	background-size: 400%;
	z-index: -1;
	filter: blur(5px);
	width: calc(100% + 4px);
	height: calc(100% + 4px);
	animation: glowing 20s linear infinite;
	opacity: 0;
	transition: opacity .3s ease-in-out;
	border-radius: 10px;
}

.glow-on-hover:active {
	color: white
}

.glow-on-hover:active:after {
	background: transparent;
}

.glow-on-hover:hover:before {
	opacity: 1;
}

.glow-on-hover:after {
	z-index: -1;
	content: '';
	position: absolute;
	width: 100%;
	height: 100%;
	background: white;
	left: 0;
	top: 0;
	border-radius: 10px;
}

@
keyframes glowing { 0% {
	background-position: 0 0;
}

50










%
{
background-position










:










400








%
0








;
}
100










%
{
background-position










:










0










0








;
}
}
.tooltiptext {
	visibility: hidden;
	width: 120px;
	color: black;
	text-align: center;
	border-radius: 6px;
	padding: 0.5px;
	/* Position the tooltip */
	position: absolute;
	z-index: 1;
	top: -50%;
	left: 50%;
	margin-left: -60px;
}

.glow-on-hover:hover .tooltiptext {
	visibility: visible;
	font-size: medium;
	font-weight: bold;
}

.lmove {
	padding-left: 8px;
}

h2 {
	font-family: TimesNewRoman;
	font-weight: bold;
}

.contentsdisp {
	color: black;
	font-family: TimesNewRoman;
	font-weight: bold;
	display: grid;
	grid-template-columns: auto auto auto auto;
	grid-gap: 10px;
	padding-left: 80px;
}

.backg {
	padding-left: 5px;
	backdrop-filter: blur(10px);
	backdrop-color: rgba(255, 255, 255, 0.5);
	padding-top: 15px;
}

.imgedit {
	width: 200px;
	height: 250px;
	border: 2px solid black;
	border-radius: 20px
}

.details {
	padding-top: 10px
}

.centre {
	padding-left: 20px;
}

a:hover {
	text-decoration: none;
}

.lrbutton {
	padding-left: 25px;
}

.lbstyle {
	border-radius: 5px;
	background: white;
	color: red;
	font-weight: bold;
}

.rbstyle {
	border-radius: 5px;
	background: white;
	color: blue;
	font-weight: bold;
}

.msgdisp {
	padding-left: 10px;
}
</style>
</head>

<body>
	<div class="main">
		<%
		HttpSession httpSession = request.getSession();

		if (httpSession != null) {
		%>
		<h2>
			Welcome&nbsp;<%=session.getAttribute("mail")%>
			<%
			}
			%>
			<a href="<%=request.getContextPath()%>/likedbooks" class="lmove"><button
					class="glow-on-hover">
					<i style="color: #ff0000;" class="far fa-heart"></i><span
						class="tooltiptext" style="color: #ff0000;">Likes</span>
				</button></a> <a href="<%=request.getContextPath()%>/readlaterbooks"><button
					class="glow-on-hover">
					<i style="color: #002bff;" class="far fa-bookmark"></i><span
						class="tooltiptext" style="color: #002bff;">Read Later</span>
				</button><a href="<%=request.getContextPath()%>/back" class="lmove"><button
					class="glow-on-hover">
					<i class="fa fa-arrow-left" aria-hidden="true" style="color: blue"></i></i><span
						class="tooltiptext" style="color: blue;">Back</span>
				</button></a> <a href="<%=request.getContextPath()%>/logout"><button
					class="glow-on-hover">
					<i class="fas fa-sign-out-alt" style="color: red;"></i><span
						class="tooltiptext" style="color: #ff0000;">Logout</span>
				</button></a>
		</h2>
		<c:if test="${lmsg != null}">
			<h2 class="msgdisp">
				<span class='error'><c:out value="${lmsg}"></c:out></span>
			</h2>
		</c:if>
		<hr>
		<div class="contentsdisp">
			<%
			List<books> bookies = (List<books>) request.getAttribute("books");

			for (books book : bookies) {
			%>
			<div class="backg">
				<div class="center">
					<img class="imgedit" src="assets/images/<%=book.getTitle()%>.jpg" />
				</div>
				<p class="details">
					Title :<%=book.getTitle()%></p>
				<p>
					Year :<%=book.getYear()%></p>
				<p>
					Author :<%=book.getAuthor()%></p>
				<p class="lrbutton">
					<a
						href="<%=request.getContextPath()%>/addliked?value=<%=book.getId()%>"><Button
							type="submit" class="lbstyle">Likes</Button></a> &nbsp;<a
						href="<%=request.getContextPath()%>/addrlb?value=<%=book.getId()%>"><Button
							type="submit" class="rbstyle">Read Later</Button></a>
				</p>
			</div>
			<%
			}
			%>
		</div>
	</div>
</body>

</html>