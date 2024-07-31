<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body>
<%@include file="dairyheader.jsp" %>
<div class="inner-page">
    <div class="slider-item overlay" style="background-image: url('images/farm.jpg');"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">Change Password</h1>
            <p class="custom-breadcrumbs"><a href="welcomedaidy.jsp">Home</a> <span class="mx-3">/</span> Dairy</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <div class="section">
    <div class="container">
      <div class="row">
        <div class="col-md-5 mb-5 order-2">
          <form action="dairycpprocess.jsp" method="post">
            <div class="row">
            <%
            String email=(String)session.getAttribute("demail");
            %>
                
                <label>Email</label>
                <input type="email" name="email" value="<%=email%>" required readonly class="form-control ">
            
              
                <label>Old Password</label>
                <input type="password" required name="pass" class="form-control ">
              
                <label>New Password</label>
                <input type="password" required name="npass" class="form-control mb-3 ">
           
                <input type="submit" value="change" class="btn btn-primary px-3 py-3 mb-3">
                
            </div>
          </form>
          
        </div>
        
      </div>
    </div>
  </div>
  
<%@include file="footer.jsp" %>
<%@include file="script.jsp" %>
</body>
</html>