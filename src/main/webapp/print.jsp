<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.frs.controller.*" %>
<%@ page import="com.frs.bean.*" %>
<%@ page import="com.frs.dao.*" %>
<%@ page import="com.frs.util.*" %>
<h2><center>Ticket</center></h2>
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 10px;
}



table#alter th {
	color: white;
	background-color: gray;
}
</style>
<table border="1" id="alter" width="100%" cellpadding="2">

	<tr>
		<th>ReservationId</th>
		<th>ScheduleId</th>
		<th>Name</th>
		<th>Seatno</th>
		<th>Payment</th>
		
	</tr>
	<c:forEach var="route" items="${list1}">
		<tr>
			<td>${route.reservationId }</td>
			<td>${route.scheduleId }</td>
			<td>${route.name}</td>
			<td>${route.age }</td>
            <td>${route.seatno }</td>
			
		</tr>
	</c:forEach>
</table>
<br>
<input type="button" value="Print" onclick="window.print();">
<br />