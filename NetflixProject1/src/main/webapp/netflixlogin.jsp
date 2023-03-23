<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"
    %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>NetflixLogin</title>
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
	position:relative;
}

.signin_window {
	border-radius: 4.5px;
	padding: 18px;
	margin-top: 10px;
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
	margin-top: 28px;
}

.signin_btn {
	background-color: red;
	color: white;
	font-family: sans-serif;
	font-size: 22px;
	margin-left: 28px;
	margin-top: 42px;
	height: 52px;
	width: 292px;
	padding: 10px;
	border-radius: 3px;
	transition:0.4s;
}
.signin_btn:hover{
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

.link{
margin-right:22px;
font-family:verdana;
font-size:16px;
color:white;
text-decoration:none;
float:right;


}
</style>

</head>
<body >
	<img class="headimg" src="images\netflixlogo.png" alt="Netflix Logo">
	<%if(request.getAttribute("nfuser")!=null){ %>
	<span style="font-size:22px;margin-left:210px;padding:10px;font-family:sans-serif;color:white;"><%out.println(request.getAttribute("nfuser")); %></span>
	<%} %>
	<div class="signin_window">
		<h1 class="signin_head">Sign in</h1>
		<form action=login method="post" class="signin_form">
			<div>
				<input type="email" <% if(request.getParameter("mail")!=null){%>value="<%=request.getParameter("mail") %>" <%} %>id="mail" name="mail"
					placeholder="Enter your Email" required><br>
			</div>
			<div>
				<input class="input2" type="password" id="pwd" name="pwd"
					placeholder="Password" required><br>
					
					
			</div>
			<button type=submit class="signin_btn">Sign in</button>
			<br> <br>
			
			<a  style="padding:6px;font-family:verdana;text-decoration:none;color:white;margin-left:22px;margin-top:18px;" href="forgetpassword">Forget Password?</a>
			
			

		</form>
		<div style="margin-top:12px;">
<span style="margin-left:130px;color:#585858;font-family:verdana;">new User?</span><a class="link" href="netflixsignup.jsp">Sign up now</a>
	</div>
</div>

</body>
</html>

