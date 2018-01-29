
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title></title>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
<div class="container-fluid">
<div class="navbar-header">
<a class="navbar-brand" href="#">CameraShop</a>
</div>
<ul class="nav navbar-nav navbar-left">
<li><a href="index">Home</a></li>
<c:choose>
<c:when test="${sessionScope.UserLoggedIn != null}">
<ul class="nav navbar-nav navbar-left">
<li><a href="viewproduct">Product</a></li>
</ul>
<ul class="nav navbar-nav navbar-right">
<li><a href="cart"><span class="glyphicon glyphicon-shopping-cart">Cart</span></a> </li>        	
<li><a href="perform_logout"><span class="glyphicon glyphicon-log-out"></span>logout</a></li>
</ul>
</c:when>
<c:otherwise>
<ul class="nav navbar-nav navbar-left">
<li><a href="Admin">Admin</a></li>
<li><a href="alluser">ALL USER</a></li>
<li><a href="category">Category</a></li>
<li><a href="supplier">Supplier</a></li>
<li><a href="product">Product</a></li>
</ul> 
<ul class="nav navbar-nav navbar-right">
<li><a href="cart"><span class="glyphicon glyphicon-shopping-cart">Cart</span></a> </li>
<li><a href="perform_logout"><span class="glyphicon glyphicon-log-out"></span> logout</a></li>
</ul>
</c:otherwise>
</c:choose>
<li><p>${sessionScope.UserLoggedIn}</p></li>
</ul>
</div>
</nav>          
</body>
</html>