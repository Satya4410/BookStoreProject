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
    background-image:url('bookbgimg.jpg');
    min-height: 500px;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size:cover;
}
.container {
    padding: 110px;
   
}
::placeholder { /* Chrome, Firefox, Opera, Safari 10.1+ */
    color: #ffffff!important;
    opacity: 1; /* Firefox */
    font-size:18px!important;
}
.form-login {
    background-color: rgba(0,0,0,0.55);
    padding-top: 10px;
    padding-bottom: 20px;
    padding-left: 20px;
    padding-right: 20px;
    border-radius: 15px;
    border-color:#d2d2d2;
    border-width: 5px;
     font-family:cursive;
    color:white;
    box-shadow:0 1px 0 #cfcfcf;
    
}
.form-control{
    background:transparent!important;
    color:white!important;
    font-size: 18px!important;
}
h1{
    color:white!important;
}
h4 { 
 border:0 solid #fff; 
 border-bottom-width:1px;
 padding-bottom:10px;
 text-align: center;
}

.form-control {
    border-radius: 10px;
}
.text-white{
    color: white!important;
}
.wrapper {
    text-align: center;
}
.footer p{
    font-size: 18px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="keywords"
          content="unique login form,leamug login form,boostrap login form,responsive login form,free css html login form,download login form">
    <meta name="author" content="leamug">
    <title>insert title</title>
    <!-- Bootstrap core Library -->
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script" rel="stylesheet">
    <!-- Font Awesome-->
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<script>
function fun(){
	var username= document.getElementById("uname").value;
	var password= document.getElementById("pwd").value;
	if(username==""){
		document.getElementById("messages").innerHTML="** please Enter User Name";
		return false;
	}
	else if(password==""){
		document.getElementById("messages").innerHTML="** please Enter the Password";
		return false;
	}
	else
		return true;
	
}

</script>
<fm:form action="loginadminProcess" onsubmit="return fun()"  method="POST" modelAttribute="alogin" enctype="multipart/form-data">
<div class="container">
    <div class="row">
        <div class="col-md-offset-5 col-md-4 text-center">
            
              <div class="form-login"></br>
                <h4>LOGIN HERE</h4>
                </br>
                <fm:input type="text" path="username" id="uname" value="" class="form-control input-sm chat-input" placeholder="username"/>
                <span id="messages" style="color:red"></span>
                </br></br>
                <fm:input type="password" path="password" id="pwd" value="" class="form-control input-sm chat-input" placeholder="password"/>
                <span id="messages" style="color:red"></span>
                </br></br>
                <div class="wrapper">
                        <span class="group-btn">
                        <fm:button class="btn btn-danger btn-md" type="submit">Login</fm:button>
						</span>
                </div>
                <h4 style="margin-left:10px;color:red">${msg}</h4>
            </div>
            
        </div>
        
    </div>
 
</div>
</fm:form>
</body>
</html>