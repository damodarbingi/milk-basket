<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<%@include file="connect.jsp"%>
<%
	int orderid=Integer.parseInt(request.getParameter("orderid"));
	String reject="Rejected";
	PreparedStatement ps=con.prepareStatement("update orders set status=? where id=?");
	ps.setString(1,reject);
	ps.setInt(2,orderid);
	int rows=ps.executeUpdate();
	if(rows>0){
		%>
			<script>alert("Rejected")</script>
			<jsp:include page="dairyviewcustomerorder.jsp"/>
		<%
	}
	else{
		%>
			
			<script>alert("Pending")</script>
			<jsp:include page="dairyviewcustomerorder.jsp"/>
		<%
	}
%>

</body>
</html>