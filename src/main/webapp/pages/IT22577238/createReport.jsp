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

<p class="font-monospace" style="font-size: 30px; margin-left: 50rem; margin-top: 30px;">CREATE REPORT</p>

<div class="container">

<form class="row g-4">
  <div class="col-md-4">
    <div class="form-outline">
      <input type="text" class="form-control is-valid" id="validationServer01"required />
      <label for="validationServer01" class="form-label">Report Name</label>
      <div class="valid-feedback">Looks good!</div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="form-outline">
      <input type="text" class="form-control is-valid" id="validationServer02" required />
      <label for="validationServer02" class="form-label">Report Date</label>
      <div class="valid-feedback">Looks good!</div>
    </div>
  </div>
  
  <div class="col-md-6">
    <div class="form-outline">
      <input type="text" class="form-control is-invalid" id="validationServer03" required />
      <label for="validationServer03" class="form-label">Description</label>
      <div class="invalid-feedback">Please provide a valid description.</div>
    </div>
  </div>
  <div class="col-md-6">
    <div class="form-outline">
      <input type="text" class="form-control is-invalid" id="validationServer05" required />
      <label for="validationServer05" class="form-label">Report Receiver</label>
      <div class="invalid-feedback">Please provide a reciever.</div>
    </div>
  </div>
  <div class="col-md-6">
    <div class="form-outline">
      <input type="text" class="form-control is-invalid" id="validationServer05" required />
      <label for="validationServer05" class="form-label">Report Generator</label>
      <div class="invalid-feedback">Please provide a generator.</div>
    </div>
  </div>
  <div class="col-12">
    <div class="form-check">
      <input class="form-check-input is-invalid" type="checkbox" value="" id="invalidCheck3" required />
      <label class="form-check-label" for="invalidCheck3">Agree to terms and conditions</label>
      <div class="invalid-feedback">You must agree before submitting.</div>
    </div>
  </div>
  <div class="col-12">
    <button class="btn btn-primary" type="submit">Create Report</button>
  </div>
</form>


</div>

</body>
</html>