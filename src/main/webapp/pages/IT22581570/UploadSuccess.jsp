<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Upload Success</title>
<style>
	body {
    font-family: helvetica;
    color: white;
    text-align: center;
    background-image: url("resources/artist-background.png");
	background-size: cover;
    padding-top: 50px;
    }
    
    .upload-button {
	  background-color: #34a853;
	  color: #fff;
	  border: none;
	  border-radius: 5px;
	  padding: 10px 20px;
	  margin-right: 5px;
	  cursor: pointer;
	  transition: background-color 0.3s;
	}

	.upload-button:hover {
	  background-color: #24763a;
	}
</style>
</head>
<body>
	<div class="page-body">
		<img src="resources/logo.png" alt="MusicMash" width="200">
		<h1>Song Uploaded Successfully.</h1>
		<a href="./pages/IT22581570/SongsAdmin.jsp"><button class="upload-button">Artist Dashboard</button></a>
	</div>
</body>
</html>