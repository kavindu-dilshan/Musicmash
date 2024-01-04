<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Bootstrap CSS CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>

<!-- Navigation Bar -->
  <!-- Navbar  -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark">
      <div class="container">
        <a  href="index.jsp">
        <img alt="brand-logo" src="./images/main-logo.png" width="250" height="120">
        </a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarNav"
          aria-controls="navbarNav"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
          <div class="mx-auto"></div>
          <ul class="navbar-nav" style="margin-right: 155px;">
            <li class="nav-item">
              <a class="nav-link text-white" href="index.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-white" href="#">Play Song</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-white" href="./pages/IT22915290/aboutus.jsp">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-white" href="#">Contact</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-white" href="./pages/IT22576866/login.jsp">Login</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-white" href="./pages/IT22576866/signup.jsp">Sign up</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-white" href="./pages/IT22915290/plan.jsp">Pricing & Plans</a>
            </li>               
          </ul>
          <!-- Search Box -->
          <form class="d-flex input-group w-auto ml-30">
            <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon"/>
             <span class="input-group-text" id="search-addon">
               <i class="fas fa-search"></i>
            </span>
          </form>          
         </div>                 
      </div>      
    </nav>
<!-- Navigation Bar Ends -->


<!-- Bootstrap JS CDN -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<!-- Custom JS for Navigation Scrolling -->
<script src="js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript">
      var nav = document.querySelector('nav');

      window.addEventListener('scroll', function () {
        if (window.pageYOffset > 100) {
          nav.classList.add('bg-dark', 'shadow');
        } else {
          nav.classList.remove('bg-dark', 'shadow');
        }
      });
    </script>
<!-- Custom JS for Navigation Scrolling Ends -->    

<!-- Font Awsome JS Kit -->
<script src="https://kit.fontawesome.com/f36fba13b4.js" crossorigin="anonymous"></script>
</body>
</html>