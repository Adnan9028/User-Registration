<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
<style type="text/css">
body {
	font-family: Arial,sans-serif;
	margin: 0px;
	padding: 0px;
}

.container{
	text-align: center;
}
.login-container{
	text-align: left;
}
</style>
</head>
<body>
	<%
	String message = (String) request.getAttribute("message");
	%>
	<div class="container">
	
	<div class="message">
		<%=message %>
	</div>
	
		<div >
			<%@include file="Login.html" %>
		</div>
	</div>
</body>
</html>