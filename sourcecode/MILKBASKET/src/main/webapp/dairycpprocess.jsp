<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,com.oreilly.servlet.*,java.util.*,java.io.*,java.sql.Date"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<%@include file="connect.jsp" %>
<%
	String s1=request.getParameter("email");
	String s2=request.getParameter("pass");
	String s3=request.getParameter("npass");
	try{
		PreparedStatement ps=con.prepareStatement("select * from dreg where email=? and pass=?");
		ps.setString(1,s1);
		ps.setString(2,s3);
		rs=ps.executeQuery();
		int rows=0;
		while(rs.next())
		{
			rows++;
			
		}
		if(rows>0)
		{
			%>
			<script>alert("Old Password And New Password Are Same So Change The New Password")</script>
			<jsp:include page="dairycppage.jsp"/>
			<%
		}
		else if(rows==0)
		{
			try {
			
			PreparedStatement pss=con.prepareStatement("update dreg set pass=? where email=? and pass=?");
			pss.setString(1,s3);
			pss.setString(2,s1);
			pss.setString(3,s2);
			int rss=pss.executeUpdate();
			if(rss>0){
				%>
				<script>alert("Successfully Changed Password.")</script>
				<jsp:include page="dairypage.jsp"/>
				<%
			}
			else{
			%>
			<script>alert("You Have Enterd Wrong Password.Please Try Again.")</script>
			<jsp:include page="dairycppage.jsp"/>
			<%
			}
			
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		else{
			%>
			<script>alert("Something Went Wrong.Please Try Again.")</script>
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