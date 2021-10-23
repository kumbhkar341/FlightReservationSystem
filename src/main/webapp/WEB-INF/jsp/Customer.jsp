<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<style>
.topnav a {
	float: left;
	color: #34ebba;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}
.topnav a.active {
	background-color: #5234eb;
	color: white;
}
.topnav-right {
	float: center;
}
</style>
</head>
<body>
	<h1>Customer Page</h1>
	<div class="topnav">
  <div class="topnav-right">
  <a class="active" href="Admin.jsp">Home</a>
    <a class="active" href="index.jsp">Logout</a>
  </div>
</div>
<br><br><br>
	<table cellspacing="20" cellpadding="20" border="3"
		style="border-collapse: collapse; float: centert">

		<tr>
			<td><a href="viewScheduleCust">View Flight Schedule</a></td>
		</tr>
		
		<tr>
			<td><a href="Reservationform">Reserve Flight Ticket</a></td>
		</tr>
	    <tr>
			<td><a href="#">Cancel Flight Ticket</a></td>
		</tr>
		
		<tr>
			<td><a href="viewFlightTicket.jsp">View E-Ticket</a></td>
		</tr>
		
		<tr>
			<td><a href="#">Print E-Ticket</a></td>
		</tr>
		
	</table>
</body>
</html>