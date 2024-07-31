<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body>
<%@include file="adminheader.jsp" %>
<div class="inner-page">
    <div class="slider-item overlay" style="background-image: url('images/dairy_16.jpg');background-image:1550px 800px;"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">View contact</h1>
            <p class="custom-breadcrumbs"><a href="index.jsp">Home</a> <span class="mx-3">/</span> Admin</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <section class="m-5" >
	<table class="table table-bordered">
		<thead>
			<tr>
			    <th>IDNO</th>
				<th>Name</th>
				<th>Mobile Number</th>
				<th>Email</th>
				<th>Message</th>
				<th>Date And Time</th>
			</tr>
		</thead>
		<tbody>
		<%@include file="connect.jsp" %>
			<%
/* 			String s1=(String)session.getAttribute("email");
 */			try{
				PreparedStatement ps=con.prepareStatement("select * from con");
/* 				ps.setString(1,s1);
 */				rs=ps.executeQuery();
				int count=0;
				while(rs.next()){
					count++;
					%>
					<tr>
						<td><%=rs.getInt(1)%></td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getLong(3)%></td>
						<td><%=rs.getString(4)%></td>
						<td><%=rs.getString(5)%></td>
						<td><%=rs.getString(6)%></td>
					</tr>
					</tbody>
				<%
				}
				if(count==0){
					%>
					<tr>
					<td colspan="6">No Data Found</td>
					</tr>
					<%	
				}
				}catch(Exception e){
					e.printStackTrace();
				}
			
				%>
			
	</table>
	</section>
	
	<%@include file="footer.jsp" %>
	<%@include file="script.jsp" %>
</body>
</html>