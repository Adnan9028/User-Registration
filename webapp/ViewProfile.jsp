<%@page import="test.beans.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Profile</title>
<style>
/* General Styles */
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
	text-align: center;
}

.container {
	max-width: 800px;
	margin: 50px auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	
}

/* Table Styles */
table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	padding: 10px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

caption {
	font-weight: bold;
	font-size: 20px;
	margin-bottom: 10px;
}

th {
	background-color: #f2f2f2;
}

/* User Info Styles */
.user-info {
	margin-top: 20px;
}

.user-info div {
	margin-bottom: 10px;
}

.user-info label {
	font-weight: bold;
}

/* Link Styles */
.link-container span {
	display: block;
	margin-top: 10px;
}

.link-container a {
	font-size: 16px;
	color: #649dc;
	text-decoration: none;
}

.link-container a:hover {
	color: #00008b;
}

span {
    display: block;
    margin-bottom: 10px;
    border: 1px solid black;
    background-color: #fff8dc;
    border-radius: 10px;
    padding: 10px;
</style>
</head>
<body>
	<%
	try {
		UserBean ub = (UserBean) session.getAttribute("user");
		if (ub == null)
			throw new Exception();
	%>
	<div class="container">
		<div>
			<h2>User Profile</h2>
		</div>
		<div class="user-info">
			<div>
				<label>Name:</label>
				<%=ub.getName()%>
			</div>
			<div>
				<label>First Name:</label>
				<%=ub.getfName()%>
			</div>
			<div>
				<label>Last Name:</label>
				<%=ub.getlName()%>
			</div>
			<div>
				<label>Address:</label>
				<%=ub.getAddress()%>
			</div>
			<div>
				<label>Email:</label>
				<%=ub.getEmail()%>
			</div>
			<div>
				<label>Password:</label>
				<%=ub.getPassword()%>
			</div>
			<div>
				<label>Phone Number:</label>
				<%=ub.getPhNo()%>
			</div>
		</div>

		<div class="link-container">
			<span><a href="EditProfile">Edit Profile</a></span> <span><a
				href="Logout">Logout</a></span>
		</div>
		<%
		} catch (Exception e) {
		%>
		<div class="link-container">
			<%
			out.println("You are no longer login,Please Login");
			%>
			<%@include file="Login.html"%>
			<%
			}
			%>
			
		</div>
	</div>
</body>
</html>
