<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
tr,td{
   padding: 10px;
     }
</style>   
<title>Editing</title>
</head>
<body>
<center>
<div>
<form:form action="updateuser" method="post" commandName="user1">
<table>
<thead>
<tr>
<td><h1>Register here</h1></td>
<tr>
</thead>
<tbody>
<tr>
<td><form:errors path="firstname"></form:errors></td>
<td><label>First Name</label></td>
<td><label>:</label></td>
<td><form:input type="text" placeholder="Enter Firstname" path="firstname" value="${userdata.firstname}" required="true"/></td>
</tr>
<tr>  
<td><form:errors path="lastname"></form:errors></td>
<td><label>Last name</label></td>
<td><label>:</label></td>
<td><form:input type="text" placeholder="Enter Lastname" path="lastname" value="${userdata.lastname}" required="true"/></td>
</tr>
<tr>
<td><form:errors path="phone"></form:errors></td>
<td><label>Phone number</label></td>
<td><label>:</label></td>
<td><form:input type="text" placeholder="Enter Phone_no" path="phone" value="${userdata.phone}" required="true"/></td>
</tr>
<tr>
<td><form:errors path="address"></form:errors></td>
<td><label>Address</label></td>
<td><label>:</label></td>
<td><form:input type="text" placeholder="Enter Address" path="address" value="${userdata.address}" required="true"/></td>
</tr>
<tr>
<td><form:errors path="email"></form:errors></td>
<td><label>E-mail id</label></td>
<td><label>:</label></td>
<td><form:input type="email" placeholder="Enter E-mail" path="email" value="${userdata.email}" required="true"/></td>
</tr>
<tr>
<td><form:errors path="username"></form:errors></td>
<td><label>User Name</label></td>
<td><label>:</label></td>
<td><form:input type="text" placeholder="Enter Username" path="username" value="${userdata.username}" required="true"/></td>
</tr>
<tr>
<td><form:errors path="password"></form:errors></td>
<td><label>Password</label></td>
<td><label>:</label></td>
<td><form:input type="password" placeholder="Enter password" path="password" value="${userdata.password}" required="true"/></td>
</tr>
<tr>
<td colspan="2" align="center">
<input class="btn btn-primary" value="Register" type="Submit" /></td>
</tr>
</tbody>
</table> 
</form:form>
</div>
</center>


</body>
</html>