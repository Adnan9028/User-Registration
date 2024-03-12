<%@page import="test.beans.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Success</title>
<style type="text/css">
body {
    font-family: Arial, sans-serif;
    font-size: small;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 400px;
    margin: 50px auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.link-container {
    margin-top: 20px;
}

.link-container span {
    display: block;
    margin-bottom: 10px;
    border: 1px solid black;
    background-color: #fff8dc;
    border-radius: 10px;
    padding: 10px;
}

.link-container a {
    font-size: 16px;
    color: #649dc;
    text-decoration: none;
}

.link-container a:hover {
    color: #00008b;
}

</style>
</head>
<body>
	<%
	try{
		
		UserBean ub = (UserBean) session.getAttribute("user");
		
		%>
		<div class="container">
			<%
			out.println("Page belongs to user: " + ub.getfName() + "<br>");
			%>

			<div class="link-container">
				<span><a href="ViewProfile">View Profile</a></span>
				 <span><a href="EditProfile">Edit Profile</a></span> 
				 <span><a href="Logout">Logout</a></span>
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