<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
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
<style type="text/css">
body {
	background: url('https://wallpaperaccess.com/full/124400.jpg');
	background-repeat: no-repeat;
	background-position: centre centre fixed;
	background-size: cover;
	overflow: auto;
	width: fit-content;
	block-size: fit-content;
}

.container{
	padding-left: 210px;
}

.login{
	color: #953d95 !important;
	padding-top: 200px;
	font-size: 40px;
}

.allcrt{
	color: white;
}

.btnsty{
	padding-top: 20px;
}

.form-control{
	min-width: 350px;
}

#pd{
	padding-top: 8px;
}
</style>
</head>
<body>

	<div class='container'>
		<h4 class='login'>Register Here</h4>
		<form action="register" method="post">
			<%String msg = (String) request.getAttribute("error");%>
			<%if(msg!=null){ %>
				<h2><%=msg%></h2>
			<%} %>
			<div>
				<div>
					<div class="allcrt">
						<label for="username">Email:</label> <input type="text"
							class="form-control" id="email" placeholder="Enter email"
							name="email">
					</div>
					<div class="allcrt" id="pd">
						<label for="password">Password:</label> <input type="password"
							class="form-control" id="email" placeholder="Enter Password"
							name="password">
					</div>
					<div align="center" class="btnsty">
						<button type="submit" class="btn btn-primary" value="Register">Register</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>