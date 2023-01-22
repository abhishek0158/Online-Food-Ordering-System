<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.InputStream"%>
<%@page import="javax.servlet.http.Part"%>
<%@page import="javax.servlet.annotation.MultipartConfig"%>

<%@page import="com.sun.xml.internal.bind.CycleRecoverable.Context"%> 
<%@page import="java.io.InputStream"%> 
<%@page import="java.io.FileInputStream"%> 
<%@page import="java.io.File"%> 
<%@page import="java.sql.DriverManager"%> 
<%@page import="java.sql.ResultSet"%> 
<%@page import="java.sql.PreparedStatement"%> 
<%@page import="java.sql.Connection"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%> 



<%






//FileInputStream fis=null;



String id=request.getParameter("id");
String name=request.getParameter("name");
String category=request.getParameter("category");
String price=request.getParameter("price");
String description=request.getParameter("description");

String image=request.getParameter("image");

String store=request.getParameter("store");
String active=request.getParameter("active");



 


try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?,?,?,?)");

	
	ps.setString(1,id);
	ps.setString(2,name);
	ps.setString(3,category);
	ps.setString(4,price);
	ps.setString(5,description);
	

	ps.setString(6,image);	
	
	ps.setString(7,store);
	ps.setString(8,active);
	ps.executeUpdate();
	response.sendRedirect("addNewProduct.jsp?msg=done");
	}
catch(Exception e){
	System.out.println(e);
	response.sendRedirect("addNewProduct.jsp?msg=wrong");
}
%>