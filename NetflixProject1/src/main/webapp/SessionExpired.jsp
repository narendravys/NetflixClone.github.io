<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SessionExpired</title>
</head>
<body>
<%
session.invalidate();
%>
<span style="opacity:0.9;margin-top:24px;margin-right:32px;float:right;color:#EAD047;font-family:sans-serif;font-size:28px;background-color:black;padding:8px;">Please Login Again</span>

<jsp:include page="netflixlogin.jsp"/>



</body>
</html>