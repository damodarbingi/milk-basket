<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp"%>
</head>
<body>
<%@include file="customerheader.jsp"%>
 <div class="slider-item overlay" style="background-image: url('images/productlist.jpg');"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">View Product List</h1>
            <p class="custom-breadcrumbs"><a href="welcomecustomer.jsp">Home</a> <span class="mx-3">/</span>Dairy</p>
          </div>
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
					<th>Dairy Product</th>
					<th>Product Id</th>
					<th>Type Of Product</th>
					<th>Quality</th>
					<th>Storage</th>
					<th>Manufacture Date</th>
					<th>Expiry Date</th>
					<th>Cost</th>
					<th>Quantity</th>
					<th>Total Cost</th>
					<th>Order Id</th>
				</tr>
			</thead>
			<tbody>
			<%@include file="connect.jsp"%>
			<%/* 
			String demail=request.getParameter("demail");
		 */	int id=Integer.parseInt(request.getParameter("orderid"));
			
 			try{
				PreparedStatement ps=con.prepareStatement("select * from orderlist where orderid=?");
 				ps.setInt(1,id);
 				rs=ps.executeQuery();
				int count=0;
				while(rs.next()){
					count++;
					%>
					<tr>
						<td><%=rs.getInt(1)%></td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><%=rs.getString(4)%></td>
						<td><%=rs.getInt(5)%></td>
						<td><%=rs.getString(6)%></td>
						<td><%=rs.getString(7)%></td>
						<td><%=rs.getString(8)%></td>
						<td><%=rs.getDate(9)%></td>
						<td><%=rs.getDate(10)%></td>
						<td><%=rs.getLong(11)%></td>
						<td><%=rs.getInt(12)%></td>
						<td><%=rs.getLong(13)%></td>
						<td><%=rs.getInt(14)%></td>
					</tr>
					</tbody>
				<%
				}
				if(count==0){
					%>
					<tr>
					<td colspan="14">No Data Found</td>
					</tr>
					<%	
				}
				}catch(Exception e){
					e.printStackTrace();
				}
			
				%>
			
		</table>
	</section>
	

<%@include file="footer.jsp"%>
<%@include file="script.jsp"%>
</body>
</html>