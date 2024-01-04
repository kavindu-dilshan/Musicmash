<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
</head>
<body>
			

    
    	<c:forEach var = "lis" items = "${artDetails}">    <!-- setAttribute of LoginServlet.java -->
			
			<c:set var = "id" value = "${lis.id}"/>
			<c:set var = "f_name" value = "${lis.f_name}"/>
			<c:set var = "l_name" value = "${lis.l_name}"/>
			<c:set var = "username" value = "${lis.userName}"/>	
			<c:set var = "email" value = "${lis.email}"/>			
			<!-- <c:set var = "password" value = "${lis.password}"/> -->
			
<section class="h-100 gradient-custom-2">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-lg-9 col-xl-7">
        <div class="card">
          <div class="rounded-top text-white d-flex flex-row" style="background-color: #000; height:200px;">
            <div class="ms-4 mt-5 d-flex flex-column" style="width: 150px;">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp"
                alt="Generic placeholder image" class="img-fluid img-thumbnail mt-4 mb-2"
                style="width: 150px; z-index: 1">             
            
            </div>
            <div class="ms-3" style="margin-top: 130px;">
              <h5> ${lis.f_name} ${lis.l_name}</h5>             
              <p>${lis.userName}</p>
            </div>
          </div>          
          <div class="card-body p-4 text-black">
            <div class="mb-5">
              <p class="lead fw-normal mb-1">About me</p>
              <div class="p-4" style="background-color: #f8f9fa;">
                <p class="font-italic mb-1">Email - ${lis.email}</p>                
              </div>
            </div>
            </div>
        </div>
      </div>
    </div>
  </div>
</section>	
</c:forEach>

	<!-- Song upload button -->
	<a href="./pages/IT22581570/SongUpload.jsp">
         <div class="text-center">
			<button type="button" class="btn btn-primary">Upload Songs</button>
		 </div>
   </a>




<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>			
</body>
</html>













