<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
</head>
<body>
<center>
<h2>Login Page</h2>
<form:form action="Main" method="POST" commandName="user">
	<table>
	
			<td>User Name :</td>
			<td><form:input path="name" /></td>
		</tr>
        
			<td>Password :</td>
			<td><form:password path="password" /></td>
		</tr>
        
			<td colspan="2"><input type="submit" class="btn btn-success" value="Login"></td>
		</tr>
	</table>
</form:form>

</center>
</body>
</html>
