<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<%@ page import="com.frs.bean.*" %>  
 <%@ page import="com.frs.controller.*" %>
 <%@ page import="com.frs.service.*" %>    
 <%@ page import="com.frs.dao.*" %>  
 <%@ page import="com.frs.service.*" %>  
 <%@ page isELIgnored = "false" %>
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
div {
	background-image:
		url('https://images.unsplash.com/photo-1569629743817-70d8db6c323b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1198&q=80');
	height: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
<div>
</body>
<h1>Flight List</h1>  
<table border="1" width="70%" cellpadding="2">
  
<tr><th>FlightId</th><th>FlightNAme</th><th>SeatingCapacity</th><th>ReservationCapacity</th><th>Edit</th><th>Delete</th></tr>  
    <c:forEach var="flight" items="${lists}">   
   <tr>  
   <td>${flight.flightId}</td>  
   <td>${flight.flightName}</td>  
   <td>${flight.seatingCapacity}</td>  
   <td>${flight.reservationCapacity}</td>  
   <td><a href="editFlight/${flight.flightId}">Edit</a></td>  
   <td><a href="deleteFlight/${flight.flightId}">Delete</a></td>  
   </tr>  
   </c:forEach> 
   </table>  
   <br/>  
   <a href="Flightform">Add Flight</a>
  <a href="Admin.jsp">Admin Page</a>
  </div>