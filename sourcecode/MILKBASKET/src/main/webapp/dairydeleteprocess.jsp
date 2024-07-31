<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<%@include file="connect.jsp" %>
<%
	int id=Integer.parseInt(request.getParameter("id"));
//String email=request.getParameter("email");
try{
PreparedStatement ps=con.prepareStatement("delete from dreg where id=?");
ps.setInt(1,id);
int n=ps.executeUpdate();
if(n>0){
	session.invalidate();
	response.sendRedirect("dairypage.jsp");
}
else{
	%>
	<script>alert("Delete Unsuccessfull")</script>
	<jsp:include page="dairypage.jsp"/>
	<%
}
}
catch(Exception e){
	e.printStackTrace();
};
%>
</body>
</html>