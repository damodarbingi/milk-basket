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

		int pid=Integer.parseInt(request.getParameter("productid"));
	    String email=request.getParameter("email");
	    String cemail=request.getParameter("cemail");
	    String dp=request.getParameter("dp");
	    String milktype=request.getParameter("milktype");
	    String qp=request.getParameter("qp");
	    String storage=request.getParameter("storage");
	    String mfg=request.getParameter("mfg");
	    String exp=request.getParameter("exp");
	    String contains=request.getParameter("contains");
	    long cost=Long.parseLong(request.getParameter("cost"));
	    int quantity=Integer.parseInt(request.getParameter("quantity"));
	    int discount=Integer.parseInt(request.getParameter("discount"));
	    long totalcost=Long.parseLong(request.getParameter("totalcost"));
	    String descr=request.getParameter("descr");
	    
	try{
	
	PreparedStatement ps=con.prepareStatement("update cart set productid=?,email=?,cemail=?,dairyproduct=?,milktype=?,qualityofproduct=?,storage=?,mfg=?,exp=?,contains=?,cost=?,quantity=?,discount=?,totalcost=?,descr=? where id=?");
		ps.setInt(1,pid);
		ps.setString(2,email);
		ps.setString(3,cemail);
		ps.setString(4,dp);
		ps.setString(5,milktype);
		ps.setString(6,qp);
		ps.setString(7,storage);
		ps.setString(8,mfg);
		ps.setString(9,exp);
		ps.setString(10,contains);
		ps.setLong(11,cost);
		ps.setInt(12,quantity);
		ps.setInt(13,discount);
		ps.setLong(14,totalcost);
		ps.setString(15,descr);
		ps.setInt(16,id);

		int sss=ps.executeUpdate();
		if(sss>0){
			%>
			<script>alert("Updated Successfull...!")</script>
			<jsp:include page="customerviewcartprocess.jsp"/>
			<% 
		}
		else{
			%>
			<script>alert("Update Unsuccesfull")</script>
			<jsp:include page="customerviewcartupdate.jsp"/>
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