<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<%@include file="connect.jsp"%>
<%
	String title=request.getParameter("title");
	String descr=request.getParameter("descr");
	
	try{
	PreparedStatement ps=con.prepareStatement("insert into n(title,descr) values(?,?)");
	ps.setString(1,title);
	ps.setString(2,descr);
	int rows=ps.executeUpdate();
	if(rows>0){
		%>
		<script>alert("Notification Successfully Added")</script>
		<jsp:include page="adminaddnotificationpage.jsp"/>
		<%
	}
	else{
		%>
		<script>alert("Add Notification Unsuccessfully")</script>
		<jsp:include page="adminaddnotificationpage.jsp"/>
		<%
	}
	}
	catch(Exception e){
		e.printStackTrace();
	}
%>

</body>
</html>