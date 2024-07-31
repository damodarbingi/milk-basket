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
    <div class="slider-item overlay" style="background-image: url('images/dairy_12.jpg');background-image:1550px 800px;"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">View Reviews</h1>
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
  				<th>Dairy Email</th>
  				<th>Rating</th>
  				<th>Date & Time</th>
  			</tr>
  		</thead>
  		<tbody>
  		<%@include file="connect.jsp" %>
  			<%
  			String email=request.getParameter("email");
  			try{
  				
  				PreparedStatement ps=con.prepareStatement("select * from rew where demail=?");
  				ps.setString(1,email);
  				int count=0;
  			    rs=ps.executeQuery();
  			    while(rs.next()){
  			    count++;
  			%>
  			<tr>
  				<td><%=rs.getInt(1)%></td>
  				<td><%=rs.getString(2)%></td>
  				<td><%=rs.getString(3)%></td>
  				<td><%=rs.getString(4) %></td>
  				<td><%=rs.getString(5)%></td>
  			</tr>
  		
  			<%
  			    }
				if(count==0){
					%>
					<tr>
					<td colspan="5">No Data Found</td>
					</tr>
					<%	
				}
				}
  			catch(Exception e){
					e.printStackTrace();
				}
			
				%>
			
  		</tbody>
  	</table>
  	 <a href="customerviewcartaddreview.jsp?email=<%=email%>"class="btn btn-primary">+ Add reviews</a>
  	
  </section>

<%@include file="footer.jsp"%>
<%@include file="script.jsp"%>

</body>
</html>