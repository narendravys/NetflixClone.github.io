<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.nf.bean.SignUpBean"%>


<!DOCTYPE html>
<html>
<%
if (session != null) {
	SignUpBean sb = (SignUpBean) session.getAttribute("usersignup");
%>
<head>
<meta charset="UTF-8">
<title>Subscription</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<style>
.nflogo {
	float: left;
	height: 32px;
	width: 102px;
	margin-top: 12px;
	margin-left: 22px;
}

.text_decor {
	font-family: sans-serif;
	font-size: 20px;
	font-weight: bold;
	padding: 8px;
	margin-right: 0px;
}

.container {
	text-align: center;
	width: 250px;
	height: 400px;
	margin-top: 70px;
}

btn_style {
	width: 18px;
	hieght: 20px;
}



</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">

</head>
<body bgcolor=white>
	<div class="position-fixed">
		<img class=nflogo src="images\premiumimages\ntlogo.png">
	</div>
	<hr>
	<br>
	<%if(request.getAttribute("msg")!=null){
		
		%>
	<span style=" color:#cc0000 ;margin-left: 122px; margin-top: 100px;font-family:verdana;"
		class=" fs-3 p-3 me-3"><i class="bi bi-emoji-smile-fill"></i><%out.println(request.getAttribute("msg")); %></span>
	<%} %>
	<div
		class="container border border-2 border-danger rounded-2 display-flex">
		<h1 class="text-sans-serif text-primary p-2 mt-3">Choose Your Plan & press Continue</h1>
		<form action="subscription" method="post">
		
		
			<div class="mt-4 text-center">
			<span class="fs-5 text-danger fs-3 fw-bold me-2"><i class="bi bi-bag-heart me-2"></i>Select Your Subscription Plan</span> <select
				name=plan class="fs-3 border border-3 mb-4 text-success"style=width:80px >
				<option class=" fs-5  p-2 " value="199">199 for 1 month</option>
				<option class="fs-5 p-2 "value="299">299 for 2 months</option>
				<option class="fs-5 p-2 " value="499">499 for 4 months</option>
				<option class="fs-5 p-2 "  value="999">999 for 9 months</option>
				</select><br>
				<span class=text_decor><i class="bi bi-person me-1 mx-3"></i>Email
					id:</span> <input class="p-1 ms-2 w-25 rounded-2 fs-5" type="email" value="<%=sb.getMail() %>"name=mail required><br>
				<span class="text_decor "><i class="bi bi-key me-1 mt-3"></i>Password:</span>
				<input class="p-1 mt-4 rounded-2 border border-2  fs-4"
					type="password" value="<%=sb.getPwd()%>"name=pwd required><br>

			</div>
			<div class="text-center mt-4 ms-4">

				<button type="submit"
					class="btn btn-danger ms- t4ext-center fs-5 mt-4  "
					style="width: 160px; height: 50px; margin-left: 10px">Continue</button>
			</div>

		</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
		crossorigin="anonymous"></script>
</body>
<%
}else{
		session.invalidate();
	response.sendRedirect("SessionExpired.jsp");
	%>


<% 

}

%>
</html>