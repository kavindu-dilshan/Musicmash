<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>musicmash Admin</title>
<!-- Bootstrap CSS CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
</head>
<body>

<!-- Import Admin-nav -->
<jsp:include page="./adminnav.jsp" />

<div class="container-fluid">
<div class="row">
<div class="card" style="width: 25rem; margin-top:40px; margin-left:80px;">
  <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
    <img src="../../images/admin/view-report.jpg" class="img-fluid"/>
    <a href="#!">
      <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
    </a>
  </div>
  <div class="card-body">
    <h5 class="card-title">Generated Reports</h5>
    <p class="card-text">Use following link to view generated reports at the begining of the web application</p>
    <a href="./viewReport.jsp" class="btn btn-primary">View</a>
  </div>
</div>

<div class="card" style="width: 25rem; margin-top:40px; margin-left:80px;">
  <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
    <img src="../../images/admin/create-report.jpg" class="img-fluid"/>
    <a href="#!">
      <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
    </a>
  </div>
  <div class="card-body">
    <h5 class="card-title">Create Reports</h5>
    <p class="card-text">Use following link to create reports</p>
    <a href="./createReport.jsp" class="btn btn-primary">Create</a>
  </div>
</div>
</div>
</div>

</body>
</html>