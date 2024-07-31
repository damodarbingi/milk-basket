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
    <div class="slider-item overlay" style="background-image: url('images/dairy_11.jpg');background-size:200vh 100vh"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">Welcome Dairy</h1>
            <p class="custom-breadcrumbs"><a href="welcomedairy.jsp">Home</a> <span class="mx-3">/</span> Dairy</p>
          </div>
        </div>
      </div>
    </div>
  </div>
    <div class="section portfolio-section">
    <div class="container">
      <div class="row mb-5">
        <div class="col-12 text-center">
          <h2 class="mb-4 section-title">Latest Work</h2>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-6">
          <a class="work-thumb">
            <div class="work-text">
              <h2>Available Breeds</h2>
              <p>Category Here</p>
            </div>
            <img src="images/home2.jpg" alt="Image" class="img-fluid">
          </a>
          <a class="work-thumb">
            <div class="work-text">
              <h2>Work Name Here</h2>
              <p>Category Here</p>
            </div>
            <img src="images/home3.jpg" alt="Image" class="img-fluid">
          </a>
        </div>
        <div class="col-lg-6">
          <a class="work-thumb">
            <div class="work-text">
              <h2>Work Name Here</h2>
              <p>Category Here</p>
            </div>
            <img src="images/home4.jpg" alt="Image" class="img-fluid">
          </a>
          <a  class="work-thumb">
            <div class="work-text">
              <h2>Work Name Here</h2>
              <p>Category Here</p>
            </div>
            <img src="images/home5.jpg" alt="Image" class="img-fluid">
          </a>
        </div>
      </div>
      <div class="row mt-5">
        <div class="col-12 text-center">
          <p><a href="portfolio.html" class="btn btn-outline-white px-4 py-3">More Portfolio</a></p>
        </div>
      </div>
    </div>
  </div>
 
  
<%@include file="footer.jsp" %>
<%@include file="script.jsp" %>
</body>
</html>