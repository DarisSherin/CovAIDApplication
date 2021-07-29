<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Requirements Submitted</title>
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

		<h2>Thanks for Volunteering to help</h2>
<h2>Please find the request submitted</h2>
	
							<table border = "1">
		<tr>
	
			<th>Name</th>
			<th>Location</th>
			<th>Phone Number</th>
			<th>List of Items</th>
			<th>Actions</th>
		</tr>
		<c:forEach items="${list}" var="r">
			<tr>
		
				<td>${r.name}</td>
				<td>${r.location}</td>
				<td>${r.phone}</td>
				<td>${r.listOfItems}</td>
				<td>
					<a href = "${pageContext.request.contextPath}/delete/${r.reqid}">Delete</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	</body>
</html>