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
    background-image:url("/onlineApp/pic2.jpg") !important;
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
	width:40%;
	color:black;
	background:#ececec88;
	margin-left:400px;
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
.order:link, .order:visited {
  background-color: black;
  color: white;
  padding: 10px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  border-radius:9px;
}

.order:hover, .order:active {
  background-color:black;
}
</style>
</head>
<body>
<table class="view" width="50%">
<br/>
<c:forEach items="${boks}" var="ui">
<tr>
<td>
<br/>
</td>
</tr>
<tr>
<td>
<img src="getbookPhoto/${ui.bookId}" width="200"  height="200" /></td>
</tr>
<tr>
<td>BOOK ID :${ui.bookId}</td>
</tr>
<tr>
<td>TITLE :${ui.title}</td>
</tr>
<tr>
<td>AUTHOR :${ui.author}</td>
</tr>
<tr>
<td>DESCRIPTION :${ui.description}</td>
</tr>
<tr>
<td>ISBN :${ui.ISBN}</td>
</tr>
<tr>
<td>PRICE :${ui.price}</td>
</tr>
<tr>
<td><a href="page/${ui.bookId}" class="order">ORDER NOW!</a></td>
</tr>
<tr>
<td>
<br/>
</td>
</tr>
<tr>
<td>
<tr>
<td><a href="page1/${ui.bookId}" class="alink">ViewReview</a>
<a href="page11/${ui.bookId}" class="alink">AddReview</a></td>
</tr>
<tr>
<td>
<br/>
</td>
</tr>
<tr>
<td><a href="searauthor" class="alink" style="background-color:rgb(19, 104, 87);">Back</a></td>
</tr>
</c:forEach>  
</table>
<h3>${msg}</h3>
</body>
</html>