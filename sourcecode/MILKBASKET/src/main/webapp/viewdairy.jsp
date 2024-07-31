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
    <div class="slider-item overlay" style="background-image: url('images/dairy_10.jpg');background-image:150px 800px;"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">View Dairy</h1>
            <p class="custom-breadcrumbs"><a href="admin.jsp">Home</a> <span class="mx-3">/</span> Admin</p>
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
				<th>Image</th>
				<th>Status</th>
				<th>Actions</th>
				
				
			</tr>
		</thead>
		<tbody>
		<%@include file="connect.jsp" %>
			<%
/* 			String s1=(String)session.getAttribute("email");
 */			try{
				PreparedStatement ps=con.prepareStatement("select * from dreg");
/* 				ps.setString(1,s1);
 */				rs=ps.executeQuery();
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
						<td><img src="dairyimage.jsp?id=<%=rs.getInt(1)%>" width="100" height="100"></td>
						
						<td><%=rs.getString(13) %></td>
						
						<%
							String status=rs.getString(13);
							String accept="accepted";
							String reject="rejected";
							if(status.equalsIgnoreCase(accept)){
								%>
								<td><a href="admindairydeleteprocess.jsp?id=<%=rs.getInt(1)%>" class="btn btn-danger" onclick="return confirm('Do You Want to Delete..?')">Delete</a></td>
								<%
							}else if(status.equals(reject)){
								%>
								<td><a href="admindairydeleteprocess.jsp?id=<%=rs.getInt(1)%>" class="btn btn-danger" onclick="return confirm('Do You Want to Delete..?')">Delete</a></td>
								<%
							}
							else{
								%>
 									<td><a href="admindairyacceptprocess.jsp?id=<%=rs.getInt(1)%>" class="btn btn-success mb-2" onclick="return confirm('Do You Want to Accept..?')">accept</a>
									<a href="admindairyrejectprocess.jsp?id=<%=rs.getInt(1)%>" class="btn btn-danger" onclick="return confirm('Do You Want to Reject..?')">reject</a></td>								
								<%
							}
							
						%>
						
					</tr>
					</tbody>
				<%
				}
				if(count==0){
					%>
					<tr>
					<td colspan="13">No Data Found</td>
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