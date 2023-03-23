<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Payment Confirmation</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f5f5f5;
		}

		.container {
			width: 500px;
			margin: 0 auto;
			padding: 20px;
			border: 1px solid #ccc;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0,0,0,0.3);
			background-color: #fff;
			text-align: center;
		}

		.container h1 {
			font-size: 36px;
			color: #007bff;
			margin-bottom: 20px;
		}

		.btn {
			padding: 10px 20px;
			background-color: #007bff;
			color: #fff;
			border: none;
			border-radius: 5px;
			cursor: pointer;
			font-size: 16px;
			margin-top: 20px;
			text-decoration: none;
			display: inline-block;
		}

		.btn:hover {
			background-color: #0069d9;
		}

		.btn:active {
			background-color: #005cbf;
		}
	</style>
</head>
<%
if(session!=null){
  
%>
<body>
	<div class="container">
		<h1>Thank You for Your Payment!</h1>
		<p>Your payment has been processed successfully.</p>
		<a href="premiumhome" class="btn">Click Here for Netflix Home</a>
	</div>
</body>


<%}
else {

	response.sendRedirect("SessionExpired");
}
%>

</html>