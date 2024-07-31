<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body>
<%@include file="dairyheader.jsp" %>
<div class="inner-page">
    <div class="slider-item overlay" style="background-image: url('images/dairy_10.jpg');background-image:1550px 800px;"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">Update Profile</h1>
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
          <form  action="dairyupdateprocess.jsp"   method="post">
            <div class="row">
            <%@include file="connect.jsp" %>
              
<%
int  id=Integer.parseInt(request.getParameter("id"));
try{
	PreparedStatement ps=con.prepareStatement("select * from dreg where id=?");
	ps.setInt(1,id);
	rs=ps.executeQuery();
	if(rs.next()){
		%>
		
				<label>IdNo</label>
                <input type="number" name="id" class="form-control "  required readonly value="<%=id%>">

				<label>Email</label>
                <input type="email" required readonly name="email" class="form-control mb-3" value="<%=rs.getString(9)%>">
		         
                <label for="name">firstName</label>
                <input type="text" name="fname" class="form-control " required value="<%=rs.getString(2)%>">
              
                <label for="name">LastName</label>
                <input type="text" name="lname" class="form-control mb-3" required value="<%=rs.getString(3)%>">
                
                <label for="date">Date OF Birth</label>
                <input type="date" name="dob" class="form-control mb-3" required value="<%=rs.getDate(4)%>">
                
                <label for="phone">Mobile Number</label>
                <input type="tel" name="phone" pattern="[6-9]{1}[0-9]{9}" required class="form-control mb-3" value="<%=rs.getLong(5)%>">
                
                <label for="address">Address</label>
                <input type="text" name="address" class="form-control mb-3" required value="<%=rs.getString(6)%>">
                
                <label>City</label>
                <select name="city" class="form-control mb-3">
                	<option value="<%=rs.getString(7)%>"><%=rs.getString(7)%></option>
                	<option value="-1">-- Please Select city --</option>
                	<option value="Hyderabad">Hyderabad</option>
                	<option value="Yadadri">Yadadri</option>
                	<option value="Warangal">Warangal</option>
                	<option value="Karimnagar">Karimnagar</option>
                	<option value="Jagithyal">Jagithyal</option>
                	<option value="Nizambad">Nizambad</option>
                </select>
                
                <label>Pincode</label>
                <input type="tel" name="pcode" maxlength="6" required class="form-control mb-3" value="<%=rs.getLong(8)%>">
                
                    
                <input type="submit" value="submit" class="btn btn-primary px-3 py-3 mb-3">
                
            </div>
          </form>
          
        </div>
        
      </div>
    </div>
  </div>
	<%	
	}
}catch(Exception e){
	e.printStackTrace();
}
%>
<%@include file="footer.jsp" %>
<%@include file="script.jsp" %>
</body>
</html>