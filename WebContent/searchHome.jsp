<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.jsp" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>

<style>
h3
{
	color: yellow;
	text-align: center;
}
.card{
	
 	 box-shadow: 0 0 5px 0 rgba(22, 22, 26, .25);
 	  margin-bottom: 20px;
}
.card:hover {
  border-color: rgba(13, 110, 253, 0.7);
  box-shadow: 0px 0px 10px 2px rgba(191, 135, 59, 1);
  
}


</style>


</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>


 <div  class="container">
       <div class="row mt-5">



<%
int z=0;
	try{
		String search=request.getParameter("search");
		String category=request.getParameter("category");
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from product where name like '%"+search+"%' or category like '%"+search+"%' or price like '%"+search+"%' and active='Yes'");
		
		while(rs.next())
		{
			z=1;
%>
          
          <div class="col-md-3">
                    <div class="card w-100 hover-shadow">
                        <div class="card-body text-center">
                            <div class="container text-center py-3">
                                <img src="<%=rs.getString(6) %>" class="card-img-top" alt="...">
                            </div>
                            <h5 class="card-title text-center"><%=rs.getString(2) %></h5>
                            <p><%=rs.getString(5) %></p>
                            <p><i class="fa fa-inr"></i>  <b><%=rs.getString(4) %></b></p>
                            <div class="text-center">
                                <a href="addToCartAction.jsp?id=<%=rs.getString(1) %>"  class="btn btn-primary" type="button"><i class='fas fa-cart-plus'></i>  Add to cart</a>
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
        
      	<%if(z==0){ %>
	<h1 style="color:red; text-align: center;">Nothing to show</h1>
	<%} %>
      <br>
      <br>
      <br>
     

</body>
</html>