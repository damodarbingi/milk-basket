<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp"%>
</head>
<body>
<%@include file="customerheader.jsp"%>
<div class="inner-page">
    <div class="slider-item overlay" style="background-image: url('images/dairy_15.jpg');background-image:1550px 800px;"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">Add Review</h1>
            <p class="custom-breadcrumbs"><a href="welcomecustomer.jsp">Home</a> <span class="mx-3">/</span>Customer</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <%@include file="connect.jsp"%>
  <%
  String cemail=(String)session.getAttribute("cemail");
  String email=request.getParameter("email");
  %>
  <div class="section">
    <div class="container">
      <div class="row">
        <div class="col-md-5 mb-5 order-2">
          <form action="customerviewcartaddreviewprocess.jsp"  onsubmit="return verify()" method="post">
            <div class="row">
              
                <label for="name">Customer Email</label>
                <input type="email" name="cemail" class="form-control" value="<%=cemail%>">
              
                <label for="name">Dairy Email</label>
                <input type="email" name="demail" class="form-control mb-3" value="<%=email%>">
                
                <label for="date">Review</label>
                <input type="text" name="review" required class="form-control mb-3">
                
                <label>Rating</label>
				<select name="rating" class="form-control mb-3">
					<option value="-1">-- Select Rating --</option>
					<option value="5">5</option>
					<option value="4">4</option>
					<option value="3">3</option>
					<option value="2">2</option>
					<option value="1">1</option>
				</select>                
                
                
                <input type="submit" value="submit" class="btn btn-primary px-3 py-3 mb-3">
                
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