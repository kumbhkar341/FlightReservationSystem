<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<h1>Passenger details</h1>

 <style>
 
  div {
	background-image:
		url('https://images.unsplash.com/photo-1569629743817-70d8db6c323b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1198&q=80');
	height: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}
  </style> 
    
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
  
<tr><th>ReservationId</th><th>ScheduleId</th><th>Name</th><th>Age</th><th>Seat NO</th><th>Edit</th><th>Delete</th><th>Payment</th></tr>  
    <c:forEach var="list" items="${list}">   
   <tr>  
   <td>${list.reservationId }</td>  
   <td>${list.scheduleId }</td> 
   <td>${list.name}</td>  
   <td>${list.age }</td>  
   <td>${list.seatno}</td>  
   <td><a href="editPassenger/${list.reservationId}">Edit</a></td>  
   <td><a href="deletePassenger/${list.reservationId}">Delete</a></td>  
   <td><a href="pay.jsp">Make Payment</a></td>  
   </tr>  
   </c:forEach> 
   </table>  
   <br/>  
   <a href="Continueform">Add Passenger Details</a> 
   