<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp"%>
</head>
<body>
<%@include file="customerheader.jsp"%>
 <div class="slider-item overlay" style="background-image: url('images/myorders_1.jpg');"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">My Orders</h1>
            <p class="custom-breadcrumbs"><a href="welcomecustomer.jsp">Home</a> <span class="mx-3">/</span>Customer</p>
          </div>
        </div>
      </div>
    </div>
  
   
	<section class="m-5">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Sno</th>
					<th>Customer Email</th>
					<th>Dairy Email</th>
					<th>Total Quantity</th>
					<th>Cost</th>
					<th>Total Cost</th>
					<th>Address</th>
					<th>Delivery Date</th>
					<th>Order Time</th>
					<th>Product List</th>
					<th>Status</th>
 					
				</tr>
			</thead>
			<tbody>
			<%@include file="connect.jsp"%>
			<%
			String s1=(String)session.getAttribute("cemail");
 		try{
				PreparedStatement ps=con.prepareStatement("select * from orders where cemail=?");
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
						<td><%=rs.getInt(4)%></td>
						<td><%=rs.getLong(5)%></td>
						<td><%=rs.getLong(6)%></td>
						<td><%=rs.getString(7)%></td>
						<td><%=rs.getDate(8)%></td>
						<td><%=rs.getString(9)%></td>
						<td><a href="viewproductlist.jsp?orderid=<%=rs.getInt(1)%>" >View Product List</a></td>
						<%
							String status=rs.getString(11);
							String accept="Accepted";
							String reject="Rejected";
							String cancel="cancelled";
						if(status.equalsIgnoreCase(accept)){
							%>
							 	<td><%=rs.getString(11)%></td>
							<%
						}
						else if(status.equalsIgnoreCase(reject)){
							%>
								<td><%=rs.getString(11)%></td>
							<%
						}
						else if(status.equalsIgnoreCase(cancel)){
							%>
								<td><%=rs.getString(11)%></td>
							<%
						}
						else{
							%>
							<td><a href="customerordercancelform.jsp?id=<%=rs.getInt(1)%>" class="btn btn-danger" onclick="return confirm('Do Yo Want to Cancel.?')">Cancel</a></td>
							</tr>
							
							<%
						}
				
				}
				if(count==0){
					%>
					<tr>
					<td colspan="9">No Data Found</td>
					</tr>
					<%	
				}
				}catch(Exception e){
					e.printStackTrace();
				}
			
				%>
			</tbody>
		</table>
	</section>
	

<%@include file="footer.jsp"%>
<%@include file="script.jsp"%>
</body>
</html>