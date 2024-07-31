<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<%@include file="connect.jsp"%>
<%
	String cemail=request.getParameter("cemail");
	String demail=request.getParameter("demail");
	int totalquantity=Integer.parseInt(request.getParameter("totalquantity"));
	long cost=Long.parseLong(request.getParameter("cost"));
	long totalcost=Long.parseLong(request.getParameter("totalcost"));
	String address=request.getParameter("address");
	String date=request.getParameter("deliverydate");
	Date deliverydate=Date.valueOf(date);
	try{
		PreparedStatement ps=con.prepareStatement("insert into orders(cemail,demail,totalquantity,cost,totalcost,address,deliverydate) values(?,?,?,?,?,?,?)",PreparedStatement.RETURN_GENERATED_KEYS);
		ps.setString(1,cemail);
		ps.setString(2,demail);
		ps.setInt(3,totalquantity);
		ps.setLong(4,cost);
		ps.setLong(5,totalcost);
		ps.setString(6,address);
		ps.setDate(7,deliverydate);
		int rows=ps.executeUpdate();
		if(rows>0){
			rs=ps.getGeneratedKeys();
			if(rs.next()){
				int orderid=rs.getInt(1);
				PreparedStatement pss=con.prepareStatement("insert into orderlist(cemail,demail,dairyproduct,productid,type,quality,storage,mfg,exp,cost,quantity,totalcost,orderid) select cemail,email,dairyproduct,productid,milktype,qualityofproduct,storage,mfg,exp,cost,quantity,totalcost,? from cart");
				pss.setInt(1,orderid);
				int row=pss.executeUpdate();
				if(row>0){
					PreparedStatement pp=con.prepareStatement("delete  from cart");
					int rt=pp.executeUpdate();
					if(rt>0){
						%>
							<script>alert("Order Sucessfull")</script>
							<jsp:include page="myorders.jsp"/>
						<%
					}else{
						%>
						<script>alert("Failed To Order")</script>
						<jsp:include page="customerviewcartprocess.jsp"/>
					<%
					}
				}else{
					%>
					<script>alert("Failed To Order")</script>
					<jsp:include page="customerviewcartprocess.jsp"/>
				<%
				}
			}else{
				%>
				<script>alert("Failed To Order")</script>
				<jsp:include page="customerviewcartprocess.jsp"/>
			<%
			}
			
		}else{
			%>
			<script>alert("Failed To Order")</script>
			<jsp:include page="customerorders.jsp"/>
		<%
		}
	}
	catch(Exception e){
		e.printStackTrace();
	}

%>

</body>
</html>