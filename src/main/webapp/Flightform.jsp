<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
   <style>
.topnav a {
  float: left;
  color: #34ebba;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}
.topnav a {
	float: left;
	color: #34ebba;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}
.topnav a.active {
	background-color: #5234eb;
	color: white;
}
.topnav-right {
	float: center;
}
div {
	background-image:
		url('https://images.unsplash.com/photo-1569629743817-70d8db6c323b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1198&q=80');
	height: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
<div>
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
        </div>  
       </form:form>