<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,com.oreilly.servlet.*,java.util.*,java.io.*,java.sql.Date"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<%@include file="connect.jsp" %>
	<%
	
		
		int id=Integer.parseInt(request.getParameter("id"));
	    String fname=request.getParameter("fname");
	    String lname=request.getParameter("lname");
	    String date=request.getParameter("dob");
	   
	    long phone=Long.parseLong(request.getParameter("phone"));
	    String address=request.getParameter("address");
	    String city=request.getParameter("city");
	    long pcode=Long.parseLong(request.getParameter("pcode"));
	    String email=request.getParameter("email");
	    Date dob=Date.valueOf(date) ;
	try{
	
	PreparedStatement ps=con.prepareStatement("update dreg set fname=?,lname=?,dob=?,phone=?,address=?,city=?,pcode=? where email=? and  id=?");
		ps.setString(1,fname);
		ps.setString(2,lname);
		ps.setDate(3,dob);
		ps.setLong(4,phone);
		ps.setString(5,address);
		ps.setString(6,city);
		ps.setLong(7,pcode);
		ps.setString(8,email);
		ps.setInt(9,id);
		int sss=ps.executeUpdate();
		if(sss>0){
			%>
			<script>alert("Updated Successfull...!")</script>
			<jsp:include page="dairyprofileprocess.jsp"/>
			<% 
		}
		else{
			%>
			<script>alert("Update Unsuccesfull")</script>
			<jsp:include page="dairyprofileprocess.jsp"/>
			<%
		}
	
	}
	catch(Exception e)
	{
	e.printStackTrace();
	}
	
	%>
</body>
</html>