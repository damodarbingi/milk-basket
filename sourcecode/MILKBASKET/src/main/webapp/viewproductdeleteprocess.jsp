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
PreparedStatement ps=con.prepareStatement("delete from vp where id=?");
ps.setInt(1,id);
int n=ps.executeUpdate();
if(n>0){
	%>
	<jsp:include page="dairyviewproduct.jsp"/>
	<%
}
else{
	%>
	<jsp:include page="dairyviewproduct.jsp"/>
	<%
}
}
catch(Exception e){
	e.printStackTrace();
};
%>
</body>
</html>