<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hey There, Welcome to Cov(AID) Application</title>
	<link rel="icon" href="images/icon.png" >
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<style type = "text/css">  
 button {  
  display: inline-block;
	background: #ff523b;
	color: white;
	padding: 8px 30px;
	margin: 30px 0;
	border-radius:30px;
	transition:background 0.5s; 
  } 
  
form {
	background: #fff;
	width: 300px;
	height: 300px;
	position: relative;
	text-align: center;
	padding: 20px 0;
	margin: auto;
	box-shadow: 0 0 20px 0px rgba(0,0,0,0.1);
	overflow: hidden;
}
body {text-align: center;}
h2
{
	color: white;
	font-family: 'Poppins', sans-serif;
}
h1
{	color: white;
font-family: 'Poppins', sans-serif;
font-size:30px;
}
</style>  
</head>
<body style="background-color:#ff6666;">	

		<img src="images/logo.png" width="125px">
		<h1>Cov(Aid) App</h1>

<h2>Registration Page</h2>

			<form method="POST" id="RegForm" action = "${pageContext.request.contextPath}/register" modelAttribute="user" class="form-signin">
		 <br>
		<input type="text"  name="name" placeholder="Username"> <br><br>
		<input type="password"  name="password" placeholder=""> <br><br>
		<input type="text"  name="roles" placeholder="user or volunteer"><br><br>
		
				<button type = "submit" >Register</button>
							</form>
<!--footer-->

		
		<hr>
		<p class="copyright">Copyright 2021</p>
\
</body>
</html>