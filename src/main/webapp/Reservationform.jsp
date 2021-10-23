<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
  
 <style>
 
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
        <h1>Book Your Tickets Here</h1>  
       <form:form method="post" action="added">  
       <c:set var = "now" value = "<%=new java.util.Date()%>" />  
        <table >    
         <tr>    
          <td>ScheduleId : </td>   
          <td><form:input path="ScheduleId" /></td>  
         </tr>    
         <tr>    
          <td>UserId :</td>    
          <td><form:input path="UserId" /></td>  
         </tr>   
         <tr>    
          <td>BookingDate :</td>    
          <td><form:input type="date" path="BookingDate" /></td>  
         </tr>   
         <tr>    
         <td>JourneyDate :</td>    
          <td><form:input type="date"  path="JourneyDate" /></td>  
         </tr>
         <tr>    
         <td>NoOfSeats :</td>    
          <td><form:input path="NoOfSeats" /></td>  
         </tr>
         <tr>    
         <td>TotalFare :</td>    
          <td><form:input path="TotalFare" /></td>  
         </tr>
        <!--  <tr>    
         <td>BookingStatus :</td>    
          <td><form:input path="BookingStatus" /></td>  
         </tr>-->
         
          <td> </td> 
          <tr>   
          <td><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
       </form:form> <br><br>
    <a href="Customer.jsp"><h3>Customer Page</h3></a>
    </body>
    </center>
    </div>