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
<style>
   tr,td{
      padding: 10px;
        }
</style> 
<title>Edit Supplier</title>
</head>
<body>
<center>
<div>
<form:form action="editsupp"  method="post" commandName="supplier1">
<table>
<thead>
<tr>
<td><h3>Add Supplier</h3></td>
</tr>
</thead>
<tbody>
<tr>
<td><label>supplier Id</label></td>
<td><label>:</label></td>
<td><form:input class="form-control" type="text" path="suppid"  value="${supplierdata.suppid}" required="true"/></td>
</tr>
<tr>
<td><label>Supplier Name</label></td>
<td><label>:</label></td> 
<td><form:input class="form-control" type="text" path="suppname"  value="${supplierdata.suppname}" required="true"/><td>
<tr> 
<td><label>Supplier Phone</label></td>
<td><label>:</label></td>
<td><form:input class="form-control" type="text" path="suppphone"  value="${supplierdata.suppphone}" required="true"/></td>
</tr>
<tr>
<td><label>Supplier Address</label>
<td><label>:</label></td>  
<td><form:input class="form-control" type="text" path="suppaddress"  value="${supplierdata.suppaddress}" required="true"/></td>
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
</body>
</html>