<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
<style>
   tr,td{
      padding: 10px;
        }
</style>  
<title>Supplier</title>
</head>
<body>
<ul class="nav nav-tabs">
    <li><a  href="Admin">Admin</a></li>
    <li><a  href="alluser">ALL USER</a></li>
    <li><a href="category">Category</a></li>
    <li><a href="supplier">Supplier</a></li>
    <li><a href="product">Product</a></li>
  </ul>
<center>
<div>
<form:form action="savesupplier" method="post" commandName="supplier">
<table>
<thead>
<tr>
 <td><h3>Add Supplier</h3></td>
</tr>
</thead>
<tbody>
<tr>
<td><label>supplier Name</label></td>
<td><label>:</label></td>
<td><form:input class="form-control" type="text" placeholder="Enter Firstname" path="suppname" required="true"/></td>  
</tr>
<tr> 
<td><label>Supplier Phone</label></td>
<td><label>:</label></td>
<td><form:input class="form-control" type="text" placeholder="Enter the Phone No." path="suppphone" required="true"/></td>
</tr>
<tr>  
<td><label>Supplier Address</label>
<td><label>:</label></td>
<td><form:input class="form-control" type="text" placeholder="Enter the Address" path="suppaddress" required="true"/></td>
</tr> 
<tr>
<td colspan="2" align="center">
<input class="btn btn-primary" value="Submit" type="submit"/></td>
</tr>
</tbody>   
</table>
</form:form>
</div>
</center>
<h3>Supplier details</h3>
<br>
<table class="table">
<thead>
<tr>
<th>Supplier id</th>
<th>Supplier Name</th>
<th>Supplier Phone</th>
<th>Supplier Address</th>
<th>Delete</th>
<th>Edit</th>
</tr>
</thead>
<tbody>
<c:forEach var="supplier" items="${supplist}">
<tr>
<td>${supplier.suppid}</td>
<td>${supplier.suppname}</td>
<td>${supplier.suppphone}</td>
<td>${supplier.suppaddress}</td>
<td><a href="deletesupp?sid=${supplier.suppid}">Delete</a></td>
<td><a href="editsupp?sid=${supplier.suppid}">Edit</a></td>
</tr>
</c:forEach>
</tbody>
</table>
</body>
</html>