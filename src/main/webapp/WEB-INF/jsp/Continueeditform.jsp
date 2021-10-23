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
  
  </style>
  <center>
  <body>
        <h1>Edit Passenger Details</h1>  
       <form:form method="POST" action="/FRS_NEW/edttsave">    
        <table >    
        <tr>  
        <td></td>    
         <td><form:hidden  path="PassengerId" /></td>  
         </tr>   
         <tr>    
          <td>Name </td>   
          <td><form:input path="Name"  /></td>  
         </tr>    
         <tr>    
          <td>Age :</td>    
          <td><form:input path="Age" /></td>  
         </tr>   
         <tr>    
          <td>Gender :</td>    
          <td><form:input path="Gender" /></td>  
         </tr>   
          
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Edit Save" /></td>    
         </tr>    
        </table>    
       </form:form> 
       </body> 
       </center>