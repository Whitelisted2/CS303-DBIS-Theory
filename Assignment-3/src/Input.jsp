<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
		                "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log In Form</title>
</head>
<body>
<h1> Welcome to MPQMD Authenticator </h1>
<form action="LoginServlet" method="post">
    <table style="with: 50%">
        <tr>
            <td>User ID</td>
            <td><input type="text" name="input_id" required></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input id="input_pwd" name="input_pwd" 
                type="password" class="input" required></td>
        </tr>
    </table>
    <input type="submit" value="Submit"></form>
</body>
</html>
