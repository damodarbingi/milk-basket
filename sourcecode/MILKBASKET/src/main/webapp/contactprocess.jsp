<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<%@include file="connect.jsp"%>
<%
	String name=request.getParameter("name");
	long phone=Long.parseLong(request.getParameter("phone"));
	String mail=request.getParameter("mail");
	String wm=request.getParameter("wm");
	try{
		PreparedStatement ps=con.prepareStatement("insert into con(name,phone,mail,wm) values(?,?,?,?)");
		ps.setString(1,name);
		ps.setLong(2,phone);
		ps.setString(3,mail);
		ps.setString(4,wm);
		
		int rows=ps.executeUpdate();
		if(rows>0){
			%>
			<script>alert("Message Sent Succesfully")</script>
			<jsp:include page="contact.jsp"/>
			<%
			
		}
		else{
			%>
			<script>alert("Message Sent Unsuccesfull")</script>
			<jsp:include page="contact.jsp"/>
			<%
		}
	}
	catch(Exception e){
		e.printStackTrace();
	}
%>

</body>
</html>