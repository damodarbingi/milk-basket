<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<%@include file="connect.jsp" %>
	<%
	String email=request.getParameter("email");
	String pwd=request.getParameter("pass");
	
	try{
		PreparedStatement ps=con.prepareStatement("select * from adm where email=? and pass=?");
		ps.setString(1,email);
		ps.setString(2,pwd);
		rs=ps.executeQuery();
		
		if(rs.next()){
			session.setAttribute("adminemail", email);
			%>
			<script>alert("Successfully login")</script>
			<jsp:forward page="welcomeadmin.jsp"/>
			<%
		}
		else{
			%>
			<script>alert("login Unsuccessfull")</script>
			<jsp:include page="welcomeadmin.jsp"/>
			<%
		}
	}
	catch(Exception e){
		e.printStackTrace();
	}
	%>
</body>
</html>