<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>NetflixSignUp</title>
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
	height: 520px;
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
	font-size: 16px;
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

.signup_btn {
	background-color: red;
	color: white;
	font-family: sans-serif;
	font-size: 18px;
	margin-left: 32px;
	margin-top: 34px;
	height: 52px;
	width: 272px;
	padding: 10px;
	border-radius: 3px;
	border-radius: 5px;
	transition:0.4s;
}

.signup_btn:hover{
cursor:pointer;
background-color:#cc0000;



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
	<%
	if (request.getAttribute("new") != null) {
	%>
	<h3
		style="color: white; opacity: 0.9; float: right; font-family:courier new; font-size: 26px; background-color: black; margin-right: 53px;">
		<%
		out.println(request.getAttribute("new"));
		%>
	</h3>
	<%
	}
	%>
	<div class="signin_window">
		<h1 class="signin_head">Sign up</h1>
		<form action=signup method="post" class="signin_form">
			<div>
				<input type="text" name="uname" placeholder="Enter Your Name"
					required><br> <input type="email"
					<%if (request.getParameter("mail") != null) {%>
					value="<%=request.getParameter("mail")%>" <%}%> id="mail"
					name="mail" placeholder="Enter your Email" required><br>
			</div>
			<div>
				<input type="number" id="ph" name="ph"
					placeholder="Enter your Phone Number" required><br>
			</div>
			<div>
				<input type="password" id="pwd" name="pwd" placeholder="Password"
					required><br>
			</div>
			<button type=submit class="signup_btn">Sign Up</button>
			<br> <br>


		</form>
	</div>

</body>
</html>

