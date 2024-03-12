<%@page import="test.beans.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Updated Profile</title>
<style type="text/css">
body {
	font-family: Arial, sans-serif;
	font-size: 16px;
	padding: 0px;
	margin: 0px;
}

.container {
	width: 400px;
	height: 400px;
	background-color: #f5f5dc;
	padding: 10px;
	margin: 50px auto;
	text-align: center;	
}

.link-container{
	margin-top:20px; 
}

.link-container span{
	display: block;
	margin-bottom:10px; 
	border: 1px solid black;
	background-color: #fff8dc;
	border-radius: 10px;
	padding: 10px;
}
.link-container a{
	font-size: 16px;
	 color: #649dc;
	 text-decoration: none;
}
.link-container a:hover{
	 color: #00008b;
}
</style>
</head>
<body>
	<%
	try{
		
		UserBean ub = (UserBean) session.getAttribute("user");
		
		String message = (String) request.getAttribute("message");
		%>

		<div class="container">
			<%
			out.println(message);
			%>
			<div class="link-container">
				<span><a href="ViewProfile">View Profile</a></span> <span><a
					href="Logout">Logout</a></span>
			</div>
			<% 
	}catch(Exception e)
	{
		out.println("You are no longer login");
	}
	%>
	</div>
</body>
</html>