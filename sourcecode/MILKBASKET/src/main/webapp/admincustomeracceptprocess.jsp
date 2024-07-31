<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.io.*,java.util.*,com.oreilly.servlet.*"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("id"));
String accept="accepted";
%>
<%@include file="connect.jsp" %>
<%
try{
	PreparedStatement ps=con.prepareStatement("update reg set statuss=? where id=?");
	ps.setString(1,accept);
	ps.setInt(2,id);
	int rows=ps.executeUpdate();
	if(rows>0){
		%>
		<script>alert("Accepted Successfully.")</script>
		
		<jsp:include page="viewcustomers.jsp"/>
		<%
	}
	else{
		%>
		<script>alert("Something Went Wrong.")</script>
		<jsp:include page="viewcustomers.jsp"/>
		<%
	}
}
catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</html>