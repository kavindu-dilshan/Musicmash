<%@ page import="com.IT22581570.SongDBConnect"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Song Details</title>
<style>
    body {
        font-family: helvetica;
        color: white;
        background-image: url("resources/artist-background.png");
		background-size: cover;
    }
    
    .page-body {
	  	font-family: helvetica;
		text-align: center;
        padding-top: 50px;
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

    input[type="text"],[type=file] {
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
        padding: 10px 20px;
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
	<%!
		Connection con = null;
	    PreparedStatement ps = null;
	    ResultSet rs = null;
	%>
	
	<%
    String songId = request.getParameter("songId");
    if (songId != null) {
        con = SongDBConnect.getConnection();
        String sql = "SELECT * FROM songs WHERE id = ?";
        ps = con.prepareStatement(sql);
        ps.setString(1, songId);
        rs = ps.executeQuery();
        if (rs.next()) {
    %>
	<img src="resources/logo.png" alt="MusicMash" width="200">
	<br><h1 style="text-align: center;">Update Song Details</h1><br>
	<form action="../../UpdateServlet" method="post" autocomplete="off">
	
		<label>Song ID</label><br><br>
		<input type="text" name="id" value="<%=rs.getInt(1)%>" readonly><br><br>
		
		<label>Song Title</label><br><br>
		<input type="text" name="title" value="<%=rs.getString(2)%>" required><br><br>
		
		<label>Artist</label><br><br>
		<input type="text" name="artist" value="<%=rs.getString(3)%>" required><br><br>
 
        <label>Genre</label><br><br>
        <input type="radio" id="genre" name="genre" value="Pop" <%= rs.getString("genre").equals("Pop") ? "checked" : "" %>> Pop
        <input type="radio" id="genre" name="genre" value="Rock" <%= rs.getString("genre").equals("Rock") ? "checked" : "" %>> Rock
        <input type="radio" id="genre" name="genre" value="Rap" <%= rs.getString("genre").equals("Rap") ? "checked" : "" %>> Rap
        <input type="radio" id="genre" name="genre" value="Classic" <%= rs.getString("genre").equals("Classic") ? "checked" : "" %>> Classic<br><br><br>
		
		<input type="submit" value="Update"><br>
	</form>
	<%
        }
    }
    %>
	<div class="page-body">
		<a href="SongsAdmin.jsp"><button class="upload-button">Artist Dashboard</button></a>
	</div>
</body>
</html>