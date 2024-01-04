<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<style>
		body {
	        background-image: url("./Resources/artist-background.png");
	    }
	    
	    h1 {
	   	color: white;
	    text-align: center;
		}
	</style>
	
</head>
<body>
		<h1>User Profile</h1>
			
<section style="background-color: #eee;">
  <div class="container py-5">
    <div class="row">
      <div class="col">
        <nav aria-label="breadcrumb" class="bg-light rounded-3 p-3 mb-4">
          <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">User Profile</li>
          </ol>
        </nav>
      </div>
    </div>
    
    	<c:forEach var = "lis" items = "${lisDetails}">    <!-- setAttribute of LoginServlet.java -->
			
			<c:set var = "id" value = "${lis.id}"/>
			<c:set var = "f_name" value = "${lis.f_name}"/>
			<c:set var = "l_name" value = "${lis.l_name}"/>
			<c:set var = "phone" value = "${lis.phone}"/>
			<c:set var = "email" value = "${lis.email}"/>
			<c:set var = "username" value = "${lis.userName}"/>	
			<!-- <c:set var = "password" value = "${lis.password}"/> -->	
			
			
    <div class="row">
      <div class="col-lg-4">
        <div class="card mb-4">
          <div class="card-body text-center">
            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp" alt="avatar"
              class="rounded-circle img-fluid" style="width: 150px;">
            <h5 class="my-3">${lis.f_name} ${lis.l_name}</h5>            
            <p class="text-muted mb-4">${lis.userName}</p>
            <div class="d-flex justify-content-center mb-2">
           <!-- Delete Button -->
			<c:url value = "/pages/IT22576866/deletelistener.jsp" var = "lisdelete">
				<c:param name="id" value = "${id}"></c:param>
				<c:param name="fname" value = "${f_name}"></c:param>
				<c:param name="lname" value = "${l_name}"></c:param>
				<c:param name="phone" value = "${phone}"></c:param>
				<c:param name="email" value = "${email}"></c:param>
				<c:param name="uname" value = "${username}"></c:param>
				<c:param name="pass" value = "${password}"></c:param>
			</c:url>
            <a href = "${lisdelete}">
			  <button type="button" class="btn btn-primary" style="margin-right: 20px;">Delete</button> 
			</a>
			 	<!-- Update Button -->
			<c:url value = "/pages/IT22576866/updateListener.jsp" var = "lisupdate"> 	<!--passing profile details to update file-->
				<c:param name="id" value = "${id}"></c:param> 						<!-- variable name id -->
				<c:param name="fname" value = "${f_name}"></c:param> 				<!-- variable name f_name -->
				<c:param name="lname" value = "${l_name}"></c:param> 				<!-- variable name l_name -->
				<c:param name="phone" value = "${phone}"></c:param> 				<!-- variable name phone -->
				<c:param name="email" value = "${email}"></c:param> 				<!-- variable name email -->
				<c:param name="uname" value = "${username}"></c:param>         	    <!-- variable name username -->
				<c:param name="pass" value = "${password}"></c:param>				<!-- variable name password -->
			</c:url>		
			          
            <a href = "${lisupdate}">		<!-- passing c:url tag library's variable 'lisupdate'  -->
				<button type="button" name = "update" class="btn btn-outline-primary ">Edit</button>
			 </a>          
            </div>            
          </div>
        </div>
        <div class="card mb-4 mb-lg-0">
          <div class="card-body p-0">
            <ul class="list-group list-group-flush rounded-3">
              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                <i class="fas fa-globe fa-lg text-warning"></i>
                
                <!-- playlist button -->
                <div class="d-flex flex-grow-1 justify-content-center align-items-center" style="width: 100%;">
                <form action="view" method = "post">
					<button type = "Playlists" class = "btn btn-primary">Playlists</button>
				</form>
				</div>
              </li>
              
              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                <i class="fab fa-github fa-lg" style="color: #333333;"></i>			
					<div class="d-flex flex-grow-1 justify-content-center align-items-center" style="width: 100%;">
					<a href = "#">
						<button type = "button" class = "btn btn-primary">Albums</button>
					</a>
					</div>
              </li>
              
              
              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                <i class="fab fa-twitter fa-lg" style="color: #55acee;"></i>
                	<div class="d-flex flex-grow-1 justify-content-center align-items-center" style="width: 100%;">
                	<a href = "#">
						<button type = "button" class = "btn btn-primary">Songs</button>
					</a>
					</div>
              </li>
              
              
              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                <i class="fab fa-instagram fa-lg" style="color: #ac2bac;"></i>
                	<div class="d-flex flex-grow-1 justify-content-center align-items-center" style="width: 100%;">
					<a href = "#">
						<button type = "button" class = "btn btn-primary">Settings</button>
					</a>     
					</div>
				</li>              
            </ul>
          </div>
        </div>
      </div>
      
      <div class="col-lg-8">
        <div class="card mb-4">
          <div class="card-body">
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Listener ID</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0">${lis.id}</p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Name</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0">${lis.f_name} ${lis.l_name}</p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Phone</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0">${lis.phone}</p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Email</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0">${lis.email}</p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Username</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0">${lis.userName}</p>
              </div>
            </div>
          </div>
        </div>
        </c:forEach>
        
        <div class="row">
          <div class="col-md-6">
            <div class="card mb-4 mb-md-0">
              <div class="card-body">
                <p class="mb-4"><span class="text-primary font-italic me-1">assigment</span> Project Status
                </p>
                <p class="mb-1" style="font-size: .77rem;">Web Design</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="80"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">Website Markup</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 72%" aria-valuenow="72"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">One Page</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 89%" aria-valuenow="89"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">Mobile Template</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 55%" aria-valuenow="55"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">Backend API</p>
                <div class="progress rounded mb-2" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 66%" aria-valuenow="66"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="card mb-4 mb-md-0">
              <div class="card-body">
                <p class="mb-4"><span class="text-primary font-italic me-1">assigment</span> Project Status
                </p>
                <p class="mb-1" style="font-size: .77rem;">Web Design</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="80"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">Website Markup</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 72%" aria-valuenow="72"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">One Page</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 89%" aria-valuenow="89"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">Mobile Template</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 55%" aria-valuenow="55"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">Backend API</p>
                <div class="progress rounded mb-2" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 66%" aria-valuenow="66"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>	

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>			
</body>
</html>













