<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/Header.jsp" %>
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
<title>Edit Supplier</title>
</head>
<body>
<center>
<div class="container">
<form:form action="editProduct" method="post" commandName="product1">
<table>
<thead>
<tr>
<td><h1>Add Product</h1></td>
<tr>
</thead>
<tbody>
<tr>
<td><label>Product ID</label></td>
<td><label>:</label></td>
<td><form:input class="form-control" type="text"  path="productid"  value = "${productdata.productid}" required="true"/></td>
</tr>
<tr>
<td><label>Product Name</label></td>
<td><label>:</label></td>
<td><form:input class="form-control" type="text"  path="productname" value="${productdata.productname}" required="true"/></td>
</tr>  
<tr>
<td><label>Product Price</label></td>
<td><label>:</label></td>
<td><form:input class="form-control" type="text"  path="productprice" value="${productdata.productprice}" required="true"/></td>
</tr>
<tr>
<td><label>Product Quantity</label></td>
<td><label>:</label></td>
<td><form:input class="form-control" type="text"  path="quantity" value="${productdata.quantity}" required="true"/></td>
</tr>
<tr>
<td><label>Product Description</label></td>
<td><label>:</label></td>
<td><form:input class="form-control" type="text"  path="description" value="${productdata.description}"required="true"/></td>
</tr>
<tr>
</tr>
<tr>
<td><label>Category</label></td>
<td><label>:</label></td>
<td>
<form:select multiple class="form-control" name="Category" path="category" >
<form:option value="-1" selected>category</form:option>
<c:forEach var="category" items="${catlist}">
<form:option value="${category.catid}">${category.catname}</form:option></c:forEach>
</form:select>
</td>
</tr>
<tr>
<td><label>Supplier</label></td>
<td><label>:</label></td>
<td>
<form:select multiple class="form-control" name="Supplier" path="supplier" >
<form:option value="-1" selected>supplier</form:option>
<c:forEach var="supplier" items="${supplist}">
<form:option value="${supplier.suppid}">${supplier.suppname}</form:option></c:forEach> 
</form:select>
</td>
</tr>
<tr>
<td colspan="2" align="center">
<input class="btn btn-primary" value="Add Product" type="submit"/></td> 
</tr>
</tbody>
</table>
</form:form>
</div>
</center>
</body>
</html>