<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<style>
.topnav {
	overflow: hidden;
	
}

.topnav a {
	float: left;
	color: "black";
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav a.active {
	background-color: #04AA6D;
	color: white;
}

.topnav-right {
	float: right;
}
</style>
</head>
<body>

	<div class="topnav">
		<a href="Aboutus.jsp">About us</a> <a href="Contactus.jsp">Contact
			us</a>
		<div class="topnav-right">
			<a class="active" href="Admin.jsp">Home</a> <a class="active"
				href="index.jsp">Logout</a>
		</div>
	</div>
<form method="post" action="changepassword"> 
	<table align="center" cellspacing="20" cellpadding="20" border="1"
		style="border-collapse: collapse" height="600">

		<tr>
						<td rowspan=6 width="650">
						<table cellpadding="10" cellspacing="8" bgcolor="white" align="center">
			<tr>
				<th colspan="5" bgcolor="pink" align="center">Change Password</th>
			</tr>
			<tr>
				<td>Username :</td>
				<td><input path="Username" /></td>
			</tr>
			<tr>
				<td>New Password:</td>
				<td><input path="Password" /></td>
			</tr>
			<td><input type="submit" value="Update" /></td>
			</tr>
		</table><br /> 
				</tr>
		</br>


	</table>
</body>
</html>