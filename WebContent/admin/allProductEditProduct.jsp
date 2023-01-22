<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="../css/allProductEditProduct.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
.card{
    margin-bottom: 20px;
}

</style>

</head>
<body>

<div style="color: white; text-align: center; font-size: 30px;">All Products & Edit Products <i class='fab fa-elementor'></i></div>

<%
String msg=request.getParameter("msg");
if("done".equals(msg)){
%>
<h3 class="alert">Product Successfully Updated!</h3>
<%} %>
<%if("wrong".equals(msg)){ %>
<h3 class="alert">Some thing went wrong! Try again!</h3>
<%} %>

		  
       <div  class="container">
       <div class="row mt-5">
       
      <%
      try{
    	  Connection con=ConnectionProvider.getCon();
    	  Statement st=con.createStatement();
    	  ResultSet rs=st.executeQuery("select * from product");
    	  while(rs.next()){
      %>
       
         <div class="col-md-3">
                    <div class="card">
                        <div class="card-body">
                            <div class="container text-center py-3">
                                <img src="<%=rs.getString(6) %>" class="card-img-top" alt="...">
                            </div>
                            <h5 class="card-title"><%=rs.getString(2) %></h5>
                            <p><%=rs.getString(5) %></p>
                            <p><i class="fa fa-inr"></i>  <b><%=rs.getString(4) %></b></p>
                            <div class="text-center">
                                <a href="editProduct.jsp?id=<%=rs.getString(1) %>" class="btn btn-outline-dark btn-block">Edit</a>
                            </div>
                            
                        </div>
                    </div>

                </div>
                <%} %>
            </div>

			
        </div>
   
<%
	
    	  
      }
      catch(Exception e){
    	  System.out.println(e);
      }
%>
      
      
      
      
      <br>
      <br>
      <br>

</body>
</html>