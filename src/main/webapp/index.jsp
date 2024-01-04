<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>musicmash</title>
<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Permanent+Marker&display=swap" rel="stylesheet">
</head>
<body>
<!-- Import Header-Home -->
<jsp:include page="./resources/header-home.jsp" />

<!-- Images Slider -->
<div id="carouselExampleSlidesOnly" class="carousel slide" data-mdb-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="./images/home-imageSlider/bg-1.jpg" class="d-block w-100" alt="Slider-image-1"/>
    </div>
    <div class="carousel-item">
      <img src="./images/home-imageSlider/bg-2.jpg" class="d-block w-100" alt="Slider-image-2"/>
    </div>
    <div class="carousel-item">
      <img src="./images/home-imageSlider/bg-3.jpg" class="d-block w-100" alt="Slider-image-3"/>
    </div>
    <div class="carousel-item">
      <img src="./images/home-imageSlider/bg-4.jpg" class="d-block w-100" alt="Slider-image-4"/>
    </div>
    <div class="carousel-caption d-flex align-items-center justify-content-center h-100" >
      <h3 style="font-family: Permanent Marker; font-size: 150px;">musicmash 
      <br>
      <a><button type="button" class="btn btn-outline-light btn-lg" style="font-family: Bebas Neue; font-size: 40px;">Discover</button></a>
      <br> 
      <span style="font-family: Bebas Neue; font-size: 60px;">New music you're sure to love</span>
      </h3>            
    </div>
  </div>  
</div>
<!-- End of Image SLider -->


</body>
</html>