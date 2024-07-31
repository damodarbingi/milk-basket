<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,com.oreilly.servlet.*,java.util.*,java.io.*"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>	
<%@include file="connect.jsp" %>
	<%
	    String email=(String)session.getAttribute("demail");		
	    String rtempfile = File.createTempFile("temp","1").getParent();
		MultipartRequest multi=new MultipartRequest(request,rtempfile,15*1024*1024);
		Enumeration files=multi.getFileNames();
		PreparedStatement ps = con.prepareStatement("update dreg set typee=?,content=? where email=?");
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
							ps.setString(1,fileExtension);
							ps.setBinaryStream(2,(InputStream)fin,(int)(ff.length()));
							ps.setString(3,email);
							int rows=ps.executeUpdate();
							if(rows>0){ 
							    %>
							    <script>alert("Successfully Updated")</script>
								<jsp:include page="dairyprofilephoto.jsp"/>
								<%
							}
							else{
								%>
								<script>alert("Update Unsuccessfull")</script>
								<jsp:include page="dairyprofilephoto.jsp"/>
								<%
							}
						}
						
						catch(Exception e){
							e.printStackTrace();
						}}}%>
</body>
</html>