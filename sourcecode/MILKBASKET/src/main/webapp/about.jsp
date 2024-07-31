<!doctype html>
<html lang="en">

<head>
  <%@include file="head.jsp" %>
</head>

<body>

  <%@include file="header.jsp" %>
  <!-- END header -->

  <div class="inner-page">
    <div class="slider-item overlay" style="background-image: url('images/about.jpg');" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">About Us</h1>
            <p class="custom-breadcrumbs"><a href="index.html">Home</a> <span class="mx-3">/</span> About</p>
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
  </div>>

  
  <div class="section">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-6 order-md-2">
          <figure class="img-dotted-bg">
            <img src="images/about2.jpg" alt="Image" class="img-fluid">
          </figure>
        </div>
        <div class="col-md-5 mr-auto">
          <h2 class="mb-4 section-title">crafting<strong> milk basket </strong>designs that inspire</h2>
          <p>Creativity is our passion, driving us to meticulously design milk baskets that captivate and delight. 
          From elegant simplicity to innovative functionality, we bring your ideas to life with precision and flair.
           </p>
          <p>Our dedicated team ensures each basket embodies your vision, delivering products that not only meet but exceed expectations.
           Let us elevate your milk basket project with our commitment to creativity and craftsmanship</p>
  
        </div>
      </div>
    </div>
  </div>
  
  <div class="section">
    <div class="container">
      <div class="row justify-content-center mb-5 element-animate">
        <div class="col-md-8 text-center">
          <h2 class="mb-4 section-title">Meet Our <strong>Team</strong></h2>
          <p class="mb-5 lead">Meet our talented team dedicated to bringing your milk basket project to life with creativity and precision. 
          From design to execution,we're here to ensure your vision becomes reality.</p>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-4 ">
          <div class="media d-block media-custom text-center">
            <a href="#"><img src="images/dam.jpg" alt="Image Placeholder" class="img-fluid"></a>
            <div class="media-body">
              <h3 class="mt-0 text-black text-center">Damodar</h3>
				  <p>Role: Backend Developer.</p> 
				  <p>Bio: A skilled backend developer with expertise in building robust and scalable systems. 
				Passionate about optimizing performance and ensuring seamless functionality for digital projects.</p>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="media d-block media-custom text-center">
            <a href="#"><img src="images/summy.jpg" alt="Image Placeholder" class="img-fluid"></a>
            <div class="media-body">
              <h3 class="mt-0 text-black">Sumayya</h3>
	              <p>Role: Frontend Developer</p> 
				  <p>Bio: Frontend developer adept at crafting intuitive user interfaces with a focus on usability and aesthetic appeal.</p>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="media d-block media-custom text-center">
            <a href="#"><img src="images/cherry.jpg" alt="Image Placeholder" class="img-fluid" style="height:32vh;width:40vh"></a>
            <div class="media-body">
              <h3 class="mt-0 text-black">Charan</h3>
               <p>Role: Quality Assurance Tester</p> 
			   <p>Bio:Diligent QA tester with a meticulous eye for detail, dedicated to ensuring software quality and user satisfaction through rigorous testing protocols.</p>
            </div>
          </div>
        </div>
  
      </div>
  
    </div>
  </div>
  <!-- END section -->



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