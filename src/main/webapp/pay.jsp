<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  

<style>  
table, th, td {  
    border: 1px solid black;  
    border-collapse: collapse;  
}  
th, td {  
    padding: 10px;  
}  
table#alter tr:nth-child(even) {  
    background-color: #eee;  
}  
table#alter tr:nth-child(odd) {  
    background-color: #fff;  
}  
table#alter th {  
    color: white;  
    background-color: gray;  
}  
div {
	background-image:
		url('https://images.prismic.io/monei/8dcfb892-eb82-47f1-a4cc-5bd726e7cb3c_Online+Payment+Failure.jpg?auto=compress,format&rect=0,0,5477,3651&w=1248&h=832');
	height: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>  
<div>
<center><h1 style="color:white;">Payment Details</h1>
<h3 style="color:white;">MAKE YOUR PAYMENT HERE</h3><center>
<form action="payv" method="post" >
<center><table border="1"  id="alter" width="100%" cellpadding="2">
 <table cellspacing="20" cellpadding="20" border="3"
		style="border-collapse: collapse; float: centert">
<tr>
<td>Enter User id:</td> <td><input type="text" name="uid" placeholder="enter UserId" /></td><br><br>
</tr>
<tr>
<td>Enter route id:</td><td><input type="text" name="route" placeholder="enter RouteId" /></td><br><br>
</tr>
<tr><td>CreditCardNumber: <br></td><td><input type="text" name="CreditCardNumber" placeholder="enter CreditCardNumber" /></td><br><br>
</tr>
</table><br>
  <input type="submit" value="search"></center>
   <br/>  
   <center>
   </form>
 <!-- <a href="Customer.jsp">Customer page</a> -->
   </div>