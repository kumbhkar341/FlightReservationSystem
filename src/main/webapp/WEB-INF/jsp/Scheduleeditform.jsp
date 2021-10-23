<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
        <h1>Edit Flight Schedule</h1>  
       <form:form method="POST" action="/FRS_NEW/edsave">    
        <table >    
        <tr>  
        <td></td>    
         <td><form:hidden  path="ScheduleId" /></td>  
         </tr>   
         <tr>    
          <td>FlightId </td>   
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
       </form:form>  
       