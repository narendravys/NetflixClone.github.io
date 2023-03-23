<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.nf.bean.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>payment page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

<style>

.info{

font-family:sans-serif;
font-size:22px;
color:red;
margin-left:152px;
padding:12px;






}


</style>
</head>
<body>
	<%
	if (session != null) {
		PaymentDetailsBean pdb = (PaymentDetailsBean) session.getAttribute("paymentdetails");
		if (pdb != null) {
	%>
	<div style="text-align: center;margin-bottom:32px;" >
		<h1 style="color:blue;font-family:verdana;"class="mb-4 fs-2 mt-2 border border-2">
			Welcome to
			<%
		out.println(pdb.getBankName());
		%>

		Payment Page</h1>
<div class="border border-2 border-primary w-75" style="margin-left:172px;margin-top:80px;">
		<h2 class="fs-4"style="font-family: verdana; margin-top:80px; color:#B20A0A">
			Netflix is Asking for the Amount of
			<%
		out.println(pdb.getPlan());
		%> /-
			from your
			<%
		out.println(pdb.getBankName());
		%>
			Credit Card
		</h2>
         <div class="mb-4" style="margin-top: 30px;">
		<a href=paymentsuccess class="btn btn-primary w-25 ">Allow</a> <a class="btn btn-danger w-25 "style="margin-left: 40px;"
			href="netflixlogin.jsp">Deny></a>
			</div>
</div>

	</div>
	<span class="info" >Please Do not Press Back or refresh button while processing</span>
	



	<%
	} else {
		response.sendRedirect("SessionExpired.jsp");
	%>


	<%
	}
	} else {
		response.sendRedirect("SessionExpired.jsp");
	%>
	
	<%
	}
	%>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
	

</body>
</html>