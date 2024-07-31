<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body>
<%@include file="customerheader.jsp" %>
<div class="inner-page">
    <div class="slider-item overlay" style="background-image: url('images/dairy_13.jpg');background-size:1550px 700px;"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">Profile Photo</h1>
            <p class="custom-breadcrumbs"><a href="welcomecustomer.jsp">Home</a> <span class="mx-3">/</span>Customer</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <%@include file="connect.jsp" %>
  <div class="section">
    <div class="container text-center">
            <form  action="customerimageupdateprocess.jsp" enctype="multipart/form-data"   method="post">
  
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
					<img src="customerimage.jsp?id=<%=rs.getInt(1)%>" style="width:100%; height:100vh;" class="mb-3">
					<div class="col-lg-4" style="margin-left:370px" >
					<input type="file" name="filename"
		             accept=".png,.jpeg,.jpg" class="form-control mb-3"/>
                    </div>
                
                     <input type="submit" value="submit" class="btn btn-primary px-3 py-3 mb-3">
					<%
				}
				if(count==0){
					out.println("No Data Found");	
				}
				}catch(Exception e){
					e.printStackTrace();
				}
			
				%>

</form>
</div>
</div>
<%@include file="footer.jsp"%>
<%@include file="script.jsp"%>
</body>
</html>