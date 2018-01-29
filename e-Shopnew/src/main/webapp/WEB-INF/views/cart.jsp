<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@include file="/WEB-INF/views/CommonHeader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title></title>
</head>
<body>
<td><form action="<c:url value="/updateCartItem/${cartitem.citemid}"/>"></form></td>

<h3>Cart details</h3>
<table class="table">
<thead>
<tr>
<th><br>Product name</th>
<th><br>Product quantity</th>
<th><br>Product Subtotal</th>
<th><br>Product image</th>
<th>Operation</th>
</tr>
</thead>

<tbody>
<c:forEach items="${cartitems }" var="cartitem">
<tr>
<td>${cartitem.productname}</td>
<td><input type="text" value="${cartitem.quantity}" name="quantity" required="true"/></td>
<td>Rs.${cartitem.productprice * cartitem.quantity}</td>
<td><img src="<c:url value='/images/${cartitem.productid}.jpg'/>" >
<td><a href="<c:url value="/deleteCartItem/${cartitem.citemid }"/>">DELETE </a></td>
</tr>
</c:forEach>
</tbody>
</table>
<br><br><br>
<br><br><br>
<br><br><br>
<br><br><br>
<br><br><br>
<br><br><br>

	<div class="container">
<div class="pull-left btn-fyi">	<a href="cancel"><< CANCEL</div></a>
<div class=" pull-right btn-fyi"><a href="CheckOut">CHECKOUT>></div></a>
	</div>			

</body>
</html>