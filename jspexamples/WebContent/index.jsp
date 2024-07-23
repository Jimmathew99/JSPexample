<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> Hello </h1>
<h2 <% out.println("Hello");%>></h2>
<h1><%="Hello" %></h1>
<%! int x=10;  %>
<%out.println(x*x); %>
<%=x*x %>
<h2><% out.println("Hello");%></h2 %>

</body>
</html>