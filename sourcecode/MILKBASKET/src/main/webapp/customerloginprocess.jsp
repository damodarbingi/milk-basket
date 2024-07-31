<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.* , java.io.* , java.util.*,com.oreilly.servlet.*"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<%@include file="connect.jsp" %>
	<%
	String s1=request.getParameter("cemail");
	String s2=request.getParameter("pass");
	
	
	String accept="accepted";
	String reject="reject";
	try{
		PreparedStatement ps=con.prepareStatement("select * from reg where email=? and pass=?");
		ps.setString(1,s1);
		ps.setString(2,s2);
		rs=ps.executeQuery();
		if(rs.next()){
			String status=rs.getString(13);
			if(status.equals(accept)){
				session.setAttribute("cemail",s1);
				%>
				<script>alert("Login Successfull.")</script>
				<jsp:include page="welcomecustomer.jsp"/>
				<%
			}
		else if(status.equals(reject)){
			%>
			<script>alert("Your Account Was Rejected")</script>
			<jsp:include page="customer.jsp"/>
			<%
		}
		else{
			%>
			<script>alert("Your Account Is On Hold")</script>
			<jsp:include page="customer.jsp"/>
			<%
			}
	}
		else{
			%>
			<script>alert("You Have Entered Wrong Email or Password.Please Try Again.")</script>
			<jsp:include page="customer.jsp"/>
			<%
		}
	}
	catch(Exception e){
		e.printStackTrace();
	}
	%>
</body>
</html>