<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<h1>Passenger details</h1>  

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
  
<tr><th>ReservationId</th><th>ScheduleId</th><th>Name</th><th>Age</th><th>Gender</th><th>PassengerId</th></tr>  
    <c:forEach var="route" items="${list}">   
   <tr>  
   <td>${route.reservationID }</td>  
   <td>${route.scheduleID}</td> 
   <td>${route.passengerID }</td> 
   <td>${route.flightID }</td>
   <td>${route.name}</td>  
   <td>${route.age }</td>  
   <td>${route.journeyDate}</td>  
   </tr>  
   </c:forEach> 
   </table>  
   <br/>  
   <a href="Admin.jsp">Back</a> 
   