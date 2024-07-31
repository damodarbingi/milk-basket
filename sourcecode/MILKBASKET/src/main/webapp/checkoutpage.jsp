<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
<script>
	document.getElementById(ddate).addEventListener('input',function(){
		var selectedDate=new Date(this.value);
		var today=new Date();
		if(selectedDate < today){
			alert('Please Select Date From Today Onwards.');
			this.value='';
		}
	})
</script>
</head>
<body>
<%@include file="customerheader.jsp" %>
<div class="inner-page">
    <div class="slider-item overlay" style="background-image: url('images/dairy_8.jpg');background-size:200vh 75vh;"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">Check Out</h1>
            <p class="custom-breadcrumbs"><a href="welcomecustomer.jsp">Home</a> <span class="mx-3">/</span> Admin</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="section">
    <div class="container">
      <div class="row">
        <div class="col-md-5 mb-5 order-2">
          <form  action="checkoutprocess.jsp"   method="post">
            <div class="row">
            <%@include file="connect.jsp"%>
              
<%
String cemail=(String)session.getAttribute("cemail");
Long cost=Long.parseLong(request.getParameter("cost"));
int quantity=Integer.parseInt(request.getParameter("quantity"));
long totalcost=Long.parseLong(request.getParameter("totalcost"));
try{
	PreparedStatement ps=con.prepareStatement("select * from cart where cemail=?");
	ps.setString(1,cemail);
	rs=ps.executeQuery();
	if(rs.next()){
		%>
		
				<label>Customer Email</label>
                <input type="email" name="cemail" class="form-control "  required readonly value="<%=cemail%>">

				<label>Dairy Email</label>
                <input type="email" required readonly name="demail" class="form-control mb-3" value="<%=rs.getString(3)%>">
		         
                <label>Total Quantity</label>
                <input type="number" name="totalquantity" required class="form-control " value="<%=quantity%>">
              
                <label>Cost</label>
                <input type="number" name="cost" class="form-control mb-3" value="<%=cost%>" readonly required>
                
                <label>Total Cost</label>
                <input type="number" name="totalcost" class="form-control mb-3" value="<%=totalcost%>" readonly required>
                
                <label>Address</label>
                <textarea name="address" rows="5" cols="50" class="form-control mb-3" ></textarea>
                
                <label>Delivery Date</label>
                <input type="Date" name="deliverydate" id="ddate" min="<%=java.time.LocalDate.now()%>" class="form-control mb-3">
                
                    
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