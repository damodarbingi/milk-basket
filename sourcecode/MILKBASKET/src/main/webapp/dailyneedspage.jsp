<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="head.jsp"%>
</head>
<body Align="center">
	<%@include file="customerheader.jsp" %>
	<div class="inner-page">
    <div class="slider-item overlay" style="background-image: url('images/addproduct_1.jpg');"
      data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row slider-text align-items-center justify-content-center">
          <div class="col-lg-9 text-center col-sm-12 element-animate">
            <h1 class="mb-4">Daily Needs</h1>
            <p class="custom-breadcrumbs"><a href="welcomecustomer.jsp">Home</a> <span class="mx-3">/</span>Customer</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <%@include file="connect.jsp"%>
	<div class="section">
    <div class="container">
      <div class="row">
        <div class="col-md-5 mb-5 order-2">
          <form  action="dailyneedsprocess.jsp"  method="post">
            <div class="row">
            <% 
            	String email=(String)session.getAttribute("cemail");
            
            %>
                <label>Customer Email</label>
                <input type="email" name="cemail"  value="<%=email%>" readonly required class="form-control "/>
         
              	<label>Dairy</label>
                <select name="dairyname" required class="form-control mb-3">
                <option value="-1">please Select a Dairy..</option>
                <%
                try{
		            PreparedStatement ps=con.prepareStatement("select * from dreg");
		           
		        	rs=ps.executeQuery();
		        	while(rs.next()){
		            %>
                	<option value="<%=rs.getString(2)%>,<%=rs.getString(9)%>"><%=rs.getString(2)%>(<%=rs.getString(9)%>)</option>
                	<%
                		
		        	}
		        	}catch(Exception e){
		        		e.printStackTrace();
		        	}
                	
                	%>
                </select>
                
                <label>Milk Cost 80/- per liter</label>
                <select name="milktype" required class="form-control mb-3">
                <option value="Select">Select</option>
                	<option value="Buffalo  ">Buffalo</option>
                	<option value="cow ">cow</option>
                </select>
                
                <label>Grade</label>
                <select id="grade" name="grade" required class="form-control mb-3" onchange="getcost()">
                
                <option value="Select">Select</option>
                	<option value="A1|150">A1</option>
                	<option value="A2|130">A2</option>
                </select>
                
  				<label>From Date</label>
                <input id="from" type="date" name="fromdate" required class="form-control mb-3" oninput="getcountdays()">
                
                <label>To Date </label>
                <input id="to" type="date" name="todate" required class="form-control mb-3" oninput="getcountdays()">
                
                <label>cost</label>
                <input id="cost" type="number" name="cost" required class="form-control mb-3" readonly>
		             
		        <label>Total Days</label>
                <input id="totaldays" type="number" name="totaldays" required  readonly class="form-control mb-3">
                
                <label>Total cost</label>
                <input id="totalcost" type="number" name="totalcost" required readonly class="form-control mb-3">
                
                <input type="submit" value="Order" class="btn btn-primary px-3 py-3 mb-3">
                
            </div>
          </form>
          
        </div>
        
      </div>
    </div>
  </div>
  <script>
  	function getcost(){
  		var milkdetails=document.getElementById("grade").value;
  		console.log(milkdetails);
  		var mcostdetails=milkdetails.split("|");
  		var mcost=mcostdetails[1];
  		document.getElementById("cost").value=mcost;
  	};
 
  	function getcountdays(){
  		var fromdate=new Date(document.getElementById("from").value);
  		var todate=new Date(document.getElementById("to").value);
  		var cost=document.getElementById("cost").value;
  		var difference=todate.getTime()-fromdate.getTime();
  		var daydifference=difference/(1000*60*60*24);
  		var totalc=daydifference*cost;
  		document.getElementById("totaldays").value=daydifference;
  		document.getElementById("totalcost").value=totalc;
  		
  	}
  	
  </script>
  
  <%@include file="footer.jsp" %>
  <%@include file="script.jsp" %>
</body>
</html>