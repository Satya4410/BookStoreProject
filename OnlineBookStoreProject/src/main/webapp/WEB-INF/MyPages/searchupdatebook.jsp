<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	padding:8px;
	background:#ececec88;
	border-width: 1px;
    border-style: solid;
    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
    box-shadow: 10px 10px 5px black;
    border-radius: 9px;
    margin-top:10px;
    
}
.div1{
	margin-left:800px;
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
  margin-left:450px;
  width:19%;
  margin-top:10px;
}

</style>
</head>
<body>
<jsp:include page="AdminHome.jsp" />
<form method="POST" action="update">
<table style="width:50%;text-align:right;margin-left:100px;">
<br/><br/>
<tr>
<td class="div1">Book Id : </td>
<td><input class="div" type="text" name="bookId" placeholder="BookID" /></td>
<tr>
<td class="div1" colspan="2">
<input class="button" type="submit" value="Search Book" /></td>
</tr>
</form>
<br/>
<h4 style="margin-left:600px;color:green">${msg}</h4>
</body>
</html>