<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<h1>Route List</h1>  
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
  
<tr><th>Id</th><th>Source</th><th>Destination</th><th>TravelDuration</th><th>Fare</th><th>Edit</th><th>Delete</th></tr>  
    <c:forEach var="route" items="${list}">   
   <tr>  
   <td>${route.routeId }</td>  
   <td>${route.source }</td> 
   <td>${route.destination }</td>  
   <td>${route.travelDuration }</td>  
   <td>${route.faree }</td>  
   <td><a href="editRoute/${route.routeId }">Edit</a></td>  
   <td><a href="deleteRoute/${route.routeId }">Delete</a></td>  
   </tr>  
   </c:forEach> 
   </table>  
   <br/>  
   <a href="Routeform">Add Route</a> <a href="Admin">Admin Page</a> 
   