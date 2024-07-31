<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp"%>
</head>
<body>
<%@include file="dairyheader.jsp"%>
<div class="inner-page">
    <div class="slider-item overlay" style="background-image: url('images/dairy_16.jpg');" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">Edit Products</h1>
            <p class="custom-breadcrumbs"><a href="welcomedairy.jsp">Home</a> <span class="mx-3">/</span> Dairy</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <%@include file="connect.jsp"%>
  <%
  int id=Integer.parseInt(request.getParameter("id"));
  	PreparedStatement ps=con.prepareStatement("select * from vp where id=?");
  	ps.setInt(1,id);
  	rs=ps.executeQuery();
  	int count=0;
  	while(rs.next()){
  		%>
  		<div class="section">
  	    <div class="container">
  	      <div class="row">
  	        <div class="col-md-5 mb-5 order-2">
  	          <form  action="dairyviewproducteditprocess.jsp"   method="post">
  	            <div class="row">
  	            
  	            	<label>Id</label>
  	                <input type="number" name="id" value="<%=id%>" readonly required class="form-control ">
  	              
  	              
  	                <label>Email</label>
  	                <input type="email" name="email" value="<%=rs.getString(2)%>" readonly required class="form-control ">
  	              
  	              	<label>Dairy Products</label>
  	                <select name="dp" required class="form-control mb-3" >
  	                <option value="<%=rs.getString(3)%>"><%=rs.getString(3)%></option>
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
  	                <select name="milktype" required class="form-control mb-3" >
  	                <option value="<%=rs.getString(4)%>"><%=rs.getString(4)%></option>
  	                <option value="Select">Select</option>
  	                	<option value="Buffalo">Buffalo</option>
  	                	<option value="Buffalo">cow</option>
  	                </select>
  	                
  	                <label>Quality of Product</label>
  	                <select name="qp" required class="form-control mb-3">
  	                <option value="<%=rs.getString(5)%>"><%=rs.getString(5)%></option>
  	                	<option value="Select">Select</option>
  	                	<option value="A1">A1</option>
  	                	<option value="A2">A2</option>
  	                </select>
  	                
  	                <label>Storage</label>
  	                <select name="storage" required class="form-control mb-3" >
  	                	<option value="<%=rs.getString(6)%>"><%=rs.getString(6)%></option>
  	                	<option value="Select">Select</option>
  	                	<option value="dry">Dry</option>
  	                	<option value="cold">Cold</option>
  	                </select>
  	                
  	  				<label>Manufacture Date</label>
  	                <input type="date" name="mfg" required class="form-control mb-3" value="<%=rs.getDate(7)%>">
  	                
  	                <label>Expiry Date </label>
  	                <input type="date" name="exp" required class="form-control mb-3" value="<%=rs.getDate(8)%>">
  	                
  	                <label>Contains</label>
  	                <textarea name="contains" rows="10" required cols="100" plaseholder="message" class="form-control mb-3" value="<%=rs.getString(9)%>"></textarea>
  	                
  	                <label>cost</label>
  	                <input type="number" name="cost" required class="form-control mb-3" value="<%=rs.getLong(10)%>">
  			             
  			        <label>Discount</label>
  	                <input type="number" name="discount" required class="form-control mb-3" value="<%=rs.getInt(11)%>">
  	                
  			        
  			        <label>Description</label>
  	                <input type="text" name="descr" required class="form-control mb-3" value="<%=rs.getString(14)%>">
  	                
  	                <input type="submit" value="Edit" required class="btn btn-primary px-3 py-3 mb-3">
  	                
  	            </div>
  	          </form>
  	          
  	        </div>
  	        
  	      </div>
  	    </div>
  	  </div>
  	  <%
  	}
  %>
<%@include file="footer.jsp"%>
<%@include file="script.jsp"%>
</body>
</html>