<!DOCTYPE html>
<html lang="en">
<head>
<title>NetflixUserLogin</title>
<style>
.headimg {
	width: 250px;
	height: 100px;
	color: #ff0000;
	padding: 6px;
	margin-top: 10px;
	margin-left: 25px;
}

body {
	background-image: url("images/netflixsigninbg.jpg");
}

.signin_window {
	border-radius: 4.5px;
	padding: 18px;
	margin-top: 0px;
	margin-left: 520px;
	height: 481px;
	width: 350px;
	opacity: 0.8;
	background-color: black;
}

.signin_head {
	color: white;
	font-family: Segoe UI, Roboto, Ubuntu, sans-serif;
	padding: 8px;
	font-size: 32px;
	margin-left: 26px;
}

form {
	display: block;
}

.signin_form {
	
}

input {
	background-color: #1d1d1d;
	font-family: verdana;
	color: white;
	font-size: 15px;
	height: 30px;
	padding: 12px;
	width: 280px;
	margin-left: 22px;
	border: none;
	margin-top: 20px;
}

.input2 {
	margin-top: 38px;
}

.signin_btn {
	background-color: red;
	color: white;
	font-family: sans-serif;
	font-size: 22px;
	margin-left: 22px;
	margin-top: 55px;
	height: 52px;
	width: 305px;
	padding: 10px;
	border-radius: 3px;
}

.checkbox_pwd {
	float: left;
	height: 18px;
	margin-top: 15px;
}

#remember_pwd {
	color: white;
}
</style>

</head>
<body>
	<img class="headimg" src="images\netflixlogo.png" alt="Netflix Logo">
	<div class="signin_window">
		<h1 class="signin_head">Sign in</h1>
		<form action=login method="post" class="signin_form">
			<div>
				<input type="email" id="mail" name="mail" <% if(request.getAttribute("mail")!=null) {%>value="<%request.getAttribute("mail");} %>"
					placeholder="Enter your Email" required><br>
			</div>
			<div>
				<input class="input2" type="password" id="pwd" name="pwd"
					placeholder="Password" required><br>
			</div>
			<button type=submit class="signin_btn">Sign in</button>
			<br> <br>


		</form>
	</div>


</body>
</html>

