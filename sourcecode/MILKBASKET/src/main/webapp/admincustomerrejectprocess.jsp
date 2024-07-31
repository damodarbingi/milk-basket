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
String reject="reject";
try{
	PreparedStatement ps=con.prepareStatement("update reg set statuss=? where id=?");
	ps.setString(1,reject);
	ps.setInt(2,id);
	int rows=ps.executeUpdate();
	if(rows>0){
		%>
		<script>alert("Rejected Successfully.")</script>
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