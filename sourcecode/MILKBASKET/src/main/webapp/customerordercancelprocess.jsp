<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<%@include file="connect.jsp"%>
<%
	int id=Integer.parseInt(request.getParameter("id"));
	String reason=request.getParameter("reason");
	String status="cancelled";
	PreparedStatement ps=con.prepareStatement("update orders set reason=?,status=? where id=?");
	ps.setString(1,reason);
	ps.setString(2,status);
	ps.setInt(3,id);
	int rows=ps.executeUpdate();
	if(rows>0){
		%>
			<script>alert("Order Cancelled")</script>
			<jsp:include page="myorders.jsp"/>
		<%
	}
	else{
		%>
			<script>alert("Order Not Cancelled")</script>
			<jsp:include page="myorders.jsp"/>
		<%
	}
	
%>

</body>
</html>