<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 
String email = request.getParameter("email");
String password = request.getParameter("password");
String confirmPassword = request.getParameter("confirmPassword");
if(password.equals(confirmPassword)) {
/* 	response.sendRedirect("welcome.jsp");
 */	
	request.getRequestDispatcher("welcome.jsp").forward(request, response);
} else {
/* 	response.sendRedirect("register.jsp");
 */}

out.print("Incorrect password");
request.getRequestDispatcher("register.jsp").include(request, response);

%>


</body>
</html>