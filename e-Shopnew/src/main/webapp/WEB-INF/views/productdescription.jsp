<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width,height=device-height,initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

<title></title>
</head>
<body>
<center><h2>product details</h2></center>
<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
				<c:url value="/images/${product.productid }.jpg" var="imageurl"></c:url>
				
					<div class="preview col-md-6">

					 	<div class="preview-pic tab-content">
							<div class="tab-pane active" id="pic-1">
				         <img src="${imageurl }" height="300" width="200">
							</div>  

						</div> 

					</div>
					<div class="details col-md-6">
						<h3 class="product-title">product name: ${product.productname }</h3>
						<p class="product-description"><h3>product Description</h3>${product.description }</p>
						<h4 class="price">
							current price: <span>${product.productprice }</span>
						</h4>
						<p class="vote">
							<strong>95%</strong> of buyers enjoyed this product! <strong>(90
								votes)</strong>
						</p>
						<c:if  test="${product.quantity==0 }">
                       Out Of Stock
                        </c:if>
                        <c:if test="${product.quantity!=0 }"> 
                        <form action="<c:url value="/addtocart/${product.productid}"/>" method="get">
						<select name="quantity">

										<option hidden="true"><h4>Quantity</h4>
										</option>
										<option name="1">1</option>
										<option name="2">2</option>
										<option name="3">3</option>
										<option name="4">4</option>
										<option name="5">5</option>
										<option name="6">6</option>
										<option name="7">7</option>
										<option name="8">8</option>
										<option name="9">9</option>
										<option name="10">10</option>
										<option name="11">11</option>
										<option name="12">12</option>
									</select> 
									<br>
									<br>
									
							
						<div class="action">
							<button class="add-to-cart btn btn-default" type="submit">add to cart</button>
						</div>
						</form>
						</c:if>
						<c:url value="/returnproduct" var="url"></c:url>
<a href="${url}"><h4>Back to product list</h4></a><br>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<c:if test="${!sessionScope.loggedIn}">
<form action="login" method="get">

</form>
</c:if>

</body>
</html>