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
    <div class="slider-item overlay" style="background-image: url('images/dairy_10.jpg');background-size:200vh 75vh;"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">Dairy Registration</h1>
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
          <form enctype="multipart/form-data" action="dairyregistrationprocess.jsp"  onsubmit="return verify()" method="post">
            <div class="row">
              
                <label for="name">firstName</label>
                <input type="text" name="fname" required class="form-control ">
              
                <label for="name">LastName</label>
                <input type="text" name="lname" required class="form-control mb-3">
                
                <label for="date">Date OF Birth</label>
                <input type="date" name="dob" required class="form-control mb-3">
                
                <label for="phone">Mobile Number</label>
                <input type="tel" name="phone" required pattern="[6-9]{1}[0-9]{9}" class="form-control mb-3">
                
                <label for="address">Address</label>
                <input type="text" name="address" required class="form-control mb-3">
                
                <label>City</label>
                <select name="city" class="form-control mb-3">
                	<option value="-1">-- Select City --</option>
                	<option value="Hyderabad">Hyderabad</option>
                	<option value="Yadadri">Yadadri</option>
                	<option value="Warangal">Warangal</option>
                	<option value="Karimnagar">Karimnagar</option>
                	<option value="Jagithyal">Jagithyal</option>
                	<option value="Nizambad">Nizambad</option>
                </select>
                
                <label>Pincode</label>
                <input type="tel" name="pcode" maxlength="6" required class="form-control mb-3">
                
                <label>Email</label>
                <input type="email" name="email" required class="form-control mb-3">
                
                <label>Password</label>
                <input type="password" name="pass" required class="form-control mb-3">
                
                <label>Select Image</label>
                <input type="file" name="filename" accept=".png,.jpeg,.jpg" required class="form-control mb-3"/>
		             
                <input type="submit" value="register" class="btn btn-primary px-3 py-3 mb-3">
                
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