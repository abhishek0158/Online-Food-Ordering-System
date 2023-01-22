
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="loginAction.jsp" method="post">
		<input type="email" name="email" placeholder="Enter Email" required>
		<input type="password" name="password" placeholder="Enter Password" required>     
		<input type="submit" value="login">
     </form>
      <h2><a href="signup.jsp">SignUp</a></h2>
       <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
  </div>
  <div class='whysignLogin'>
  <%String msg=request.getParameter("msg");
  	if("notexist".equals(msg))
  	{
  %>
  <h1>Incorrect Username or Password</h1>
	<%} %>

	<%if("invalid".equals(msg)) {%>
	<h1>Some thing Went Wrong! Try Again ! in login Page</h1>
    <%} %>
    <h2>Online Pizza Ordering System</h2>
    <p>The Online Pizza Ordering System is the application that allows the users to shop online without going to the shops to buy pizza.
     There's no better feeling in the world than a warm pizza box on your lap.</p>
  </div>
</div>

</body>
</html>