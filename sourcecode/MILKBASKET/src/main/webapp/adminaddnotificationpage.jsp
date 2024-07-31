<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp"%>
</head>
<body>
<%@include file="adminheader.jsp"%>
<div class="inner-page">
    <div class="slider-item overlay" style="background-image: url('images/home5.jpg');background-size:1550px 800px;"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">Add Notification</h1>
            <p class="custom-breadcrumbs"><a href="welcomeadmin.jsp">Home</a> <span class="mx-3">/</span> Admin</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="section">
    <div class="container">
      <div class="row">
        <div class="col-md-5 mb-5 order-2">
          <form action="adminaddnotificationprocess.jsp"  onsubmit="return verify()" method="post">
            <div class="row">
              
                <label>Title</label>
                <input type="text" name="title" required class="form-control ">
                
  				<label>Description</label>
                <input type="text" name="descr" required class="form-control mb-3">
                
                <input type="submit" value="Add Notification" required class="btn btn-primary px-3 py-3 mb-3">
                
            </div>
          </form>
          
        </div>
        
      </div>
    </div>
  </div>
  <%@include file="footer.jsp"%>
  <%@include file="script.jsp"%>
</body>
</html>