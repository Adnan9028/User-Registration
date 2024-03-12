<%@page import="test.beans.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set Password</title>

<style type="text/css">
body {
	font-family: Arial, Helvetica, sans-serif;
}

.container {
	max-width: 400;
	margin: 100px;
	background-color: beige;
	padding: 15px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
}

form {
	margin-top: 20px;
	text-align: center;
}

input[type="password"] {
	width: 200px;
	padding: 3px;
	margin-bottom: 10px;
	border: 1px #dc3545 solid;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type="submit"] {
	width: 60px;
	padding: 4px;
	background-color: #4caf50;
	color: white;
	border: 1px solid black;
	border-radius: 4px;
	cursor: pointer;
	text-align: center;
}

input[type="submit"]:hover {
	background-color: green;
}
</style>

</head>
<body>

	<div class="container">
		<form action="SetPassword" method="post">
		<h2>Set Password</h2>
		<input type="password" name="password1" placeholder="Enter password"><br>
		<input type="password" name="password2"
			placeholder="Re-Enter password"><br> <input
			type="submit" value="Continue"><br>
	</form>
	</div>
</body>
</html>