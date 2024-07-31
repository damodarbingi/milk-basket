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
    <div class="slider-item overlay" style="background-image: url('images/farm_1.jpg');background-size:1550px 800px;"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">Change Password</h1>
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
          <form action="admincpprocess.jsp" method="post">
            <div class="row">
            <%
            
                String email=(String)session.getAttribute("adminemail");
         
            %>
                
                <label>Email</label>
                <input type="email" name="email" value="<%=email%>" readonly class="form-control " required>
            
              
                <label>Old Password</label>
                <input type="password" name="pass" class="form-control " required>
              
                <label>New Password</label>
                <input type="password" name="npass" class="form-control mb-3 " required>
           
                <input type="submit" value="change Password" class="btn btn-primary px-3 py-3 mb-3" required>
                
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