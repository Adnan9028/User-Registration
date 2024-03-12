<%@ page import="test.beans.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Profile</title>
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
	max-width: 400px;
	margin: 50px auto ;
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	text-align: center;
}

form {
	margin-top: 20px;
}

/* Input Styles */
input[type="text"], input[type="number"], input[type="password"], input[type="submit"]
	{
	width: 100%;
	margin-bottom: 10px;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
}

input[type="submit"] {
	background-color: #6495ed;
	color: white;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #00008b;
}

/* Responsive Styles */
@media ( max-width : 600px) {
	.container {
		width: 90%;
	}
}

/* Header Style */
h2 {
	text-align: center;
	margin-bottom: 20px;
}

catch{
	display: none;
}
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
		<form action="UpdateProfile" method="post">
			<h2>Edit Profile</h2>
			<p>
				Page belong to user:
				<%=ub.getfName()%></p>
			<input type="text" name="name" value="<%=ub.getName()%>"><br>
			<input type="text" name="fname" value="<%=ub.getfName()%>"><br>
			<input type="text" name="lname" value="<%=ub.getlName()%>"><br>
			<input type="text" name="address" value="<%=ub.getAddress()%>"><br>
			<input type="text" name="email" value="<%=ub.getEmail()%>"
				readonly="readonly"><br> <input type="password"
				name="password" value="<%=ub.getPassword()%>" readonly="readonly"><br>
			<input type="number" name="phno" value="<%=ub.getPhNo()%>"><br>
			<input type="submit" value="Edit">
		</form>
	</div>
	<div class="catch">
		<%
	} catch (Exception e) {
		
	out.println("You are no longer logged in. Please Login<br>");
	
	%>
	</div>
	
	<br>
	<%@include file="Login.html"%>
	<%
	}
	%>
</body>
</html>
