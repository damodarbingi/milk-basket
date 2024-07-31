<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="head.jsp"%>
</head>
<body Align="center">
	<%@include file="dairyheader.jsp" %>
	<div class="inner-page">
    <div class="slider-item overlay" style="background-image: url('images/addproduct_1.jpg');"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">Add Product</h1>
            <p class="custom-breadcrumbs"><a href="welcomedairy.jsp">Home</a> <span class="mx-3">/</span>Dairy</p>
          </div>
        </div>
      </div>
    </div>
  </div>
	<div class="section">
    <div class="container">
      <div class="row">
        <div class="col-md-5 mb-5 order-2">
          <form enctype="multipart/form-data" action="dairyaddproductprocess.jsp"  onsubmit="return verify()" method="post">
            <div class="row">
            <%
            String email=(String)session.getAttribute("demail");
            %>
              
                <label>Email</label>
                <input type="email" name="email"  value="<%=email%>" readonly required class="form-control ">
              
              	<label>Dairy Products</label>
                <select name="dp" required class="form-control mb-3">
                <option value="Select">Select</option>
                	<option value="Milk">Milk</option>
                	<option value="Curd">Curd</option>
                	<option value="Cheese">Cheese</option>
                	<option value="Butter">Butter</option>
                	<option value="Fermented">Fermented</option>
                	<option value="Yogurt">Yogurt</option>
                	<option value="Custard">Custard</option>
                	<option value="Frozen">Frozen</option>
                </select>
                
                <label>Milk Type</label>
                <select name="milktype" required class="form-control mb-3">
                <option value="Select">Select</option>
                	<option value="Buffalo">Buffalo</option>
                	<option value="cow">cow</option>
                </select>
                
                <label>Quality of Product</label>
                <select name="qp" required class="form-control mb-3">
                <option value="Select">Select</option>
                	<option value="A1">A1</option>
                	<option value="A2">A2</option>
                </select>
                
                <label>Storage</label>
                <select name="storage" required class="form-control mb-3">
                <option value="Select">Select</option>
                	<option value="dry">Dry</option>
                	<option value="cold">Cold</option>
                </select>
                
  				<label>Manufacture Date</label>
                <input type="date" name="mfg" required class="form-control mb-3">
                
                <label>Expiry Date </label>
                <input type="date" name="exp" required class="form-control mb-3">
                
                <label>Contains</label>
                <textarea name="contains" rows="10" required cols="100" plaseholder="message" class="form-control mb-3"></textarea>
                
                <label>cost</label>
                <input type="number" name="cost" required class="form-control mb-3">
		             
		        <label>Discount</label>
                <input type="number" name="discount" required class="form-control mb-3">
                
                <input type="file" name="filename"
		        accept=".png,.jpeg,.jpg" required class="form-control mb-3"/>
		        
		        <label>Description</label>
                <input type="text" name="descr" required class="form-control mb-3">
                
                <input type="submit" value="register" required class="btn btn-primary px-3 py-3 mb-3">
                
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