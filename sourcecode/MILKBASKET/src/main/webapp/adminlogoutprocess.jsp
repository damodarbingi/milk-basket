<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<%
	session.invalidate();
	response.sendRedirect("admin.jsp");
%>

</body>
</html>