<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  	background: white;
    background-image:url('/onlineApp/adminbgbook.jpg');
    min-height: 500px;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size:cover;
}
h3{
     font-family:'Times New Roman', Times, serif;
     font-style: italic;
     font-size:30px;
     font-weight: bold;
     text-shadow: 2px 2px 4px #000000;
     color:black;
     margin-left:50px;
     }
.view{
	width:50%;
	background:#ececec88;
	color:black;
	margin-left:350px;
	text-align:center;
	font-family:'Times New Roman', Times, serif;
}
.alink:link, .alink:visited {
  background-color: red;
  color: white;
  padding: 10px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  border-radius:9px;
}

.alink:hover, .alink:active {
  background-color:red;
}
.navbar {
  overflow: hidden;
  background-color: #333;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border:none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: green;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
</head>
<body>
<div class="navbar">
  <a href="../home">Home</a>
  <a href="../viewuserinfo">User</a>
   <a href="../staffinfodetails">Staff</a>
  <div class="dropdown">
    <button class="dropbtn">Books
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="../books">Add Book</a>
      <a href="../getallbook">View Book</a>
      <a href="../upbook">Update Book</a>
      <a href="../delbook">Delete Book</a>
      <a href="../searchb">Search Book</a>
    </div>
  </div> 
  <a href="../adminviewing">Reviews</a>
   <a href="../viewdeliveryad">Order Details</a>
    <a href="../logout">Logout</a>
</div>
<table class="view" width="100%" >
<h3><center>REVIEW DETAILS</center></h3>
<tr>
<th>REVIEW ID</th>
<th>BOOK ID</th>
<th>USER NAME</th>
<th>RATING</th>
<th>COMMENT</th>
</tr>

<c:forEach items="${revi}" var="r" >
<tr>
<td>${r.reviewId}</td>
<td>${r.bookId}</td>
<td>${r.userName}</td>
<td>${r.rating}</td>
<td>${r.comment}</td>
<td><a href="delete/${r.reviewId}" class="alink">Delete</a></td>
</tr>
</c:forEach> 
<h1>
${msg} </h1>
</table>
</body>
</html>
