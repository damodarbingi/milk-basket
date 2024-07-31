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
PreparedStatement ps=con.prepareStatement("delete from orders where id=?");
ps.setInt(1,id);
int n=ps.executeUpdate();
if(n>0){
	%>
	<script>alert("Sucessfully Deleted")</script>
	<jsp:include page="dairyviewcustomerorder.jsp"/>
	<%
}
else{
	%>
	<script>alert(" Delete Unsucessfull")</script>
	<jsp:include page="dairyviewcustomerorder.jsp"/>
	<%
}
}
catch(Exception e){
	e.printStackTrace();
};
%>
</body>
</html>