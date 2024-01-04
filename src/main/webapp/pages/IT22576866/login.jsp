<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>musicmash</title>
<!-- Bootstrap CSS CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<!-- Custom CSS -->
<link rel="stylesheet" type="text/css" href="../../Style/signup-page.css">
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Ultra&display=swap" rel="stylesheet">
</head>
<body>

<!-- Navigation Bar to Redirect to Home Page -->
<nav class="navbar bg-#1B1B1B">
  <a class="navbar-brand" href="../../index.jsp">
    <img src="../../images/main-logo.png" width="250" height="130" alt="brand-logo" >
  </a>
</nav>

<!-- Text -->
<p class="text-center" style="font-family: 'Ultra', serif; font-size: 60px;">Get access</p>
<!-- Instructions -->
<p class="text-center" style="font-size: 20px;">Login with relevant path</p>

<!-- Cards for Select Artist or Listener -->
<div class="container">
<div class="row">
  <div class="col">
    <div class="card text-center bg-transparent border-light">
    <a class="card-block stretched-link text-decoration-none" href="listenerLogin.jsp">
      <div class="card-body text-light">
        <h5 class="card-title">Listeners</h5>        
      </div>
      <div class="text-center">
        <img src="../../images/signuppage/spage-listen.jpg" class="rounded-circle" alt="" width="300" height="300" style="margin-bottom: 80px;"/>
      </div> 
      </a>     
    </div>
  </div>
  <div class="col">
    <div class="card text-center bg-transparent border-light text-light">        
    <a class="card-block stretched-link text-decoration-none" href="../IT22581570/artistLogin.jsp">    
      <div class="card-body text-light">
        <h5 class="card-title">Artists</h5>        
      </div>
      <div class="text-center ">
        <img src="../../images/signuppage/spage-artist.jpg" class="rounded-circle" alt="" width="300" height="300" style="margin-bottom: 80px;"/>
      </div>     
      </a> 
    </div>     
  </div>  
</div>
</div>
<!-- Cards for Select Artist or Listener Ends-->


<!-- Bootstrap JS CDN -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
