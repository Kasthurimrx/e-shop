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
<title>Add Product</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
tr,td{
      padding: 10px;
      }
</style>  
</head>
<body>  
<div class="container">
<form:form action="SaveProduct" method="post" commandName="product" enctype="Multipart/form-data">
<center>
<table>
<thead>
<tr>
<td><h3>Add Product</h3></td>
</tr>
<tr>
<td><form:input type="hidden" placeholder="Product ID" path="productid" required="true"/></td>
</tr>
<tr>
<td><label>Product Name</label></td>
<td><label>:</label></td>
<td><form:input class="form-control" type="text" placeholder="Product Name" path="productname" required="true"/></td>
</tr>  
<tr>
<td><label><b>Product Price : </b></label></td>
<td><label>:</label></td>
<td><form:input class="form-control" type="text" placeholder="Product Price" path="productprice" required="true"/></td>
</tr>
<tr>
<td><label>Product Quantity</label></td>
<td><label>:</label></td>
<td><form:input class="form-control" type="text" placeholder="Product Quantity" path="quantity" required="true"/></td>
</tr>
<tr>
<td><label>Product Description</label></td>
<td><label>:</label></td>
<td><form:input class="form-control" type="text" placeholder="Product Description" path="description" required="true"/></td>
</tr>
<tr>
<td><label>Product Image</label></td>
<td><label>:</label></td>
<td><input type="file" name="image"/></td>
</tr>
<tr>
<td><label>Category</label></td>
<td><label>:</label></td>
<td>
<div class="form-group">
<form:select class="form-control" name="Category" path="catid" id="sel1" >
<option value="-1" selected>category</option>
<c:forEach var="category" items="${catlist}">
<option value="${category.catid}">${category.catname}</option></c:forEach>
</form:select>
</div>
</td>
</tr>
<tr>
<td><label>Supplier</label></td>
<td><label>:</label></td>
<td>
<div class="form-group">
<form:select class="form-control" name="Supplier" path="suppid" id="sel1">
<option value="-1" selected>supplier</option>
<c:forEach var="supplier" items="${supplist}">
<option value="${supplier.suppid}">${supplier.suppname}</option></c:forEach> 
</form:select>
</div>
</td>
</tr>
<tr>   
<td colspan="2" align="center">
<input class="btn btn-primary" value="Add Product" type="submit"/></td> 
</tr>
</tbody>
</table>
</center>
</form:form>
</div>
<br>
<h3>Product details</h3>
<table class="table">
<thead>
<tr>
<th>Product id</th>
<th>Product image</th>
<th>Product name</th>
<th>Product price</th>
<th>Product quantity</th>
<th>Product description</th>
<th>Delete</th>
<th>Edit</th>
</tr>
</thead>
<c:forEach var="product" items="${prolist}">
<c:url value="/images/${product.productid}.jpg" var="imageurl"></c:url>
<tbody>
<tr>
<td>${product.productid}</td>
<td><img src="${imageurl}" height="50" width="50"></td>
<td>${product.productname}</td>
<td>${product.productprice}</td>
<td>${product.quantity }</td>
<td>${product.description}</td>
<td><a href="deleteproduct?pid=${product.productid}">Delete</a></td>
<td><a href="editcat?pid=${product.productid}">EDIT</a></td>
</tr>
</tbody>
</c:forEach>
</table>
</body>
</html>


