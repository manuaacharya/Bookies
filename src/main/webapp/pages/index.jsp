<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Bookess</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">
<style>
body {
	background: url('https://wallpaperaccess.com/full/124400.jpg');
	background-repeat: no-repeat;
	background-position: centre centre fixed;
	background-size: cover;
	overflow: auto;
	width: fit-content;
	block-size: fit-content;
}

.head {
	font-family: 'Times New Roman', Times, serif;
	clip-path: white;
	padding-left: 170px;
	color: white;
	padding-top: 220px;
	font-size: 70px;
}

.sel {
	padding-left: 200px;
}

.btn {
	box-sizing: border-box;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	background-color: transparent;
	border: 2px solid #e74c3c;
	border-radius: 0.6em;
	color: #e74c3c;
	cursor: pointer;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-self: center;
	-ms-flex-item-align: center;
	align-self: center;
	font-size: 1rem;
	font-weight: 500;
	line-height: 1;
	margin: 20px;
	padding: 1.2em 2.8em;
	text-decoration: none;
	text-align: center;
	text-transform: uppercase;
	font-family: TimesNewRoman;
	font-weight: 500;
}

.btn:hover, .btn:focus {
	color: #fff;
	outline: 0;
}

.third {
	border-color: #3498db;
	color: #fff;
	box-shadow: 0 0 40px 40px transparent inset, 0 0 0 0 transparent;
	-webkit-transition: all 150ms ease-in-out;
	transition: all 150ms ease-in-out;
}

.third:hover {
	box-shadow: 0 0 10px 0 #3498db inset, 0 0 10px 4px #3498db;
}

a {
	text-decoration: none;
}
}
</style>
</head>

<body>
	<div class="background">
		<div class="headding">
			<h1 class="head">
				<span><i class="fas fa-book-open"></i>&nbsp;</span>BOOKESS
			</h1>
			<div class="sel" align="center">
				<a href='login'><button class="btn third">Login</button></a>
			</div>
			<div class="sel" align="center">
				<a href='register'><button class="btn third">Register</button></a>
			</div>
			<div class="sel" align="center">
				<a href='guestview'><button class="btn third">View Books</button></a>
			</div>
		</div>
	</div>
</body>

</html>
