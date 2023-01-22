<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


</head>
    <!--Header-->
    <br>
    
    
    <%-- <div class="topnav sticky">
   <%String email=session.getAttribute("email").toString(); %>
            <center><h2>Online shopping (BTech Days)</h2></center>
            <a href="addNewProduct.jsp">Add New Product <i class='fas fa-plus-square'></i></a>
            <a href="allProductEditProduct.jsp">All Products & Edit Products <i class='fab fa-elementor'></i></a>
            <a href="messagesReceived.jsp">Messages Received <i class='fas fa-comment-alt'></i></a>
            <a href="ordersReceived.jsp">Orders Received <i class="fas fa-archive"></i></a>
            <a href="cancelOrders.jsp">Cancel Orders <i class='fas fa-window-close'></i></a>
            <a href="deliveredOrders.jsp">Delivered Orders <i class='fas fa-dolly'></i></a>
            <a href="../logout.jsp">Logout <i class='fas fa-share-square'></i></a>
          </div>
           <br>
           <!--table-->
           
           
           
            --%>
           
           
           
           
           
           
           
           <nav id="navbar" class="navbar navbar-expand-lg navbar-light bg-light">
           
  <div class="container-fluid">
  
    <a class="navbar-brand" href="addNewProduct.jsp">Add New Product <i class='fas fa-plus-square'></i></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="allProductEditProduct.jsp">All Products & Edit Products <i class='fab fa-elementor'></i></a>
        </li>
        
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="messagesReceived.jsp">Messages Received <i class='fas fa-comment-alt'></i></a>
        </li>
        
        
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="ordersReceived.jsp">Orders Received <i class="fas fa-archive"></i></a>
        </li>
        
        
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="cancelOrders.jsp">Cancel Orders <i class='fas fa-window-close'></i></a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="deliveredOrders.jsp">Delivered Orders <i class='fas fa-dolly'></i></a>
        </li>
        
        
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="../logout.jsp">Logout <i class='fas fa-share-square'></i></a>
        </li>
        
        
        
      </ul>
      
    </div>
  </div>
</nav>
           
           
           
           
