<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp"%>
</head>
<body>
<%@include file="dairyheader.jsp"%>
<div class="inner-page">
    <div class="slider-item overlay" style="background-image: url('images/viewproduct_1.jpg');"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">View Products</h1>
            <p class="custom-breadcrumbs"><a href="welcomedairy.jsp">Home</a> <span class="mx-3">/</span> Dairy</p>
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
			try{
				String email=(String)session.getAttribute("demail");
				PreparedStatement ps=con.prepareStatement("select * from vp where email=?");
				ps.setString(1,email);
				rs=ps.executeQuery();
				int count=0;
				while(rs.next()){
					count++;
					%>
	
        <div class="clog-md-6 col-lg-4">
          <div class="media d-block media-custom text-center">
					<img class="m-5" width="300px" height="300px" src="viewproductimage.jsp?id=<%=rs.getInt(1)%>">
					
                	<h1><a><%=rs.getString(3)%></a></h1>
                	<a><span>Milk Type : </span><%=rs.getString(4) %></a>
                	<a><span>Quality Of Product : </span><%=rs.getString(5) %></a>
                	<a><span>Storage : </span><%=rs.getString(6) %></a>
                	<a><span>Manufacture Date : </span><%=rs.getString(7) %></a>
                	<a><span>Expiry Date : </span><%=rs.getString(8) %></a>
                	<a><span>Contains : </span><%=rs.getString(9) %></a>
                	<a><span>Cost : </span><%=rs.getLong(10) %></a>
                	<a><span>Discount : </span><%=rs.getInt(11) %></a>
                	<a><span>Description : </span><%=rs.getString(14) %></a>
         			<a href="viewproducteditpage.jsp?id=<%=rs.getInt(1)%>" class="btn btn-primary mb-3" onclick="return confirm('Do You Want To Edit..?')">Edit</a>
         		    <a href="viewproductdeleteprocess.jsp?id=<%=rs.getInt(1)%>" class="btn btn-danger" onclick="return confirm('Do You Want To Delete..?')">Delete</a>
         		  
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
				<%@include file="script.jsp"%>
</body>
</html>