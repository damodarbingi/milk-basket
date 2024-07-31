<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp"%>
</head>
<body>
<%@include file="customerheader.jsp"%>
<div class="inner-page">
    <div class="slider-item overlay" style="background-image: url('images/dairy_15.jpg');background-image:1550px 800px;"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">View Cart</h1>
            <p class="custom-breadcrumbs"><a href="welcomecustomer.jsp">Home</a> <span class="mx-3">/</span>Customer</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <%@include file="connect.jsp"%>
  <section class="m-5">
  	<table class="table table-bordered table-responsive">
  		<thead>
  			<tr>
  				<th>Cart Id</th>
  				<th>Product Id</th>
  				<th>Email</th>
  				<th>Customer Email</th>
  				<th>Dairy Product</th>
  				<th>Type</th>
  				<th>Quality Of Product</th>
  				<th>Storage</th>
  				<th>MAnufacture date</th>
  				<th>Expiry Date</th>
  				<th>Contains</th>
  				<th>Cost</th>
  				<th>Quantity</th>
  				<th>Discount</th>
  				<th>Total Cost</th>
  				<th>Description</th>
  				<th>Actions</th>
  			</tr>
  		</thead>
  		<tbody>
  
  <%
    long cost=0;
	int quantity=0;
	long totalcost=0;
  	String email=(String)session.getAttribute("cemail");
  	PreparedStatement ps=con.prepareStatement("select * from cart where cemail=?");
  	ps.setString(1,email);
  	rs=ps.executeQuery();
  	int count=0;
  	while(rs.next()){
  		count++;
  		
  		cost+=rs.getLong(12);
  		quantity+=rs.getInt(13);
  		totalcost+=rs.getLong(15);
  		%>
  		<tr>
  			<td><%=rs.getInt(1) %></td>
  			<td><%=rs.getInt(2) %></td>
  			<td><%=rs.getString(3) %></td>
  			<td><%=rs.getString(4) %></td>
  			<td><%=rs.getString(5) %></td>
  			<td><%=rs.getString(6) %></td>
  			<td><%=rs.getString(7) %></td>
  			<td><%=rs.getString(8) %></td>
  			<td><%=rs.getDate(9) %></td>
  			<td><%=rs.getDate(10) %></td>
  			<td><%=rs.getString(11) %></td>
  			<td><%=rs.getLong(12) %></td>
  			<td><%=rs.getInt(13) %></td>
  			<td><%=rs.getInt(14) %></td>
  			<td><%=rs.getLong(15) %></td>
  			<td><%=rs.getString(16) %></td>
  			<td><a href="customerviewcartupdate.jsp?id=<%=rs.getInt(1)%>" onclick="return confirm('Do You Want To Update ?')" class="btn btn-success mb-3">Update</a>
  			<a href="customerviewcartdeleteprocess.jsp?id=<%=rs.getInt(1)%>" onclick="return confirm('Do You Want To Delete ?')" class="btn btn-danger">Delete</a></td>

  		</tr>
  		
  		<%
  		
  	}
  	
  %>
  <tfoot>
   <td colspan="11" class="text-center">TOTAL</td>
  <td><%=cost%></td>
  <td><%=quantity%></td>
  <td></td>
  <td><%=totalcost%></td>
  <td></td>
  <td><a href="checkoutpage.jsp?cost=<%=cost %>&quantity=<%=quantity %>&totalcost=<%=totalcost %>" class="btn btn-info">Check Out</a></td>
  
  </tfoot>
  </tbody>
  
  <%
  if(count==0){
  			%>
  				<tr>
  					<td colspan="17">No Data Found</td>
  				</tr>
  			<%
  		}
  		%>
 
  </table>
  </section>
 
  <%@include file="footer.jsp"%>
  <%@include file="script.jsp"%>
</body>
</html>