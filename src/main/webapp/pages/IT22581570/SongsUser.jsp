<%@ page import="com.IT22576866.DBConnect"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Songs Playlist</title>
<style>
	body {
	font-family: helvetica;
    color: white;
    background-image: url("resources/artist-background.png");
	background-size: cover;
	}
   .page-body {
    padding-left: 50px;
  }
  
  .songs-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    gap: 20px;
    
  }

  .song {
    display: flex;
    flex-direction: column;
    border: 1px solid #919294;
    border-radius: 15px;
    padding: 20px;
    background-color: #313131;
  }

  .song-info {
    margin-top: 10px;
  }

  .song-title {
  	font-size: 20px;
    font-weight: bold;
  }
  
  .song-details {
  	font-size: 15px;
  	padding-top: 5px;
  }

  .song-image {
    max-width: 100px;
    max-height: 400px;
    margin-bottom: 10px;
  }
  
  .download-button {
  background-color: #ff1989;
  color: #fff;
  border: none;
  border-radius: 5px;
  padding: 10px 15px;
  margin-right: 5px;
  cursor: pointer;
  transition: background-color 0.3s;
}

.download-button:hover {
  background-color: #b31260;
}

.favorites-button {
  background-color: #388cee;
  color: #fff;
  border: none;
  border-radius: 5px;
  padding: 10px 15px;
  cursor: pointer;
  transition: background-color 0.3s;
}

.favorites-button:hover {
  background-color: #2762a7;
}
</style>
</head>
<body>
	<img src="resources/logo.png" alt="MusicMash" width="200">
  <div class="page-body">
    <h1>Songs Playlist</h1>
    <div class="songs-grid">
      <%
        Connection con = null;
        Statement ps = null;
        ResultSet rs = null;
        
      %>
      <%
      con = DBConnect.getConnection();
		ps = con.createStatement();
      String sql = "SELECT * FROM songs";            
      rs = ps.executeQuery(sql);
        while (rs.next()) {
      %>
      <div class="song">
        <div class="song-image">
          <img src="resources/nocover.png" alt="Default Image" width="250px">
        </div>
        <div class="song-info">
          <div class="song-title"><%= rs.getString(2) %></div>
          <div class="song-details"><strong>Artist:</strong> <%= rs.getString(3) %></div>
          <div class="song-details"><strong>Genre:</strong> <%= rs.getString(4) %></div>
          <div><br>
            <a href="#"><button class="download-button">Download</button></a>
            <a href="#"><button class="favorites-button">Add to Favourites</button></a>
          </div>
        </div>
      </div>
      <%
          }
      %>
    </div>
  </div>
</body>
</html>
