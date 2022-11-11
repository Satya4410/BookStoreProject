<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm" %>
        <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body{
 	background: white;
    background-image:url('bookbgimg3.jpg');
    min-height: 500px;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size:cover;
}
.div{
	margin-left:700px;
	box-sizing: border-box;
	display: block;
	width: 30%;
	padding:7px;
	background:rgb(236, 236, 209);
	border-width: 1px;
    border-style: solid;
    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
    box-shadow: 10px 10px 5px black;
    border-radius: 9px;
    margin-top:10px;
    
}
.button {
  padding: 10px;
  background:rgb(107, 189, 107);
  color:white;
  box-shadow: 10px 10px 5px black;
  border-radius: 9px;
  margin-left:760px;
  width:15%;
  margin-top:10px;
}
.button1 {
  padding: 10px;
  background:red;
  color:white;
  box-shadow: 10px 10px 5px black;
  border-radius: 9px;
  margin-left:760px;
  width:15%;
  margin-top:10px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script>
function uservalidate(){
var username= document.getElementById("uname").value;
var em= document.getElementById("email").value;
var ads= document.getElementById("adrs").value;
var city= document.getElementById("city").value;
var country= document.getElementById("con").value;
var phonenumber= document.getElementById("mob").value;
var zipcode= document.getElementById("zcode").value;
var password= document.getElementById("pwd").value;
if(username==""){
	document.getElementById("messages").innerHTML="** please Enter User Name";
	return false;
}
else if(em==""){
	document.getElementById("messages").innerHTML="** please Enter Email";
	return false;
}
else if(ads==""){
	document.getElementById("messages").innerHTML="** please Enter Address";
	return false;
}

else if(city==""){
	document.getElementById("messages").innerHTML="** please Enter City";
	return false;
}
else if(country==""){
	document.getElementById("messages").innerHTML="** please Enter Country";
	return false;
}
else if(phonenumber==""){
	document.getElementById("messages").innerHTML="** please Enter PhoneNumber";
	return false;
}
else if(phonenumber.length<10){
	document.getElementById("messages").innerHTML="** PhoneNumber must be 10 digits";
	return false;
}
else if((phonenumber.charAt(0)!=9) && (phonenumber.charAt(0)!=8) && (phonenumber.charAt(0)!=7)){
	document.getElementById("messages").innerHTML="** PhoneNumber must start with 9,8,7";
	return false;
}
else if(zipcode==""){
	document.getElementById("messages").innerHTML="** please Enter the Zipcode";
	return false;
}
else if(zipcode.length<6){
	document.getElementById("messages").innerHTML="** Zipcode must be 6 digits";
	return false;
}
else if(password==""){
	document.getElementById("messages").innerHTML="** please Enter the Password";
	return false;
}
else if(password.length<3){
	document.getElementById("messages").innerHTML="** Password should contain atlest three digit";
	return false;
}
else
	return true;
}


</script>
<fm:form action="userProcess" onsubmit="return uservalidate()" method="POST" modelAttribute="user" enctype="multipart/form-data">

<table>

<tr>
<td ><fm:input class="div" placeholder="User Name" path="UserName" id="uname" value=""/> </td>
<span id="messages" style="color:red;margin-left:700px;"></span>
</tr>
<tr>

<td ><fm:input class="div" placeholder="Email" path="Email" id="email" value=""/> </td>
<span id="messages" style="color:red"></span>
</tr>
<tr>

<td ><fm:input class="div" placeholder="Address" cols="30" rows="2" path="Address"  id="adrs" value=""/> </td>
<span id="messages" style="color:red"></span>
</tr>
<tr>

<td ><fm:input class="div" placeholder="City" path="City" id="city" value=""/> </td>
<span id="messages" style="color:red"></span>
</tr>
<tr>

<td ><fm:input class="div"  placeholder="Country" path="Country" id="con" value=""/> </td>
<span id="messages" style="color:red"></span>
</tr>
<tr>

<td ><fm:input class="div" placeholder="Phone Number" path="PhoneNumber" id="mob" value="" /> </td>
<span id="messages" style="color:red"></span>
</tr>
<tr>

<td><fm:input class="div"  placeholder="ZipCode" path="Zipcode" id="zcode" value="" /> </td>
<span id="messages" style="color:red"></span>
</tr>
<tr>

<td><fm:input class="div"  placeholder="Password" type="password" path="Password" id="pwd" value=""/> </td>
<span id="messages" style="color:red"></span>
</tr>
<br/><br/>
<tr>
<td colspan="2" >
<fm:button class="button" type="submit">Register</fm:button>
<br/>
<fm:button class="button1" type="reset">Clear All</fm:button>
</td>
</tr>
<tr>
<td><h2><center style="margin-left:710px;">Already registered?</center></h2></td>
<td><a href="loginuser" style="width:20%;">LOGIN</a></td>
</tr>
</table>
</fm:form>
<h2 style="margin-left:720px;color:green">${msg}</h2>
</body>
</html>