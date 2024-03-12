<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Message</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
	text-align: center;
}

.message-container {
	max-width: 400px;
	margin: 50px auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.message {
	margin-bottom: 20px;
}

.login-link {
	color: #007bff;
	text-decoration: none;
}
</style>
</head>
<body>
	<div class="message-container">
		<div class="message">
			<%
			String message = (String) request.getAttribute("message");
			out.println(message);
			%>
		</div>
		<a href="Login.html" class="login-link">Login</a>
	</div>
</body>
</html>
