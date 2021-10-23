<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
        <h1>Edit Route</h1>  
       <form:form method="POST" action="/FRS_NEW/edtsave">    
        <table >    
        <tr>  
        <td></td>    
         <td><form:hidden  path="RouteId" /></td>  
         </tr>   
         <tr>    
          <td>Source: </td>   
          <td><form:input path="Source"  /></td>  
         </tr>    
         <tr>    
          <td>Destination :</td>    
          <td><form:input path="Destination" /></td>  
         </tr>   
         <tr>    
          <td>TravelDuration :</td>    
          <td><form:input path="TravelDuration" /></td>  
         </tr>   
           <tr>    
          <td>Fare :</td>    
          <td><form:input path="Faree" /></td>  
         </tr> 
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Edit Save" /></td>    
         </tr>    
        </table>    
       </form:form>  
       