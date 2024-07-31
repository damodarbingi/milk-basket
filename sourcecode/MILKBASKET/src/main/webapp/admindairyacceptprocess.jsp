<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.io.*,java.util.*,com.oreilly.servlet.*"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<%@include file="connect.jsp" %>
<%
int id=Integer.parseInt(request.getParameter("id"));
String accept="accepted";
try{
	PreparedStatement ps=con.prepareStatement("update dreg set statuss=? where id=?");
	ps.setString(1,accept);
	ps.setInt(2,id);
	int rows=ps.executeUpdate();
	if(rows>0){
		%>
		<script>alert("Dairy Accepted")</script>
		<jsp:include page="viewdairy.jsp"/>
		<%
	}
	else{
		%>
		<script>alert("On hold")</script>
		<jsp:include page="viewdairy.jsp"/>
		<%
	}
}
catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</html>