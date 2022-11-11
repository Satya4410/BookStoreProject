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
body {
  font-family: Arial, Helvetica, sans-serif;
  	background: white;
    background-image:url('adminbgbook.jpg');
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
<h3><center>USER INFORMATION</center></h3>
<tr>
<th>USER ID</th>
<th>USER NAME</th>
<th>EMAIL</th>
<th>ADDRESS</th>
<th>CITY</th>
<th>COUNTRY</th>
<th>PHONENUMBER</th>
<th>ZIPCODE</th>
</tr>

<c:forEach items="${user}" var="ui" >
<tr>
<td>${ui.userId}</td>
<td>${ui.userName}</td>
<td>${ui.email}</td>
<td>${ui.address}</td>
<td>${ui.city}</td>
<td>${ui.country}</td>
<td>${ui.phoneNumber}</td>
<td>${ui.zipcode}</td>
</tr>
</c:forEach>  
</table>


</body>
</html>