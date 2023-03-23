<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logged out</title>
</head>
<body>
<h2 style=float:right;font-size:22px;font-family:sans-serif;color:white;margin-top:22px;margin-right:32px;>Logged Out Successfully</h2>
<%session.invalidate(); %>
<jsp:include page="netflixlogin.jsp"/>
</body>
</html>