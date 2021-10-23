<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
 
 
  <style>
  
  body {
	background-image:
		url('C:/Users/win10/Downloads/ship8.jpg');
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
        <h1>Edit Reservation Details</h1>  
       <form:form method="POST" action="/FRS_NEW/esave">    
        <table >    
        <tr>  
        <td></td>    
         <td><form:hidden  path="ReservationID" /></td>  
         </tr>   
         <tr>    
          <td>ScheduleId: </td>   
          <td><form:input path="ScheduleID"  /></td>  
         </tr>    
         <tr>    
          <td>JourneyDate :</td>    
          <td><form:input path="JourneyDate" /></td>  
         </tr>   
         <tr>    
          <td>NoOfSeats :</td>    
          <td><form:input path="NoOfSeats" /></td>  
         </tr>   
           <tr>    
          <td>TotalFare :</td>    
          <td><form:input path="TotalFare" /></td>  
         </tr> 
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Edit Save" /></td>    
         </tr>    
        </table>   
        </div> 
       </form:form>  
       </body>
       </center>