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
<jsp:include page="Userlogin.jsp" />
<script>
function book(){
	var a= document.getElementById("bauthor").value;
	if(a==""){
		document.getElementById("messages").innerHTML="** please Enter Book Author";
		return false;
	}
	else
		return true;
}

</script>
<form method="POST" action="searbookauthor"  onsubmit="return book()">
<table style="width:50%;text-align:right;margin-left:100px;">
<br/><br/>
<tr>
<td class="div1">Book Author :</td>
<td><input class="div" placeholder="Enter Book Author"  type="text" name="author" id="bauthor" value="" /></td>
<span id="messages" style="color:red;margin-left:500px"></span>
<tr>
<td class="div1" colspan="2">
<input class="button" type="submit" value="Search Book" /></td>
</tr>
<br />
<h2 style="margin-left:720px;color:green">${msg}</h2>
</body>
</html>