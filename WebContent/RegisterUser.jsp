<%@page import="model.UserService" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/main.js"></script>
</head>
<body>

<%
//Insert User Data----------------------------------
if (request.getParameter("name") != null)
{
	UserService userObj = new UserService();
String stsMsg = userObj.insertUser(request.getParameter("name"),


request.getParameter("address"),
request.getParameter("email"),
request.getParameter("phone"),
request.getParameter("accountnumber"),
request.getParameter("password"));
session.setAttribute("statusMsg", stsMsg);
}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Management</title>
</head>

<body>


<form method="post" action="RegisterUser.jsp">

User Full Name: <input name="name" type="text"><br><br>
User Address: <input name="address" type="text"><br><br>
Email: <input name="email" type="email"><br><br>
Contact Number: <input name="phone" type="text"><br><br>
Account No: <input name="accountnumber" type="text"><br><br>
Password: <input name="passwod" type="password"><br><br>



<input name="btnSubmit" type="submit" value="Register"><br><br>
</form>

<%
out.print(session.getAttribute("statusMsg"));
%>

<br>

</body>
</html>