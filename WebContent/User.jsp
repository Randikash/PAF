<%@page import="com.UserService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/user.js"></script>

</head>
<body>

<div class="container"><div class="row"><div class="col-6">
<h1>User Management</h1>
<form id="formUser" name="formUser">
 User Full Name:
 <input id="name" name="name" type="text"
 class="form-control form-control-sm">
 <br> User Address:
 <input id="address" name="address" type="text"
 class="form-control form-control-sm">
 <br> Email:
 <input id="email" name="email" type="text"
 class="form-control form-control-sm">
 <br> phone Number:
 <input id="phone" name="phone" type="text"
 class="form-control form-control-sm">
 <br> Account Number:
 <input id="accountnumber" name="accountnumber" type="text"
 class="form-control form-control-sm">
 <br> Password:
 <input id="password" name="password" type="text"
 class="form-control form-control-sm">
 <br>
 <input id="btnSave" name="btnSave" type="button" value="Submit"
 class="btn btn-primary">
 <input type="hidden" id="hidUserIDSave"
 name="hidUserIDSave" value="">
 

</form>
<div id="alertSuccess" class="alert alert-success"></div>
<div id="alertError" class="alert alert-danger"></div>
<br>
<div id="divUsersGrid">
 <%
 UserService userObj = new UserService();
 out.print(userObj.readUserDetails());
 %>
 
</div>
</div> </div> </div>
<br><br>


</body>
</html>