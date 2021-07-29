<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login | Cov(AID) App</title>
	<link rel="icon" href="images/icon.png" >
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<style>
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
	color: black;
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

	<h2>Login</h2>
	<form id="LoginForm" method="POST" action = "${pageContext.request.contextPath}/login" modelAttribute="user" class="form-signin">
           <br> <input type="text" name="username" placeholder="Username">
                 
     <br> <br>
            <input type="password" name="password" placeholder="Password" >
				  
                <br><br>
           <button type="submit" value="submit">Login</button>   
           <br> 
             <h4 class="text-center"><a href = "${pageContext.request.contextPath}/register">New user, Create an account</a></h4>
        </form>
<!--Team-->
<div align="center">
<table style="width:50%" class="center">
 <h2>Meet our Team </h2>
  <tr>
    <td>	<img src="images/mahaa.png"  width="200" height="200">
				<p>Mahaalakshmi</p> </td>
    <td><img src="images/ellora.png"  width="200" height="200">
				<p>Ellora Jeya Suji</p></td>
    <td>	<img src="images/arun.png"  width="200" height="200">
				<p>Arun Prasath</p></td>
				<td><img src="images/rajie.png"  width="200" height="200">
				<p>Rajeswari</p> </td>
  </tr>
</table>
</div>

<!--footer-->
		<hr>
		<p class="copyright">Copyright 2021</p>
</body>
</html>