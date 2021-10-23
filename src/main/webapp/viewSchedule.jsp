<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  

<style>  
table, th, td {  
    border: 1px solid black;  
    border-collapse: collapse;  
}  
th, td {  
    padding: 10px;  
}  
table#alter tr:nth-child(even) {  
    background-color: white;  
}  
table#alter tr:nth-child(odd) {  
    background-color: white;  
}  
table#alter th {  
    color: white;  
    background-color: gray;  
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
<h1><center>Schedule List</center></h1>  
<table border="1"  id="alter" width="100%" cellpadding="2">
  
<tr><th>ScheduleId</th><th>FlightId</th><th>RouteId</th><th>StartDate</th><th>Edit</th><th>Delete</th></tr>  
    <c:forEach var="flight" items="${list}">   
   <tr>  
   <td>${flight.scheduleId }</td>
   <td>${flight.flightId }</td>  
   <td>${flight.routeId }</td>  
   <td>${flight.startDate}</td>  
   <td><a href="editSchedule/${flight.scheduleId }">Edit</a></td>  
   <td><a href="deleteSchedule/${flight.scheduleId }">Delete</a></td>  
   </tr>  
   </c:forEach> 
   </table>  
   <br/>  
   <a href="Scheduleform">Add Schedule</a> 
   <a href="Admin.jsp">Admin Page</a> 
   </div>