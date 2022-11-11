<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm" %>
    <%@ page isELIgnored="false" %>
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
.div{

	box-sizing: border-box;
	display: block;
	width: 200%;
	padding:7px;
	background:#ececec88;
	border-width: 1px;
    border-style: solid;
    font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
    box-shadow:10px 10px 5px black;
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
  color: white;
  box-shadow: 10px 10px 5px black;
  border-radius: 9px;
  margin-left:400px;
  width:25%;
  margin-top:10px;
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
<script>
function reviewfun(){
var username= document.getElementById("uname").value;
var comment= document.getElementById("cmnt").value;
if(username==""){
	document.getElementById("messages").innerHTML="** please Enter User Name";
	return false;
}
else if(comment==""){
	document.getElementById("messages").innerHTML="** please Enter Comment";
	return false;
}
else
	return true;
}

</script>
<fm:form action="../reviewProcess" onsubmit="return reviewfun()" method="POST" modelAttribute="rev" enctype="multipart/form-data">
<table style="width:50%;text-align:right;margin-left:100px;">
<br/><br/>
<tr>
<td class="div1">USER NAME :</td>
<td><fm:input  class="div" placeholder="User Name" path="UserName" id="uname" value=""/> </td>
<span id="messages" style="color:red;margin-left:500px;"></span>
</tr>
<tr>
<td class="div1">RATING :</td>
<td><fm:select  class="div" path="Rating">
<fm:option value="Excellent" label="Excellent" />
<fm:option value="Good" label="Good" />
<fm:option value="Better" label="Better" />
<fm:option value="Poor" label="Poor" />
</fm:select>
</td>
</tr>

<tr>
<td class="div1">COMMENT :</td>
<td><fm:input  class="div" placeholder="Comment" path="Comment" id="cmnt" value=""/> </td>
<span id="messages" style="color:red"></span>
</tr>
<tr>
<td colspan="2">
<fm:button class="button"  type="submit">SUBMIT</fm:button>
<a href="show" class="alink">Back</a></td>
</td>
</tr>

</table>
</fm:form>
<h4 style="margin-left:500px;color:rgb(34, 34, 143)">${msg}</h4>

</body>
</html>