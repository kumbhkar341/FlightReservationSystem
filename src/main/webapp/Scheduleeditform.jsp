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
</style><div>
        <h1>Edit Flight Schedule</h1>  
       <form:form method="POST" action="/FRS_NEW/edsave">    
        <table >    
        <tr>  
        <td></td>    
         <td><form:hidden  path="ScheduleId" /></td>  
         </tr>   
         <tr>    
          <td>FlightId :</td>   
          <td><form:input path="FlightId"  /></td>  
         </tr>    
         <tr>    
          <td>RouteId :</td>    
          <td><form:input path="RouteId" /></td>  
         </tr>   
         <tr>    
          <td>StartDate :</td>    
          <td><form:input path="StartDate" /></td>  
         </tr>   
           
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Edit Save" /></td>    
         </tr>    
        </table> 
           </div>
       </form:form>  
       