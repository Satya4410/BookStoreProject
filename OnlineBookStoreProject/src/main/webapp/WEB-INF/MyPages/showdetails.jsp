<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ page import="com.onlinebookstore.OnlineBookStoreProject.entity.BookOrder" %>
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
	width:40%;
	background:#ececec88;
	color:black;
	margin-left:400px;
	text-align:center;
	font-family:'Times New Roman', Times, serif;
}
.alink:link, .alink:visited {
  background-color: green;
  color: white;
  padding: 10px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  border-radius:9px;
}

.alink:hover, .alink:active {
  background-color:green;
}
</style>
</head>
<body>
<jsp:include page="Userlogin.jsp" />
<table class="view" width="50%">
<h3><center>BOOK INFORMATION</center></h3>
<tr>
<th>BOOK ID</th>
<th>TITLE</th>
</tr>

<c:forEach items="${boks}" var="ui">
<tr>
<td>${ui.bookId}</td>
<td>${ui.title}</td>
<td><a href="pageview/${ui.bookId}" class="alink">Show details</a></td>
</tr>
</c:forEach>  
</table>
</form>
</body>
</html>