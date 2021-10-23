<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<h1>Schedule List</h1>  
<style>  
table, th, td {  
    border: 1px solid black;  
    border-collapse: collapse;  
}  
th, td {  
    padding: 10px;  
}  
table#alter tr:nth-child(even) {  
    background-color: #eee;  
}  
table#alter tr:nth-child(odd) {  
    background-color: #fff;  
}  
table#alter th {  
    color: white;  
    background-color: gray;  
}  
</style>  
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
   