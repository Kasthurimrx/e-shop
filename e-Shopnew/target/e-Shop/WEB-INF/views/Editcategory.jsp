<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@include file="/WEB-INF/views/CommonHeader.jsp" %>
<!-- <%@include file="/WEB-INF/views/footer.jsp" %>-->
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
<title>category</title>
</head>
<body>
<center>
<div>
<form:form action="editcat" method="post" commandName="category1">
<table>
<thead>
<tr>
<td><h3>Add Category</h3></td>
</tr>
</thead>
<tbody>
<tr>
<td><label>Category Id</label>
<td><label>:</label></td>
<td><form:input class="form-control" type="text" path="catid" value="${categorydata.catid}" required="true"/></td>
</tr>
<tr>
<td><label>Category Name</label></td>
<td><label>:</label></td> 
<td><form:input class="form-control" type="text" path="catname" value="${categorydata.catname}" required="true"/></td>
</tr>
<tr>  
<tr>
<td><label>Category Description</label></td>
<td><label>:</label></td>
<td><form:input class="form-control" type="text" path="catdes" value="${categorydata.catdes}" required="true"/></td>
</tr>
<tr>
<td colspan="2" align="center">
<input class="btn btn-primary" type="submit" value="Enter"/></td>
</tr>
</tbody>
</table>
</form:form>
</div>
</center>
</body>
</html>