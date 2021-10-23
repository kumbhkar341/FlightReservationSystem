<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<h1>Flight Schedule List</h1>  

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
  
<tr><th>ScheduleId</th><th>FlightId</th><th>RouteId</th><th>StartDate</th></tr>  
    <c:forEach var="list" items="${list}">   
   <tr>  
   <td>${list.scheduleId }</td>
   <td>${list.flightId}</td>  
   <td>${list.routeId }</td>  
   <td>${list.startDate}</td>   
    
   </tr>  
   </c:forEach> 
   </table>  
   <br/>  
   <a href="Customer.jsp">Customer page</a> 
   