<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body>
<%@include file="customerheader.jsp" %>
<div class="inner-page">
    <div class="slider-item overlay" style="background-image: url('images/profile_1.jpg');"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">Customer Profile</h1>
            <p class="custom-breadcrumbs"><a href="welcomecustomer.jsp">Home</a> <span class="mx-3">/</span>Customer</p>
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
				<th>First Name</th>
				<th>Last name</th>
				<th>Date Of Birth</th>
				<th>Mobile Number</th>
				<th>Address</th>
				<th>City</th>
				<th>Pincode</th>
				<th>Email</th>
				<th>Actions</th>
				
			</tr>
		</thead>
		<tbody>
		<%@include file="connect.jsp" %>
			<%
			String s1=(String)session.getAttribute("cemail");
			try{
				
				PreparedStatement ps=con.prepareStatement("select * from reg where email=?");
				ps.setString(1,s1);
				rs=ps.executeQuery();
				int count=0;
				while(rs.next()){
					count++;
					%>
					<tr>
						<td><%=rs.getInt(1)%></td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><%=rs.getDate(4)%></td>
						<td><%=rs.getLong(5)%></td>
						<td><%=rs.getString(6)%></td>
						<td><%=rs.getString(7)%></td>
						<td><%=rs.getLong(8)%></td>
						<td><%=rs.getString(9)%></td>
						<td><a href="customerdeleteprocess.jsp?id=<%=rs.getInt(1)%>" class="btn btn-danger" onclick="return confirm('Do You Want To delete..?')">Delete</a>
						<a href="customerupdatepage.jsp?id=<%=rs.getInt(1)%>" class="btn btn-success" onclick="return confirm('Do You Want To Update..?')">Update</a></td>
					</tr>
					</tbody>
				<%
				}
				if(count==0){
					%>
					<tr>
					<td colspan="10">No Data Found</td>
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