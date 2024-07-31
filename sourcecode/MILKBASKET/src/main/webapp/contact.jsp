<!doctype html>
<html lang="en">

<head>
  <%@include file="head.jsp" %>

</head>

<body>

  <%@include file="header.jsp" %>
  <!-- END header -->

  <div class="inner-page">
    <div class="slider-item overlay" style="background-image: url('images/contact_1.jpg');background-size:1550px 800px;"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">Contact Us</h1>
            <p class="custom-breadcrumbs"><a href="index.html">Home</a> <span class="mx-3">/</span> Contact</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="section">
    <div class="container">
      <div class="row">
        <div class="col-md-6 mb-5 order-2">
          <form action="contactprocess.jsp" method="post">
            <div class="row">
              <div class="col-md-6 form-group">
                <label for="name">Name</label>
                <input type="text" name="name" required id="name" class="form-control ">
              </div>
              <div class="col-md-6 form-group">
                <label for="phone">Phone</label>
                <input type="text" name="phone" id="phone" required pattern="[6-9]{1}[0-9]{9}" class="form-control ">
              </div>
            </div>
            <div class="row">
              <div class="col-md-12 form-group">
  
              </div>
            </div>
            <div class="row">
              <div class="col-md-12 form-group">
                <label>Email</label>
                <input type="email" name="mail" required class="form-control ">
              </div>
            </div>
            <div class="row">
              <div class="col-md-12 form-group">
                <label>Write Message</label>
                <textarea type="text" name="wm" required responsive class="form-control" cols="30" rows="8"></textarea>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6 form-group">
                <input type="submit" value="Send Message" class="btn btn-primary px-3 py-3">
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

<%@include file="footer.jsp" %>
  <!-- END footer -->

  <!-- loader -->
  <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
      <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
      <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
        stroke="#f4b214" /></svg></div>

  <%@include file="script.jsp" %>
</body>

</html>