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
    background-color:white;  
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
<h1><center>Passenger details</center></h1> 
<table border="1"  id="alter" width="100%" cellpadding="2">
  
<tr><th>ReservationId</th><th>ScheduleId</th><th>Name</th><th>Age</th><th>Seat No</th></tr>  
    <c:forEach var="passenger" items="${list}">   
   <tr>  
   <td>${passenger.reservationId }</td>  
   <td>${passenger.scheduleId}</td> 
   <td>${passenger.name}</td>  
   <td>${passenger.age }</td> 
   <td>${passenger.seatno}</td> 
   
   </tr>  
   </c:forEach> 
   </table>  
   <br/>  
   <a href="Admin.jsp">Back</a> 
   </div>