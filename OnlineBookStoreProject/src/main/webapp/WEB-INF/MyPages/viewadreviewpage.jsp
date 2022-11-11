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
	width:50%;
	background:#ececec88;
	color:black;
	margin-left:350px;
	text-align:center;
	font-family:'Times New Roman', Times, serif;
}
.alink:link, .alink:visited {
  background-color: red;
  color: white;
  padding: 10px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  border-radius:9px;
}

.alink:hover, .alink:active {
  background-color:red;
}
</style>
</head>
<body>
<jsp:include page="AdminHome.jsp" />
<table class="view" width="100%" >
<h3><center>REVIEW DETAILS</center></h3>
<tr>
<th>REVIEW ID</th>
<th>BOOK ID</th>
<th>USER NAME</th>
<th>RATING</th>
<th>COMMENT</th>
</tr>

<c:forEach items="${revi}" var="r" >
<tr>
<td>${r.reviewId}</td>
<td>${r.bookId}</td>
<td>${r.userName}</td>
<td>${r.rating}</td>
<td>${r.comment}</td>
<td><a href="delete/${r.reviewId}" class="alink">Delete</a></td>
</tr>
</c:forEach> 
<h1>
${msg} </h1>
</table>
</body>
</html>
