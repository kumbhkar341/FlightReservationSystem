<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
        <h1>Add Route</h1>  
       <form:form method="post" action="add">    
        <table >    
         <tr>    
          <td>Source : </td>   
          <td><form:input path="Source" /></td>  
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
       
          <td> </td> 
          <tr>   
          <td><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
       </form:form> 
   