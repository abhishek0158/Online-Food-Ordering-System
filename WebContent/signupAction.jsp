<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String mobileNumber=request.getParameter("mobileNumber");
String securityQuestion=request.getParameter("securityQuestion");
String answer=request.getParameter("answer");
String password=request.getParameter("password");
String address="";
String city="";
String state="";
String country="";
try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into users values(?,?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1,fname);
	ps.setString(2,lname);
	ps.setString(3,email);
	ps.setString(4,mobileNumber);
	ps.setString(5,securityQuestion);
	ps.setString(6,answer);
	ps.setString(7,password);
	ps.setString(8,address);
	ps.setString(9,city);
	ps.setString(10,state);
	ps.setString(11,country);
	ps.executeUpdate();
	response.sendRedirect("signup.jsp?msg=valid");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("signup.jsp?msp=invalid");
}
%>