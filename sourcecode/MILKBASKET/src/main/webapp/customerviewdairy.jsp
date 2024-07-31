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
    <div class="slider-item overlay" style="background-image: url('images/farm_1.jpg');background-image:1550px 800px;"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">View Dairy</h1>
            <p class="custom-breadcrumbs"><a href="welcomecustomer.jsp">Home</a> <span class="mx-3">/</span>Customer</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="section">
    <div class="container">
      <div class="row">
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
					    <div class="clog-md-6 col-lg-4">
                        <div class="media d-block media-custom text-center">
                        <img class="m-5" width="300px" height="300px" src="dairyimage.jsp?id=<%=rs.getInt(1)%>">
						<h1><a><%=rs.getString(2)%>  <%=rs.getString(3)%></a></h1>
						<a><span>Date Of Birth : </span><%=rs.getDate(4)%></a>
						<a><span>Mobile Number : </span><%=rs.getLong(5)%></a>
						<a><span>Address : </span><%=rs.getString(6)%></a>
						<a><span>City : </span><%=rs.getString(7)%></a>
						<a><span>Pincode : </span><%=rs.getLong(8)%></a>
						<a><span>Email : </span><%=rs.getString(9)%></a>
						<a href="customerdairyviewproducts.jsp?email=<%=rs.getString(9)%>" class="btn btn-primary mb-3">View products</a>
			            <a href="customerdairyviewreviews.jsp?email=<%=rs.getString(9)%>" class="btn btn-primary">Reviews</a>
						
						</div>
						</div>					
				    <%
				}
				if(count==0){
					out.println("No Data Found");	
				}
				}catch(Exception e){
					e.printStackTrace();
				}
			
				%>
				</div>
				</div>
				</div>
	<%@include file="footer.jsp" %>
	<%@include file="script.jsp" %>
</body>
</html>