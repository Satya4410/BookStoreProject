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
body{
 	background: white;
    background-image:url('imgs.jpg');
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
	background:rgb(212, 231, 212);
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
</head>
<body>
<script>
function staffvalidate(){
	
var staffid= document.getElementById("sid").value;
var staffname= document.getElementById("sname").value;
var email= document.getElementById("email").value;
var address= document.getElementById("adrs").value;
var city= document.getElementById("city").value;
var state= document.getElementById("state").value;
var phonenumber= document.getElementById("mob").value;
var zipcode= document.getElementById("zcode").value;
var password= document.getElementById("pwd").value;
if(staffid=="")
{
	document.getElementById("messages").innerHTML="** please Enter StaffId";
	return false;
	}
else if(staffname==""){
	document.getElementById("messages").innerHTML="** please Enter StaffName";
	return false;
}
else if(email==""){
	document.getElementById("messages").innerHTML="** please Enter EmailId";
	return false;
}
else if(address==""){
	document.getElementById("messages").innerHTML="** please Enter Address";
	return false;
}
else if(city==""){
	document.getElementById("messages").innerHTML="** please Enter City";
	return false;
}
else if(state==""){
	document.getElementById("messages").innerHTML="** please Enter Country Name";
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
<fm:form action="staffProcess" onsubmit="return staffvalidate()" method="POST" modelAttribute="staff" enctype="multipart/form-data">
<table>

<tr>
<td><fm:input class="div" path="StaffId"  placeholder="Staff ID" id="sid" value=""/> </td>
<span id="messages" style="color:red;margin-left:700px;"></span>
</tr>
<tr>
<td><fm:input class="div" path="StaffName"  placeholder="Staff Name" id="sname" value=""/> </td>
<span id="messages" style="color:red;"></span>
</tr>

<tr>
<td><fm:input  class="div" path="Email" placeholder="Email" id="email" value=""/> </td>
<span id="messages" style="color:red"></span>
</tr>
<tr>
<td><fm:input class="div" path="Address" placeholder="Address" id="adrs" value=""/> </td>
<span id="messages" style="color:red"></span>
</tr>

<tr>
<td><fm:input class="div" path="City" placeholder="City" id="city" value=""/> </td>
<span id="messages" style="color:red"></span>
</tr>

<tr>
<td><fm:input class="div" path="Country" placeholder="Country" id="state" value=""/> </td>
<td><span id="messages" style="color:red"></span>
</tr>

<tr>
<td><fm:input class="div" path="PhoneNumber" placeholder="Phone Number" id="mob" value=""/></td>
<span id="messages" style="color:red"></span>
</tr>

<tr>
<td><fm:input class="div" placeholder="ZipCode"  path="Zipcode" id="zcode" value=""/> </td>
<span id="messages" style="color:red"></span>
</tr>

<tr>
<td><fm:input class="div" type="password" placeholder="Password" path="Password" id="pwd" value=""/> </td>
<span id="messages" style="color:red"></span>
</tr>
<tr>
<td colspan="2" >
<fm:button class="button" type="submit">Register</fm:button>
<br/>
<fm:button class="button1" type="reset">Clear All</fm:button>
</td>
</tr>
<tr>
<td><h2><center style="margin-left:710px;">Already registered?</center></h2></td>
<td><a href="stafflogin" style="width:20%;">LOGIN</a></td>
</tr>
</table>
</fm:form>
<h2 style="margin-left:720px;color:green">${msg}</h2>

</body>
</html>