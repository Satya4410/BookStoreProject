<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm" %>
        <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {
    background: white;
    background-image:url('bookbg1.jpg');
    min-height: 500px;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size:cover;
 
 }
 h3{
     font-family:'Times New Roman', Times, serif;
     font-style: italic;
     font-size:50px;
     font-weight: bold;
     text-shadow: 2px 2px 4px #000000;
     color:black;
     margin-left:350px;
     }
 #link_bar a { padding:5px; font-weight:bold;float:left;box-shadow: 10px 10px 5px rgb(8, 43, 36); }
 
     #link_bar a:link { color:#d0d0d0; background-color:black; }
     #link_bar a:visited { color:#c0c0c0; background-color:black; }
     #link_bar a:hover { color:black; background-color:rgb(236, 233, 233) ; }
     #link_bar a:active { color:black; background-color:rgb(236, 233, 233) ; }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<table width="100%">
<br/>
<tr>
<td style="text-align:center">
 <div id="link_bar"> 
<a href="login" style="margin-left:250px;width:20%;">ADMIN</a> &nbsp;&nbsp;
<a href="getuser" style="width:20%;">ORDER NOW!</a> &nbsp;&nbsp;
<a href="addstaff" style="width:20%;">STAFF MEMBER</a>
</td>
</tr>
<tr>
<td>
<div class="container">
      <h3>WELCOME TO ONLINE BOOK STORE</h3>  
      <br/>
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
    
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
          <div class="item active">
            <img src="bookban1.jpg" alt="Los Angeles" style="width:100%;">
          </div>
    
          <div class="item">
            <img src="bookban.jpg" alt="Chicago" style="width:100%;">
          </div>
        
          <div class="item">
            <img src="bookimg.jpg" alt="New york" style="width:100%;">
          </div>
        </div>
    
        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </div>
    </td>
</tr>
</table>
</body>
</html>