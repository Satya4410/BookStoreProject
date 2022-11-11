<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm" %>
     <%@ page import="com.onlinebookstore.OnlineBookStoreProject.entity.BookOrder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.div{

	box-sizing: border-box;
	display: block;
	width: 200%;
	padding:7px;
	background:#ececec88;
	border-width: 1px;
    border-style: solid;
    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
    box-shadow: 10px 10px 5px black;
    border-radius: 9px;
    margin-top:10px;
    
}
.div1{
	margin-left:900px;
	width: 80%;
	padding:7px;
    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
    margin-top:10px;
    font-weight: bold;
    font-size:20px;
}
.button {
  padding: 10px;
  background:rgb(107, 189, 107);
  color:white;
  box-shadow: 10px 10px 5px black;
  border-radius: 9px;
  margin-left:400px;
  width:19%;
  margin-top:10px;
</style>
</head>
<body>
<jsp:include page="AdminHome.jsp" />

<c:forEach items="${li}" var="ui">
<form name="frm1" action="bookUpdateProcess"  method="POST" enctype="multipart/form-data">
<table style="width:50%;text-align:right;margin-left:100px;">
<tr>
<td class="div1">BookId :</td>
<td><input class="div" type="text" name="BookId" value="${ui.bookId}"/></td>
</tr>
<tr>
<td class="div1">Title :</td>
<td><input class="div" type="text" name="Title"  value="${ui.title}"/> </td>
</tr>
<tr>
<td class="div1">Author :</td>
<td><input class="div" type="text" name="Author" value="${ui.author}"/></td>
</tr>
<tr>
<td class="div1">Description :</td>
<td><input class="div" type="text" name="Description" value="${ui.description}"/> </td>
</tr>
<tr>
<td class="div1">ISBN :</td>
<td><input class="div" type="text" name="ISBN" value="${ui.ISBN}"/> </td>
</tr>
<tr>
<td class="div1">Price :</td>
<td><input class="div" type="text" name="Price" value="${ui.price}"/> </td>
</tr>
<tr>
<tr>
<td class="div1" colspan="2">
<input class="button"  type="submit" value="Update Book" /></td>
</tr>
</table>
</form>
<tr>
<td><h4 style="margin-left:500px;color:green">${msg}</h4></td>
</tr>
</c:forEach>
</body>
</html>