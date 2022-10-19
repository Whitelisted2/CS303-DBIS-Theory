<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logged in</title>
</head>
<body>
 <%
 response.setContentType("text/html");  
 if(session!=null){  
 String name = (String)session.getAttribute("userid");  
 out.print("Hello, "+name+" ! You Are Logged In.");
 }
 else
 {  
     out.print("Please login first");  
     request.getRequestDispatcher("login.html").include(request, response);  
 }  
 out.close();
 %>
</body>
</html>
