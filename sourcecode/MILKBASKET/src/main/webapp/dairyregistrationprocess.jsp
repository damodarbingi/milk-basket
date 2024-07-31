<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,com.oreilly.servlet.*,java.util.*,java.io.*,java.sql.Date"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<%@include file="connect.jsp" %>
	<%
	try{
		
		String rtempfile = File.createTempFile("temp","1").getParent();

		
		MultipartRequest multi = new MultipartRequest(request,rtempfile, 15*1024*1024);

		Enumeration files = multi.getFileNames();
		
	String s1=multi.getParameter("fname");
	String s2=multi.getParameter("lname");
	String date=multi.getParameter("dob");
	Date s3=Date.valueOf(date);
	long d4=Long.parseLong(multi.getParameter("phone"));
	String s5=multi.getParameter("address");
	String s6=multi.getParameter("city");
	long d7=Long.parseLong(multi.getParameter("pcode"));
	String s8=multi.getParameter("email");
	String s9=multi.getParameter("pass");
	
	PreparedStatement pss=con.prepareStatement("select * from dreg where email=?");
	pss.setString(1,s8);
	rs=pss.executeQuery();
	int temp=0;
	while(rs.next()){
		temp++;
	}
	if(temp>0){
		%>
		<script>alert("Already Registered With This Mail")</script>
		<jsp:include page="dairyregistrationpage.jsp"/>
		<%
	}
	if(temp==0){
	
	PreparedStatement ps=con.prepareStatement("insert into dreg(fname,lname,dob,phone,address,city,pcode,email,pass,typee,content)values(?,?,?,?,?,?,?,?,?,?,?)");
		String name="";
		String fileExtesion="";
		File ff =null;
		FileInputStream fin =null;

		while (files.hasMoreElements())
		{
		name=(String)files.nextElement();
		ff = multi.getFile(name);
		fileExtesion = ff.getName().substring(ff.getName().lastIndexOf("."));

		boolean fileAllowed =
		fileExtesion.equalsIgnoreCase(".png")||
		fileExtesion.equalsIgnoreCase(".jpeg")||
		fileExtesion.equalsIgnoreCase(".jpg");
		if((ff!=null)&&fileAllowed)
		{

		try
		{
		fin=new FileInputStream(ff);
		ps.setString(1,s1);
		ps.setString(2,s2);
		ps.setDate(3,s3);
		ps.setLong(4,d4);
		ps.setString(5,s5);
		ps.setString(6,s6);
		ps.setLong(7,d7);
		ps.setString(8,s8);
		ps.setString(9,s9);
		ps.setString(10, fileExtesion);
		ps.setBinaryStream(11,(InputStream)fin, (int)(ff.length()));
		int sss = ps.executeUpdate();
		if(sss>0){
			%>
			<script>alert("Register Successfull...!")</script>
			<jsp:include page="dairypage.jsp"/>
			<% 
		}
		else{
			%>
			<script>alert("worng mail buddy...")</script>
			<jsp:include page="dairypage.jsp"/>
			<%
		}
		}
		catch(Exception e)
		{
		e.printStackTrace();
		}
	}
		else{
			out.println("please enter appropriate file");
		}
}
	}
	}
	catch(Exception e)
	{
	e.printStackTrace();
	}
	%>
</body>
</html>