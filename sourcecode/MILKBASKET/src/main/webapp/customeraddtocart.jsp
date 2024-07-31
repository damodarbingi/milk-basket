<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp"%>

</head>
<body >
<%@include file="customerheader.jsp" %>
<div class="inner-page">
    <div class="slider-item overlay" style="background-image: url('images/dairy_7.jpg');background-size:1550px 800px;"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">Add to Cart</h1>
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
          <form  action="customeraddtocartprocess.jsp"   method="post">
            <div class="row">
            <%@include file="connect.jsp" %>
              
<%
int id=Integer.parseInt(request.getParameter("id"));
String cemail=(String)session.getAttribute("cemail");

try{
	
	PreparedStatement ps=con.prepareStatement("select * from vp where id=?");
	ps.setInt(1,id);
	rs=ps.executeQuery();
	if(rs.next()){
		%>
				<label>Product ID</label>
                <input type="number" name="productid"  value="<%=id%>" readonly required class="form-control ">
		
				<label>Email</label>
                <input type="email" name="email"  value="<%=rs.getString(2)%>" readonly required class="form-control ">
                
                <label>Customer Email</label>
                <input type="email" name="cemail"  value="<%=cemail%>" readonly required class="form-control ">
              
              	<label>Dairy Products</label>
                <input type="text" name="dp" value="<%=rs.getString(3)%>"  readonly class="form-control mb-3">
                
                <label>Milk Type</label>
                <input type="text" name="milktype" value="<%=rs.getString(4)%>" readonly class="form-control mb-3">
                
                <label>Quality of Product</label>
                <input type="text" name="qp" value="<%=rs.getString(5)%>" readonly class="form-control mb-3">
                
                <label>Storage</label>
                <input type="text" name="storage" value="<%=rs.getString(6)%>" readonly class="form-control mb-3">
                
  				<label>Manufacture Date</label>
                <input type="date" name="mfg" readonly required class="form-control mb-3" value="<%=rs.getDate(7)%>">
                
                <label>Expiry Date </label>
                <input type="date" name="exp" readonly required class="form-control mb-3" value="<%=rs.getDate(8)%>">
                
                <label>Contains</label>
                <textarea name="contains" rows="10" readonly required cols="100" placeholder="message" class="form-control mb-3"><%=rs.getString(9)%></textarea>
                
                <label>cost</label>
                <input id="cost" type="number" name="cost" readonly required class="form-control mb-3" value="<%=rs.getLong(10)%>" onkeyup="getcost()">
                
                <label>Quantity</label>
                <input id="quantity" type="number" name="quantity" required class="form-control mb-3"  onkeyup="getcost()">
                
		        <label>Discount</label>
                <input id="disc" type="number" name="discount" readonly required class="form-control mb-3" value="<%=rs.getInt(11)%>" onkeyup="getcost()">
                
                <label>Total Cost</label>
                <input id="tc" type="text" name="totalcost" readonly required class="form-control mb-3">
                
                <label>Description</label>
                <input type="text" name="descr" readonly required class="form-control mb-3" value="<%=rs.getString(14)%>">
               
                <input type="submit" value="Add To Cart" required class="btn btn-primary px-3 py-3 mb-3">
                

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
  <script>
	function getcost(){
		var cost=document.getElementById("cost").value;
		var quantity=document.getElementById("quantity").value;
		var disc=document.getElementById("disc").value;
		
		var tqcost=(cost*quantity);
		
		var discountcost=(tqcost*disc)/100;
		
		var totalcost=tqcost-discountcost;
	document.getElementById("tc").value=totalcost.toFixed(2);

	}
                	
</script>

  
  <%@include file="footer.jsp"%>
  <%@include file="script.jsp"%>

</body>
</html>