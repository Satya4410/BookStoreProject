<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
  width:15%;
  margin-top:10px;
}

</style>
</head>
<body>
<jsp:include page="AdminHome.jsp" />
<script>
function bvalidate(){

var bid= document.getElementById("bokid").value;
var tit= document.getElementById("title").value;
var author= document.getElementById("aut").value;
var descrip= document.getElementById("des").value;
var isbn= document.getElementById("isbn").value;
var image= document.getElementById("image").value;
var pri= document.getElementById("price").value;
if(bid==""){
	
	document.getElementById("messages").innerHTML="** please enter book id";
	return false;
}
else if(tit==""){
	document.getElementById("messages").innerHTML="** Please Enter the Title";
	return false;
}
else if(author==""){
	document.getElementById("messages").innerHTML="** Please Enter the Author Name";
	return false;
}
else if(descrip==""){
	document.getElementById("messages").innerHTML="** Please Enter the Description";
	return false;
}
else if(isbn==""){
	document.getElementById("messages").innerHTML="** Please Enter the ISBN number";
	return false;
}
else if(image==""){
	document.getElementById("messages").innerHTML="** Please Upload the Image";
	return false;
}
else if(pri==""){
	document.getElementById("messages").innerHTML="** Please Enter the price";
	return false;
}

else
	return true;
}

</script>
<fm:form action="bookProcess" onsubmit="return bvalidate()" method="POST" modelAttribute="book" enctype="multipart/form-data">
<table style="width:50%;text-align:right;margin-left:100px;">
<br/><br/>
<tr>
<td class="div1">BookId :</td>
<td><fm:input  class="div" placeholder="BookID" path="BookId" id="bokid" value=""/> </td>
<span id="messages" style="color:red;margin-left:500px;"></span>
</tr>

<tr>
<td class="div1">Title :</td>
<td><fm:input  class="div" placeholder="Title" path="Title" id="title" value="" /> </td>
<span id="messages" style="color:red"></span>
</tr>

<tr>
<td class="div1">Author :</td>
<td><fm:input class="div" placeholder="Author"  path="Author"  id="aut" value=""/> </td>
<span id="messages" style="color:red"></span>
</tr>

<tr>
<td class="div1">Description :</td>
<td><fm:input class="div" placeholder="Description" path="Description" id="des" value=""/> </td>
<span id="messages" style="color:red"></span>
</tr>

<tr>
<td class="div1">ISBN :</td>
<td><fm:input class="div" placeholder="ISBN" path="ISBN" id="isbn" value=""/> </td>
<span id="messages" style="color:red"></span>
</tr>

<tr>
<td class="div1">BookImage :</td>
<td><input class="div"  type="file" name="ufile" id="image"  value=""/></td>
<span id="messages" style="color:red"></span>
</tr>

<tr>
<td class="div1">Price :</td>
<td><fm:input class="div" placeholder="Price" path="Price" id="price" value=""/> </td>
<span id="messages" style="color:red"></span>
</tr>



<tr>
<td colspan="2">
<fm:button  class="button"  type="submit">Insert Book</fm:button>
</td>
</tr>

</table>
</fm:form>
<h4 style="margin-left:600px;color:green">${msg}</h4>

</body>
</html>