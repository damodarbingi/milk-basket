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
    <div class="slider-item overlay" style="background-image: url('images/addproduct_1.jpg');background-size:200vh 150vh;"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">Cart Update</h1>
            <p class="custom-breadcrumbs"><a href="welcomecustomer.jsp">Home</a> <span class="mx-3">/</span>Customer</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="section">
    <div class="container">
      <div class="row">
        <div class="col-md-5 mb-5 order-2">
          <form  action="customerviewcartupdateprocess.jsp" method="post">
            <div class="row">
            <%@include file="connect.jsp"%>
              
<%
int  id=Integer.parseInt(request.getParameter("id"));
String email=(String)session.getAttribute("cemail");
try{
	
	PreparedStatement ps=con.prepareStatement("select * from cart where id=?");
	ps.setInt(1,id);
	rs=ps.executeQuery();
	if(rs.next()){
		%>
				
                <input type="hidden" name="id"  value="<%=rs.getInt(1)%>" readonly required class="form-control ">
				
				<label>Product ID</label>
                <input type="number" name="productid"  value="<%=rs.getInt(2)%>" readonly required class="form-control ">
		
				<label>Email</label>
                <input type="email" name="email"  value="<%=rs.getString(3)%>" readonly required class="form-control ">
                
                <label>Customer Email</label>
                <input type="email" name="cemail"  value="<%=email%>" readonly required class="form-control ">
              
              	<label>Dairy Products</label>
                <input type="text" name="dp" value="<%=rs.getString(5)%>" readonly required class="form-control">
                
                <label>Milk Type</label>
                <input type="text" name="milktype" value="<%=rs.getString(6)%>"  readonly required class="form-control">
                
                <label>Quality of Product</label>
                <input type="text" name="qp" value="<%=rs.getString(7)%>" readonly required class="form-control">
                
                <label>Storage</label>
                <input type="text" name="storage" value="<%=rs.getString(8)%>" readonly required class="form-control">
                
  				<label>Manufacture Date</label>
                <input type="date" name="mfg" required readonly class="form-control mb-3" value="<%=rs.getDate(9)%>">
                
                <label>Expiry Date </label>
                <input type="date" name="exp" required readonly class="form-control mb-3" value="<%=rs.getDate(10)%>">
                
                <label>Contains</label>
                <textarea name="contains" rows="10" required readonly cols="100" placeholder="message" class="form-control mb-3"><%=rs.getString(11)%></textarea>
                
                <label>cost</label>
                <input id="cost" type="number" name="cost" readonly required class="form-control mb-3" value="<%=rs.getLong(12)%>" onkeyup="getcost()">
                
                <label>Quantity</label>
                <input id="quantity" type="number" name="quantity" required class="form-control mb-3" value="<%=rs.getInt(13)%>" onkeyup="getcost()">
                
		        <label>Discount</label>
                <input id="disc" type="number" name="discount" readonly required class="form-control mb-3" value="<%=rs.getInt(14)%>" onkeyup="getcost()">
                
                <label>Total Cost</label>
                <input id="tc" type="number" name="totalcost" readonly required class="form-control mb-3" value="<%=rs.getLong(15)%>">
                
                <label>Description</label>
                <input type="text" name="descr" required readonly class="form-control mb-3" value="<%=rs.getString(16)%>">
               
                <input type="submit" value="Submit" required class="btn btn-primary px-3 py-3 mb-3">
                

            </div>
          </form>
          
        
	<%	
	}
}
catch(Exception e){
	e.printStackTrace();
}
%>
        </div>
      </div>
    </div>
  </div>
    <script>
	function getcost(){
		var cost=document.getElementById("cost").value;
		var quantity=document.getElementById("quantity").value;
		var disc=document.getElementById("disc").value;
		
		var tqcost=(cost*quantity);
		
		var discountcost=(tqcost*disc)/100;
		
		var totalcost=tqcost-discountcost;
	document.getElementById("tc").value=totalcost;

	}
                	
</script>
	
	<%@include file="footer.jsp"%>
	<%@include file="script.jsp"%>
</body>
</html>