<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<%@include file="connect.jsp"%>
<%
	String cemail=request.getParameter("cemail");
	String dairy=request.getParameter("dairyname");
	
	String[] dairydetails=dairy.split(",");
		String dname=dairydetails[0];
		String demail=dairydetails[1];
	String milktype=request.getParameter("milktype");
	String grade=request.getParameter("grade");
	String temp1=request.getParameter("fromdate");
	
	String temp2=request.getParameter("todate");
	
	long cost=Long.parseLong(request.getParameter("cost"));
	int totaldays=Integer.parseInt(request.getParameter("totaldays"));
	long totalcost=Long.parseLong(request.getParameter("totalcost"));
	Date fromdate=Date.valueOf(temp1);
	Date todate=Date.valueOf(temp2);
	try{
	PreparedStatement ps=con.prepareStatement("insert into dailyneeds(cemail,dairy,dairyemail,milktype,grade,fromdate,todate,cost,totaldays,totalcost)values(?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1,cemail);
	ps.setString(2,dname);
	ps.setString(3,demail);
	ps.setString(4,milktype);
	ps.setString(5,grade);
	ps.setDate(6,fromdate);
	ps.setDate(7,todate);
	ps.setLong(8,cost);
	ps.setInt(9,totaldays);
	ps.setLong(10,totalcost);
	int rows=ps.executeUpdate();
	if(rows>0){
		%>
			<script>alert("Successfully Orderd")</script>
			<jsp:include page="dailyneedspage.jsp"/>
		<%
	}
	else{
		%>
			<script>alert("Order Unsucessfull")</script>
			<jsp:include page="dailyneedspage.jsp"/>
		<%
	}
	}
	catch(Exception e){
		e.printStackTrace();	
	}
%>

</body>
</html>