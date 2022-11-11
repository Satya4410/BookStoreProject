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
function bookorderfunc(){
var shippingaddress= document.getElementById("shipadrs").value;
var recipientname= document.getElementById("rname").value;
var phonenumber= document.getElementById("mob").value;
if(shippingaddress==""){
		document.getElementById("messages").innerHTML="** please Enter Shipping Address";
		return false;
	}
else if(recipientname==""){
	document.getElementById("messages").innerHTML="** please Enter Recipient Name";
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
else
	return true;
}

</script>
<fm:form action="../bookorderProcess" onsubmit="return bookorderfunc()" method="Post" modelAttribute="bookorder"  enctype="multipart/form-data">
<table style="width:50%;text-align:right;margin-left:100px;">
<br/><br/>
<tr>
<td class="div1">SHIPPING ADDRESS :</td>
<td><fm:input  class="div" placeholder="Shipping Address" path="Shippingaddress" id="shipadrs" value=""/> </td>
<span id="messages" style="color:red;margin-left:500px;"></span>
</tr>

<tr>
<td class="div1">RECIPIENT NAME :</td>
<td><fm:input  class="div" placeholder="Recipient Name" path="RecipientName" id="rname" value=""/> </td>
<span id="messages" style="color:red"></span>
</tr>

<tr>
<td class="div1">RECIPIENT PHONE :</td>
<td><fm:input class="div" placeholder="Recipient Phone" path="RecipientPhone" id="mob" value="" /> </td>
<span id="messages" style="color:red"></span>
</tr>
<tr>
<td class="div1">PAYMENT :</td>
<td><fm:select  class="div" path="Payment">
<fm:option value="Cash on delivery" label="Cash on delivery" />
</fm:select>
</td>
</tr>
<tr>
<td colspan="2">
<fm:button class="button"  type="submit">ORDER NOW!</fm:button>
<a href="../pageview/${BookId}" class="alink";">Back</a>
</td>
</tr>
<br/>
<tr>
</tr>
</table>
</fm:form>
<h4 style="margin-left:400px;color:rgb(34, 34, 143)">${msg}</h4>

</body>
</html>