<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp"%>
</head>
<body>
<%@include file="customerheader.jsp"%>
<div class="slider-item overlay" style="background-image: url('images/myorders_1.jpg');"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">My Orders</h1>
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
          <form action="customerordercancelprocess.jsp" method="post">
            <div class="row">
            <%
            int id=Integer.parseInt(request.getParameter("id"));
            %>
            
            <label>Order Id</label>
            <input type="number" name="id" value="<%=id%>" required class="form-control mb-3">
            
            <label>Reason</label>
            <input type="text" name="reason" required class="form-control mb-3">
            
            <input type="submit" value="Submit" class="btn btn-primary px-3 py-3 mb-3">
            
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