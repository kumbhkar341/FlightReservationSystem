<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
table, th, td { 
    background-color: white;
    border: 1px solid black;  
    border-collapse: collapse;  
}  
th, td {  
    padding: 10px;  
}  
table#alter tr:nth-child(even) {  
    background-color: #B7CEEC;  
}  
table#alter tr:nth-child(odd) {  
    background-color: #B7CEEC;  
}  
table#alter th {  
    color: white;  
    background-color: gray;  
}  
body {
  background-image: url('https://images.unsplash.com/photo-1483450388369-9ed95738483c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWlycGxhbmUlMjBpbnRlcmlvcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80');
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
}
</style>
</head>
<body>
	<center><h1>Customer Page</h1>
<!--  	<div class="topnav">
  <div class="topnav-right"> -->
  <a class="active" href="Customer.jsp">Home</a>
    <a class="active" href="index.jsp">Logout</a>
<br><br><br>
	<table cellspacing="20" cellpadding="20" border="3"
		style="border-collapse: collapse; float: centert">

		<tr>
			<td><a href="viewScheduleCust">View Flight Schedule</a></td>
		</tr>
		<tr>
			<td><a href="viewFlightCust">View Flight Customer</a></td>
		</tr>
		</br>
		<tr>
			<td><a href="viewRouteCust">View Flight Route Customer</a></td>
		</tr>
		</br>
		<tr>
			<td><a href="Reservationform">Reserve Flight Ticket</a></td>
		</tr>
	     <tr>
			<td><a href="pay.jsp">Payment for the Reserved flight</a></td>
		</tr>
		
		<tr>
			<td><a href="viewFlightTicket.jsp">View E-Ticket</a></td>
		</tr>
		
		<tr>
			<td><a href="#">Print E-Ticket</a></td>
		</tr>
		
	</table></center>
</body>
</html>