<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1"  id="alter" width="100%" cellpadding="2">
  
<tr><th>CreditCardNumber</th><th>Valid From</th><th>Valid To</th><th>Balance</th><th>User Id</th><th>Payment</th></tr>  
    <c:forEach var="r" items="${list1}">   
   <tr>
   <td>${r.creditCardNumber }</td>  
   <td>${r.validFrom }</td>  
   <td>${r.validTo }</td> 
   <td>${r.balance}</td>  
   <td>${r.userId }</td>   
   <td><a href="paym">Make Payment</a></td>  
   </tr>  
   </c:forEach> 
   </table>  
   <br/>  
</body>
</html>