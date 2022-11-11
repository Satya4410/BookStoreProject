<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  	background: white;
    background-image:url("/onlineApp/bgpic1.jpg") !important;
    min-height: 500px;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size:cover;
}
h3{
     font-family:'Times New Roman', Times, serif;
     font-style: italic;
     font-size:30px;
     font-weight: bold;
     text-shadow: 2px 2px 4px #000000;
     color:white;
     margin-left:50px;
     }
.view{
	width:90%;
	color:black;
	background:#ececec88;
	margin-left:70px;
	text-align:center;
	font-family:'Times New Roman', Times, serif;
}
.alink:link, .alink:visited {
  background-color: green;
  color: white;
  padding:10px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  border-radius: 9px;
}

.alink:hover, .alink:active {
  background-color:green;
}
</style>
</style>
</head>
<body>
<jsp:include page="StaffHome.jsp" />
<table class="view" width="50%">
<h3><center>ORDERS INFORMATION</center></h3>
<tr>
<th>ORDER ID</th>
<th>BOOK ID</th>
<th>SHIPPING ADDRESS</th>
<th>RECIPIENT NAME</th>
<th>RECIPIENT PHONE</th>
<th>PAYMENT</th>
<th>ORDER DATE</th>
<th>STATUS</th>
</tr>

<c:forEach items="${stv}" var="ui" >
<tr>
<td>${ui.orderId}</td>
<td>${ui.bookId}</td>
<td>${ui.shippingaddress}</td>
<td>${ui.recipientName}</td>
<td>${ui.recipientPhone}</td>
<td>${ui.payment}</td>
<td>${ui.orderdate}</td>
<td>${ui.status}</td>
<td><a href="pageord/${ui.orderId}" class="alink">Take order</a></td>
</tr>
</c:forEach>  
</table>
<h3><center>${msg}</center></h3> 


</body>
</html>