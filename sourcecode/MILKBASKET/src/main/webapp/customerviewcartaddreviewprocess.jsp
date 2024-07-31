<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<%@include file="connect.jsp"%>
<%
	
	try{
		String cemail=request.getParameter("cemail");
		String demail=request.getParameter("demail");
		String review=request.getParameter("review");
		String rating=request.getParameter("rating");
		PreparedStatement ps= con.prepareStatement("insert into rew(cemail,demail,review,rating) values(?,?,?,?)");
		ps.setString(1,cemail);
		ps.setString(2,demail);
		ps.setString(3,review);
		ps.setString(4,rating);
		int rows=ps.executeUpdate();
		if(rows>0){
			%>
			<script>alert("Review Added Successfull")</script>
			<jsp:include page="customerdairyviewreviews.jsp">
			<jsp:param name="email" value="<%=demail%>" />
			</jsp:include>
			<%
		}
		else{
			%>
			<script>alert("Something Went Wrong.Please Try Again.")</script>
			<jsp:include page="customerviewcartaddreview.jsp"/>
			<%
		}
	}
	catch(Exception e){
		e.printStackTrace();
	}
%>

</body>
</html>