<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List your Requirements</title>
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
h2,h3
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

		<h2>Are you in need of help?</h2>
	<h3> Ask help through us! We are there to help you. </h3>
			
	<h3> Ask help through us! We are there to help you. </h3>
<h2>Your Request</h2>
			<form method="POST" id="RequestForm" action = "${pageContext.request.contextPath}/requestSubmit" modelAttribute="request" class="form-signin">
		 <br>
		<input type="text"  name="name" placeholder="Name"> <br><br>
		<input type="text"  name="location" placeholder="location"> <br><br>
		<input type="text"  name="phone" placeholder="phone-number"><br><br>
		<input type="text"  name="listOfItems" placeholder="list your requirements"><br><br>
				<button type = "submit" >Request</button>
							</form>
</body>
</html>