<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
        <h1>Add Flight</h1>  
       <form:form method="post" action="savee">    
        <table >    
         <tr>    
          <td>Name : </td>   
          <td><form:input path="FlightName" /></td>  
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
          <td><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
       </form:form>