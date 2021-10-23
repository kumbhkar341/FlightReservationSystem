<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
 <style> 
  body {
	
	height: 100%;
	background-repeat: no-repeat;
	background-size: cover;
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
  <center>
  <body>
        <h2>ENTER THE DETAILS TO RESERVE YOUR SEAT</h2>  
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
          <td><form:input path="Name" pattern="[A-Za-z]{1,}" title="Must contain only uppercase and lowercase characters"/></td>  
         </tr>   
         <tr>    
          <td>Age :</td>    
          <td><form:input  path="Age" /></td>  
         </tr>   
         <tr>    
         <td>Seatno:</td>    
          <td><form:input path="Seatno"/></td>  
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
    </div>