<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
 <style> 
  body {
	
	height: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}
  
  </style>
  <center>
  <body>
        <h1>Fill Your Details Here</h1>  
       <form:form method="post" action="addss">  
     
        <table >    
        <tr>    
          <td>ReservationId : </td>   
          <td><form:input path="ReservationId" /></td>  
         </tr>    
         <tr>
         <tr>    
          <td>ScheduleId : </td>   
          <td><form:input path="ScheduleId" /></td>  
         </tr>    
         <tr>    
          <td>Name  :</td>    
          <td><form:input path="Name" /></td>  
         </tr>   
         <tr>    
          <td>Age :</td>    
          <td><form:input  path="Age" /></td>  
         </tr>   
         <tr>    
         <td>Seatno:</td>    
          <td><form:input path="Seatno" /></td>  
         </tr>
          <td> </td> 
          <tr>   
          <td><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
       </form:form> 
    <a href="viewReservation"><h3>Reservation Page</h3></a>
    </body>
    </center>