<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/Header.jsp" %>
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
<title>Register here</title>
</head>
<body>
<br><br><br>
<center>
 <div>
   <form:form action="register" method="post" commandName="user">
     <table>
       <thead>
         <tr>
           <td><h1>Registration</h1></td>
         </tr>
       </thead>
       <tbody>
         <tr>                   
           <td><label>First Name</label></td>
           <td><label>:</label></td>
           <td><form:input class="form-control" type="text" placeholder="Enter Firstname" path="firstname" required="true"/></td>
          </tr>
         <tr>      
           <td><label>Last Name</label></td>
           <td><label>:</label></td>
           <td><form:input class="form-control" type="text" placeholder="Enter Lastname" path="lastname" required="true"/></td>
         </tr>
         <tr>                  
           <td><label>Phone Number</label></td>
           <td><label>:</label></td>
           <td><form:input class="form-control" type="text" placeholder="Enter Phone_no" path="phone" required="true" /></td>
         </tr>
         <tr>                      
           <td><label>Address</label></td>
           <td><label>:</label></td>
           <td><form:input class="form-control" type="text" placeholder="Enter Address" path="address" required="true"/></td>
         </tr>
         <tr>                      
           <td><label>E-mail id</label></td>
           <td><label>:</label></td>
           <td><form:input class="form-control" type="email" placeholder="Enter E-mail" path="email" required="true"/></td>
         </tr>
         <tr>
           <td><label>User Name</label></td>
           <td><label>:</label></td>
           <td><form:input class="form-control" type="text" placeholder="Enter Username" path="username" required="true"/></td>
         </tr>
         <tr>                 
           <td><label>Password</label></td>
           <td><label>:</label></td>
           <td><form:input class="form-control" type="password" placeholder="Enter password" path="password" required="true"/></td>
         </tr>
         <tr>
           <td colspan="2" align="center">
           <input class="btn btn-primary" value="Register" type="Submit" /></td>
           <td><input class="btn btn-default" type="reset" /></td>
         </tr>
       </tbody>
     </table>
   </form:form>
 </div>
</center>
<br><br><br>
<%@include file="/WEB-INF/views/footer.jsp" %>

</body>

</html>