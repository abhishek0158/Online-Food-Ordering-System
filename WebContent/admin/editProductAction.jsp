<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>


<%
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
	Statement st=con.createStatement();
	st.executeUpdate("update product set name='"+name+"',category='"+category+"',price='"+price+"',description='"+description+"',image='"+image+"',store='"+store+"', active='"+active+"' where id='"+id+"'");
	if(active.equals("No")){
		st.executeUpdate("delete from cart where product_id='"+id+"' and address is NULL");
		
	}
	response.sendRedirect("allProductEditProduct.jsp?msg=done");
}
catch(Exception e){
	System.out.println(e);
}
%>