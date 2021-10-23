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
        </div>   
       </form:form>  
       