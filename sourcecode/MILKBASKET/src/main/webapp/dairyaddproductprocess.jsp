<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,com.oreilly.servlet.*,java.util.*,java.io.*,java.sql.Date"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<%@include file="connect.jsp" %>
<%
String rtempfile = File.createTempFile("temp","1").getParent();
MultipartRequest multi=new MultipartRequest(request,rtempfile,15*1024*1024);
Enumeration files=multi.getFileNames();

String email=multi.getParameter("email");

String dp=multi.getParameter("dp");

String milktype=multi.getParameter("milktype");

String qp=multi.getParameter("qp");

String storage=multi.getParameter("storage");

String mfgdate=multi.getParameter("mfg");
Date mfg=Date.valueOf(mfgdate);

String expdate=multi.getParameter("exp");
Date exp=Date.valueOf(expdate);

String contains=multi.getParameter("contains");

long cost = Long.parseLong(multi.getParameter("cost"));

int discount = Integer.parseInt(multi.getParameter("discount"));

String descr=multi.getParameter("descr");

try{
PreparedStatement ps = con.prepareStatement("insert into vp(email,dp,milktype,qp,storage,mfg,exp,contains,cost,discount,typee,image,descr) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
		String name="";
		String fileExtension="";
		File ff=null;
		FileInputStream fin=null;
		while(files.hasMoreElements()){
			name=(String)files.nextElement();
			ff=multi.getFile(name);
			fileExtension=ff.getName().substring(ff.getName().lastIndexOf("."));
			boolean fileAllowed=fileExtension.equalsIgnoreCase(".png")||
					fileExtension.equalsIgnoreCase(".jpeg")||
					fileExtension.equalsIgnoreCase(".jpg");
			if((ff!=null)&&fileAllowed){
				try{
					fin=new FileInputStream(ff);
					ps.setString(1,email);
					ps.setString(2,dp);
					ps.setString(3,milktype);
					ps.setString(4,qp);
					ps.setString(5,storage);
					ps.setDate(6,mfg);
					ps.setDate(7,exp);
					ps.setString(8,contains);
					ps.setLong(9,cost);
					ps.setInt(10,discount);
					ps.setString(11,fileExtension);
					ps.setBinaryStream(12,(InputStream)fin,(int)(ff.length()));
					ps.setString(13,descr);

					int rows=ps.executeUpdate();
					if(rows>0){ 
					    %>
					    <script>alert("Add Product Successful")</script>
						<jsp:include page="addproductpage.jsp"/>
						<%
					}
					else{
						%>
						<script>alert("Add Product Not Succesfull")</script>
						<jsp:include page="addproductpage.jsp"/>
						<%
					}
				}
				
				catch(Exception e){
					e.printStackTrace();
				}}
			else{
				out.println("please enter appropriate file");
			}}
				}
				catch(Exception e){
				e.printStackTrace();
				}
	%>

</body>
</html>