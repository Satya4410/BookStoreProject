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
  padding: 10px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  border-radius:9px;
  box-shadow: 10px 10px 5px black;
}

.alink:hover, .alink:active {
  background-color:green;
}

</style>
</head>
<body>
<table class="view" width="50%">
<br/>
<c:forEach items="${rv}" var="r" >
<tr><td>
<br/></td>
</tr>
<tr>
<td>USER NAME :${r.userName}</td>
</tr>
<tr>
<td>RATING :${r.rating}</td>
</tr>
<tr>
<td>COMMENT :${r.comment}</td>
</tr>
</c:forEach> 
<tr>
<td><a href="../pageview/${BookId}" class="alink">Back</a></td>
</tr>
<tr><td><br/></td></tr> 
</table>
</body>
</html>
