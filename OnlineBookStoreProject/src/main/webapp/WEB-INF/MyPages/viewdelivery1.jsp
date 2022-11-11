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
  border-radius:9px;
}

.alink:hover, .alink:active {
  background-color:green;
}
.navbar {
  overflow: hidden;
  background-color: #333;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: green;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float:none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
<body>
<div class="navbar">
  <a href="../homestaff">Home</a>
  <a href="../vieword">Orders</a>
  <a href="../videlivery">Pending Orders</a>
  <a href="../staffdelitem">Delivery details</a>
    <a href="../logout">Logout</a>
</div>
<table class="view" width="50%">
<h3><center>PENDING DELIVERIES</center></h3>
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
<td><a href="pagedel/${ui.orderId}" class="alink">Delivered</a></td>
</tr>
</c:forEach>  
</table>
<h3><center>${msg}</center></h3>

</body>
</html>