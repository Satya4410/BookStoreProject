<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
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
<body>
<jsp:include page="AdminHome.jsp" />
<script>
function serachbookfun(){
	var a= document.getElementById("bauthor").value;
	var b= document.getElementById("bname").value;
	if(a==""){
		document.getElementById("messages").innerHTML="please Enter Book Author";
		return false;
	}
	else if(b==""){
		document.getElementById("messages").innerHTML="please Enter Book Title";
		return false;
	}
	else
		return true;
}

</script>
<form method="POST" action="searbook" onsubmit="return serachbookfun()">
<table style="width:50%;text-align:right;margin-left:100px;">
<br/><br/>
<tr>
<td class="div1">Book Author : </td>
<td><input class="div" placeholder="Book Author"  type="text" name="author" id="bauthor" value=""/>
<br/>
<span id="messages" style="color:red;"></span>
</tr>
<tr>
<td class="div1">Title :</td>
<td><input class="div" placeholder="Title"  type="text" name="title" id="bname" value="" />
<span id="messages" style="color:red"></span>
<tr>
<td class="div1" colspan="2">
<input class="button" type="submit" value="Search Book" /></td>
</tr>
<br />
<h2 style="margin-left:720px;color:green">${msg}</h2>
</body>
</html>