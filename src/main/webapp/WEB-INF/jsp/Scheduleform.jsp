<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
        <h1>Add Schedule</h1>  
       <form:form method="post" action="adds">    
        <table >    
         <tr>    
          <td>FlightId </td>   
          <td><form:input path="FlightId" /></td>  
         </tr>    
         <tr>    
          <td>RouteId:</td>    
          <td><form:input path="RouteId" /></td>  
         </tr>   
         <tr>    
          <td>StartDate :</td>    
          <td><form:input path="StartDate" /></td>  
         </tr>   
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
       </form:form> 
       <a href="login">Admin page</a>
   