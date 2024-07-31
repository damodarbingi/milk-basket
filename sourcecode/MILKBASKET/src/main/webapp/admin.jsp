<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body>
<%@include file="header.jsp" %>
<div class="inner-page">
    <div class="slider-item overlay" style="background-image: url('images/chinna1.jpg');"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">Admin</h1>
            <p class="custom-breadcrumbs"><a href="index.jsp">Home</a> <span class="mx-3">/</span> Admin</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <div class="section">
    <div class="container">
      <div class="row">
        <div class="col-md-5 mb-5 order-2">
          <form action="adminloginprocess.jsp" method="post">
            <div class="row">
              
                <label>Email</label>
                <input type="email" name="email" required class="form-control ">
              
                <label>Password</label>
                <input type="password" name="pass" required class="form-control mb-3 ">
           
                <input type="submit" value="Login"  class="btn btn-primary px-3 py-3 mb-3">
                
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