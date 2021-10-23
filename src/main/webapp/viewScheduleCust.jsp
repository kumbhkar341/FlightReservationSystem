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
    background-color:  white;  
}  
table#alter tr:nth-child(odd) {  
    background-color:  white;  
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
 <><h2><center>Flight Schedule List</center></h2>  
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
   </div>