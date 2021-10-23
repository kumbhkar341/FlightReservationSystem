<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<h1>Flight List</h1>  
<form:form method="post" action="adds"> 
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
  
<tr><th>FlightId</th><th>FlightName</th><th>SeatingCapacity</th><th>ReservationCapacity</th></tr>  
    <c:forEach var="flight" items="${list}">   
   <tr>  
   <td>${flight.flightId }</td>  
   <td>${flight.flightName }</td>  
   <td>${flight.seatingCapacity }</td>  
   <td>${flight.reservationCapacity }</td>  
    
   </tr>  
   </c:forEach> 
   </table>  
   <br/>  
   </form:form>
   <a href="Customer.jsp">Customer page</a> 
   