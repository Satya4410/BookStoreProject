<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
h3{
     font-family:'Times New Roman', Times, serif;
     font-style: italic;
     font-size:30px;
     font-weight: bold;
     text-shadow: 2px 2px 4px #000000;
     color:black;
     margin-left:50px;
     }
.view{
	width:70%;
	background:#ececec88;
	color:Black;
	margin-left:200px;
	text-align:center;
	font-family:'Times New Roman', Times, serif;
}
</style>
</head>
<body>
<jsp:include page="AdminHome.jsp" />
<table class="view" width="100%" border="1">
<h3><center>ORDER INFORMATION</center></h3>
<tr>
<th>ORDER ID</th>
<th>BOOK ID</th>
<th>SHIPPING ADDRESS</th>
<th>RECIPIENT NAME</th>
<th>RECIPIENT PHONE</th>
<th>PAYMENT</th>
<th>ORDER DATE</th>
<th>STATUS</th>
<th>STAFF ID</th>
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
<td>${ui.staffId}</td>
</tr>
</c:forEach>  
</table>


</body>
</html>