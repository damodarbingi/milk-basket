<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<%@include file="connect.jsp"%>
<%
	int productid=Integer.parseInt(request.getParameter("productid"));
	String email=request.getParameter("email");
	String cemail=request.getParameter("cemail");
	String dairyproduct=request.getParameter("dp");
	String milktype=request.getParameter("milktype");
	String qualityofproduct=request.getParameter("qp");
	String storage=request.getParameter("storage");
	String temp1=request.getParameter("mfg");
	
	String temp2=request.getParameter("exp");

	String contains=request.getParameter("contains");
	long cost=Long.parseLong(request.getParameter("cost"));
	int quantity=Integer.parseInt(request.getParameter("quantity"));
	int discount=Integer.parseInt(request.getParameter("discount"));
	float totalcost=Float.parseFloat(request.getParameter("totalcost"));
	String descr=request.getParameter("descr");
	
	Date exp=Date.valueOf(temp2); 
	Date mfg=Date.valueOf(temp1); 
	boolean insert=true;
	try{
		PreparedStatement pss=con.prepareStatement("select * from cart where cemail=? ");
		pss.setString(1,cemail);
		rs=pss.executeQuery();
		
		
		if(rs.next()){
			String diary=rs.getString(3);
			if(!email.equals(diary)){
				insert=false;
			}
			
		}
			if(insert){
			PreparedStatement ps1=con.prepareStatement("select * from cart where productid=? and cemail=?");
			ps1.setInt(1,productid);
			ps1.setString(2,cemail);
			 ResultSet rs1=ps1.executeQuery();
			
			if(rs1.next()){
				%>
			<script>alert("You Have Same Products in the Cart !! Please Check The Cart. ")</script>
				<jsp:include page="customerviewcartprocess.jsp"/>
			    <%
				
			
			}
			else{
				PreparedStatement ps=con.prepareStatement("insert into cart(productid,email,cemail,dairyproduct,milktype,qualityofproduct,storage,mfg,exp,contains,cost,quantity,discount,totalcost,descr) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				ps.setInt(1,productid);
				ps.setString(2,email);
				ps.setString(3,cemail);
				ps.setString(4,dairyproduct);
				ps.setString(5,milktype);
				ps.setString(6,qualityofproduct);
				ps.setString(7,storage);
				ps.setDate(8,mfg);
				ps.setDate(9,exp);
				ps.setString(10,contains);
				ps.setLong(11,cost);
				ps.setInt(12,quantity);
				ps.setInt(13,discount);
				ps.setFloat(14,totalcost);
				ps.setString(15,descr);
			
				int rows=ps.executeUpdate();
		if(rows>0){
			%>
			<script>alert("Add to Cart Successfull.")</script>
	       <jsp:include page="customerviewdairy.jsp"></jsp:include>		
	        <%
		}
		else{
			%>
			<script>alert("Add to Cart Unsuccessfull.Please Try Again")</script>
			<jsp:include page="customerviewdairy.jsp"></jsp:include>
			<%
		}
				
			}
			}
		
	else{
			%>
			<script>alert("You Have Another Dairy Products in the Cart !!Please Checkout The Cart. ")</script>
			<jsp:include page="customerviewdairy.jsp"/>
		    <%
			
		}
	}
	catch(Exception e){
		e.printStackTrace();
	}
	
%>

</body>
</html>