<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.* , java.io.* , java.util.*,com.oreilly.servlet.*"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<%@include file="connect.jsp" %>
	<%
	String email=request.getParameter("email");
	String s2=request.getParameter("pass");
	
	String accept="accepted";
	String reject="reject";
	try{
		PreparedStatement ps=con.prepareStatement("select * from dreg where email=? and pass=?");
		ps.setString(1,email);
		ps.setString(2,s2);
		rs=ps.executeQuery();
		
		if(rs.next()){
			
			String status=rs.getString(13);
			if(status.equals(accept)){
				session.setAttribute("demail", email);
				%>
				
				<script>alert("Login Sucessfull.")</script>
				<jsp:include page="welcomedairy.jsp"/>
				<%
			}
		    else if(status.equals(reject)){
			%>
			<script>alert("Your Account Was Rejected")</script>
			<jsp:include page="dairypage.jsp"/>
			<%
		}
		    else{
			%>
			<script>alert("Your Account Is On Hold.Please Wait Until Admin Response.")</script>
			<jsp:include page="dairypage.jsp"/>
			<%
			}
	    }
		    else{
			%>
			<script>alert("You Have Entered Incorrect Email or Password.Please Try Again.")</script>
			<jsp:include page="dairypage.jsp"/>
			<%
		}
	}
	catch(Exception e){
		e.printStackTrace();
	}
	%>
</body>
</html>