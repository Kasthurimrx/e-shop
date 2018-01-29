<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@include file="/WEB-INF/views/CommonHeader.jsp" %>
    <%@include file="/WEB-INF/views/footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Fetching</title>
</head>
<body>
<h2>All User</h2>
<ul class="nav nav-tabs">
    <li><a  href="Admin">Admin</a></li>
    <li><a  href="alluser">ALL USER</a></li>
    <li><a href="category">Category</a></li>
    <li><a href="supplier">Supplier</a></li>
    <li><a href="product">Product</a></li>
  </ul>

<h3>User details</h3>
<br>
<table class="table">
<thead>
<tr>
<th>FirstName</th>
<th>LastName</th>
<th>Phone</th>
<th>Address</th>
<th>Email</th>
<th>UserName</th>
<th>Password</th>
<th>Delete</th>
<th>Edit</th>
</tr>
</thead>
<tbody>
<c:forEach var="user" items="${userlist}">
<tr>
<td>${user.firstname}</td>
<td>${user.lastname}</td>
<td>${user.phone}</td>	
<td>${user.address}</td>
<td>${user.email}</td>
<td>${user.username}</td>
<td>${user.password}</td>
<td><a href="delete?uid=${user.username}">Delete</a></td>
<td><a href="edit?uid=${user.username}">Edit</a></td>
</tr>
</c:forEach>
</tbody>
</table>
</body>
</html>