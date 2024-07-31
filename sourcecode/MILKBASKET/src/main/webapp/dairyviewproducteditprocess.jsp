<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<%@include file="connect.jsp" %>
<%
	int id=Integer.parseInt(request.getParameter("id"));
	String email=request.getParameter("email");
	String dp=request.getParameter("dp");
	String milktype=request.getParameter("milktype");
	String qp=request.getParameter("qp");
	String storage=request.getParameter("storage");
	String mfg=request.getParameter("mfg");
	String exp=request.getParameter("exp");
	String contains=request.getParameter("contains");
	long cost=Long.parseLong(request.getParameter("cost"));
	int discount=Integer.parseInt(request.getParameter("discount"));
	String descr=request.getParameter("descr");
	try{
	PreparedStatement ps=con.prepareStatement("update vp set dp=?,milktype=?,qp=?,storage=?,mfg=?,exp=?,contains=?,cost=?,discount=?,descr=? where id=? and email=?");
	ps.setString(1,dp);
	ps.setString(2,milktype);
	ps.setString(3,qp);
	ps.setString(4,storage);
	ps.setString(5,mfg);
	ps.setString(6,exp);
	ps.setString(7,contains);
	ps.setLong(8,cost);
	ps.setInt(9,discount);
	ps.setString(10,descr);
	ps.setInt(11,id);
	ps.setString(12,email);
	int rows=ps.executeUpdate();
	if(rows>0){
		%>
		<script>alert("Succesfully Edited")</script>
		<jsp:include page="dairyviewproduct.jsp"/>
		<%
	}
	else{
		%>
		<script>alert("Edit Unsuccesful")</script>
		<jsp:include page="dairyviewproducteditprocess.jsp"/>
		<%
	
	}
	}
	catch(Exception e){
		e.printStackTrace();
	}
%>

</body>
</html>