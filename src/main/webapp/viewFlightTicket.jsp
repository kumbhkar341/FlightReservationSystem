<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ page import="com.frs.bean.*" %>  
 <%@ page import="com.frs.controller.*" %>
 <%@ page import="com.frs.service.*" %>    
 <%@ page import="com.frs.dao.*" %>  
 <%@ page import="com.frs.service.*" %>  
 <%@ page isELIgnored = "false" %>

<br>
	<table border="1" cellspacing="4" cellpadding="20">
	<th colspan="5"> Ticket Details</th>
	
<tr>
		<td><b>Reservation ID</b></td>
		<td><b>Journey Date</b></td>
		<td><b>No. of Seats</b></td>
		<td><b>Total Fare</b></td>
		<td><b>Flight ID</b></td>

</tr>

    <c:forEach var="reservation" items="${list}">
    <tr>
		<td>${reservation.reservationID}</td> 
        <td>${reservation.journeyDate}</td>  
        <td>${reservation.noOfSeats}</td>  
        <td>${reservation.totalFare}</td>  
        <td>${reservation.FlightID}</td>  
    
   </tr>  
   </c:forEach>


<tr>
	
		<td><b>Flight Name</b></td>
		<td><b>Source</b></td>
		<td><b>Destination</b></td>
	
</tr>

<tr>
		
    <c:forEach var="list" items="${list}">
    <tr>
		<td>${list.flightName}</td> 
        <td>${list.Source}</td>  
        <td>${list.Destination}</td>  
        

    
   </tr>  
   
   </c:forEach>
</tr>

<tr>
		<td><b>Name</b></td>
		<td><b>Age</b></td>
		<td><b>Seat No.</b></td>
</tr>

<tr>
		
    <c:forEach var="list" items="${list}">
    <tr>
		<td>${list.name}</td> 
        <td>${list.age}</td>  
        <td>${list.seatno}</td>  
  </tr>
  
   </c:forEach>
</tr>  
</table>
