<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
        <h1>Edit Flight</h1>  
       <form:form method="POST" action="/FRS_NEW/editsave">    
        <table >    
        <tr>  
        <td></td>    
         <td><form:hidden  path="FlightId" /></td>  
         </tr>   
         <tr>    
          <td>Name : </td>   
          <td><form:input path="FlightName"  /></td>  
         </tr>    
         <tr>    
          <td>SeatingCapacity :</td>    
          <td><form:input path="SeatingCapacity" /></td>  
         </tr>   
         <tr>    
          <td>ReservationCapacity :</td>    
          <td><form:input path="ReservationCapacity" /></td>  
         </tr>   
           
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Edit Save" /></td>    
         </tr>    
        </table>    
       </form:form>