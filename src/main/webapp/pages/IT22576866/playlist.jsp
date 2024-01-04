<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Playlists</title>
	<style>
		body {
	        font-family: helvetica;
	        color: white;
	        background-image: url("./Resources/artist-background.png");
	        background-size: cover;
	    }
	    
	    .page-body {
	      font-family: helvetica;
	      text-align: center;
	      padding-top: 50px;
	    }
	    
	    h1 {
	    text-align: center;
		}
	
	    form {
	        opacity: 0.9;
	        max-width: 500px;
	        margin: 0 auto;
	        padding: 30px;
	        background-color: #313131;
	        border: 1px solid #919294;
	        border-radius: 15px;
	        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	    }
	
	    label {
	        text-align: center;
	        font-size: 20px;
	        font-weight: bold;
	    }
	
	    input[type="text"],[type=file],[type=password] {
	        width: 95%;
	        background-color: #575859;
	        color: white;
	        padding: 10px;
	        margin-bottom: 10px;
	        border: 1px solid #ccc;
	        border-radius: 5px;
	    }
	    input[type=file]::file-selector-button {
	        margin-right: 20px;
	        border: none;
	        background: white;
	        padding: 6px 12px;
	        border-radius: 5px;
	        color: black;
	        cursor: pointer;
	        transition: background .2s ease-in-out;
	    }
	    
	    input[type=file]::file-selector-button:hover {
	        background: #d3d3d3;
	    }
	
	    input[type="radio"] {
	        margin-right: 5px;
	    }
	
	    input[type="submit"] {
	        background-color: #007BFF;
	        color: #fff;
	        border: none;
	        border-radius: 5px;
	        padding: 12px 28px;
	        cursor: pointer;
	    }
	
	    input[type="submit"]:hover {
	        background-color: #0056b3;
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

	<h1>Playlists</h1>
	
			
			<table>
			<c:forEach var = "pl" items = "${PlaylistDetails}">    <!-- setAttribute of PlaylistServlet.java -->
			
						<!-- Plalist.java file Playlist class -->
			<c:set var = "pListName" value = "${pl.pListName}"/>
			<c:set var = "description" value = "${pl.description}"/>
			
			<tr>
				<td>Play List Name</td>
				<td>${pl.pListName}</td>
			</tr>
			
			<tr>
				<td>Description</td>
				<td>${pl.description}</td>
			</tr>
			
			
			</c:forEach>
			</table>
	
	<a href = "/pages/IT22576866/createPlaylist.jsp">
		<input type = "button" name = "playlist" value = "New Playlist">
	</a>
	
	<c:url value = "/updatePlaylist.jsp" var = "playlistupdate"> 	<!--passing profile details to update file-->
				<c:param name="pListName" value = "${pListName}"></c:param> 						<!-- variable name id -->
				<c:param name="description" value = "${description}"></c:param> 				<!-- variable name f_name -->
			</c:url>
	
	<a href = "${playlistupdate}">
		<input type = "button" name = "playlist" value = "Update Playlist">
	</a>

</body>
</html>