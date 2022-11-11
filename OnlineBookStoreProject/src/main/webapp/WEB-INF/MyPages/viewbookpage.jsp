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
<h3><center>BOOK INFORMATION</center></h3>
<tr>
<th>BookId</th>
<th>Title</th>
<th>Author</th>
<th>Description</th>
<th>ISBN</th>
<th>BookImage</th>
<th>Price</th>
</tr>

<c:forEach items="${boks}" var="ui">
<tr>
<td>${ui.bookId}</td>
<td>${ui.title}</td>
<td>${ui.author}</td>
<td>${ui.description}</td>
<td>${ui.ISBN}</td>
<td>
<img src="getbookPhoto/${ui.bookId}" width="100" height="100" /></td>
<td>${ui.price}</td>
</tr>

</c:forEach>  
</table>
<h3 style="margin-left:500px;">${msg}</h3>
</body>
</html>