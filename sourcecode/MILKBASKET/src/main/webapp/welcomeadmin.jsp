<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body>
<%@include file="adminheader.jsp" %>
<div class="inner-page">
    <div class="slider-item overlay" style="background-image: url('images/welcomeadmin_1.jpg');"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">Welcome Admin</h1>
            <p class="custom-breadcrumbs"><a href="welcomeadmin.jsp">Home</a> <span class="mx-3">/</span> Admin</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="section">
    <div class="container">
      <div class="row">
        <div class="col-lg-5 mr-auto mb-5">
          <span class="d-block text-uppercase text-secondary">Who We Are</span>
          <span class="divider my-4"></span>
          <h2 class="mb-4 section-title">WE ARE TRANSFORMING<strong> MILK BASKET </strong>IDEAS INTO REALITY WITH CREATIVE DESIGN EXPERTISE</h2>
          <p>At our design agency, we specialize in bringing your milk basket ideas to life with creativity and precision. Whether you're envisioning a sleek modern design or a charming traditional style,
           we're here to transform your concepts into beautifully crafted milk baskets. </p>
          <p class="mb-5">Our team is dedicated to delivering perfection, ensuring that every detail reflects your vision and
            enhances the functionality of each basket. Let us make your milk basket dreams a reality.</p>
          <p><a href="#" class="btn btn-outline-black">Learn More</a></p>
        </div>
        <div class="col-lg-6">
          <figure class="img-dotted-bg">
            <img src="images/home1.jpg" alt="Image" class="img-fluid">
          </figure>
        </div>
      </div>
    </div>
  </div>
  
  <%@include file="footer.jsp" %>
  <%@include file="script.jsp" %>
  
  
</body>
</html>