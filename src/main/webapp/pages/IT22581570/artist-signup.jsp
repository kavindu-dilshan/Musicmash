<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>musicmash</title>
<!-- Bootstrap CSS CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<!-- Font Awesome -->
<link  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet"/>
<!-- Custom CSS -->
<link rel="stylesheet" type="text/css" href="../../Style/signup-page.css">
</head>
<body>

<!-- Import Header-web -->
<nav class="navbar bg-#1B1B1B">
  <a class="navbar-brand" href="../../index.jsp">
    <img src="../../images/main-logo.png" width="250" height="130" alt="brand-logo" >
  </a>
</nav>

<!-- Text -->
<p class="text-center" style="font-family: 'Ultra', serif; font-size: 60px;">Signup as Artist</p>

<!-- Artist Assessment Form -->
 <div class="container">  
 <form action="../../artist" method="post" autocomplete="off">
  <!-- 2 column grid layout with text inputs for the first and last names -->
  <div class="row mb-4">
    <div class="col">
      <div class="form-outline">
        <input type="text" name="art-fname" class="form-control" autocomplete="off" required/>
        <label class="form-label" for="form3Example1">First name</label>
      </div>
    </div>
    <div class="col">
      <div class="form-outline">
        <input type="text" name="art-lname" class="form-control" autocomplete="off" required/>
        <label class="form-label" for="form3Example2">Last name</label>
      </div>
    </div>
  </div>
  
  <!-- User Name input -->
  <div class="form-outline mb-4">
    <input type="text" name="art-uid" class="form-control" required/>
    <label class="form-label" for="form3Example3">User Name</label>
  </div>

  <!-- Email input -->
  <div class="form-outline mb-4">
    <input type="text" name="art-email" class="form-control" required/>
    <label class="form-label" for="form3Example3">Email address</label>
  </div>

  <!-- Password input -->
  <div class="form-outline mb-4">
    <input type="password" name="art-psw" class="form-control" required/>
    <label class="form-label" for="form3Example4">Password</label>
  </div>

  <!-- Submit button -->
  <button type="submit" class="btn btn-primary btn-block mb-4">Sign up</button>

  <!-- Register buttons -->
  <div class="text-center">
    <p>or sign up with:</p>
    <button type="button" class="btn btn-secondary btn-floating mx-1">
      <i class="fab fa-facebook-f"></i>
    </button>

    <button type="button" class="btn btn-secondary btn-floating mx-1">
      <i class="fab fa-google"></i>
    </button>

    <button type="button" class="btn btn-secondary btn-floating mx-1">
      <i class="fab fa-twitter"></i>
    </button>
  </div>
</form>  
  </div>
<!-- Sign up form ends --> 


<!-- Bootstrap JS CDN -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>