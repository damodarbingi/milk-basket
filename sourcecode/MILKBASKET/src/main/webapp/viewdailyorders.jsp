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
    <div class="slider-item overlay" style="background-image: url('images/dairy_15.jpg');background-size:1600px 800px;"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">Daily Needs</h1>
            <p class="custom-breadcrumbs"><a href="welcomecustomer.jsp">Home</a> <span class="mx-3">/</span>Customer</p>
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
  				<th>Dairy Name</th>
  				<th>Dairy Email</th>
  				<th>Milk Type</th>
  				<th>Milk Grade</th>
  				<th>From Date</th>
  				<th>To Date</th>
  				<th>Cost</th>
  				<th>Total Days</th>
  				<th>Total Cost</th>
  			</tr>
  		</thead>
  		<Tbody>
  			<%@include file="connect.jsp"%>
  			<%
  				String cemail=(String)session.getAttribute("cemail");
  				try{
  					PreparedStatement ps=con.prepareStatement("select * from dailyneeds where cemail=?");
  					ps.setString(1,cemail);
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
  							<td><%=rs.getString(5)%></td>
  							<td><%=rs.getString(6)%></td>
  							<td><%=rs.getDate(7)%></td>
  							<td><%=rs.getDate(8)%></td>
  							<td><%=rs.getLong(9)%></td>
  							<td><%=rs.getLong(10)%></td>
  							<td><%=rs.getLong(11)%></td>
  						</tr>
  						</Tbody>
  					<%
  					}
  					if(count==0){
  						%>
  							<tr>
  								<td colspan="11">No Data Found</td>
  							</tr>
  							
  						<%
  					}
  					
  					
  				}
  				catch(Exception e){
  					e.printStackTrace();
  				}
  			%>
  		
  	</table>
  </section>


<%@include file="footer.jsp"%>
<%@include file="script.jsp"%>
</body>
</html>