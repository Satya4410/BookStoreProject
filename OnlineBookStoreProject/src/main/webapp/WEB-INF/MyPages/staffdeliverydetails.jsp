<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
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
</style>
<body>
<jsp:include page="StaffHome.jsp" />
<table class="view" width="50%" border="1">
<h3><center>DELIVERY INFORMATION</center></h3>
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

<c:forEach items="${lbo}" var="ui" >
<tr>
<td>${ui.orderId}</td>
<td>${ui.bookId}</td>
<td>${ui.shippingaddress}</td>
<td>${ui.recipientName}</td>
<td>${ui.recipientPhone}</td>
<td>${ui.payment}</td>
<td>${ui.orderdate}</td>
<td>${ui.status}</td>
</tr>
</c:forEach>  
</table>


</body>
</html>