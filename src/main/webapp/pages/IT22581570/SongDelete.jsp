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
<title>Confirm Delete</title>
<style>
	body {
     font-family: helvetica;
     color: white;
     text-align: center;
     background-image: url("resources/artist-background.png");
	 background-size: cover;
     padding-top: 50px;
    }
    
    p{
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
      width: 20%;
      text-align: center;
    }
    
    .edit-button {
	  background-color: #388cee;
	  color: #fff;
	  border: none;
	  border-radius: 5px;
	  padding: 10px 30px;
	  cursor: pointer;
	  transition: background-color 0.3s;
	}

	.edit-button:hover {
	  background-color: #2762a7;
	}
	
	.delete-button {
	  background-color: #ff1989;
	  color: #fff;
	  border: none;
	  border-radius: 5px;
	  padding: 10px 30px;
	  cursor: pointer;
	  transition: background-color 0.3s;
	}

	.delete-button:hover {
	  background-color: #b31260;
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
    <h2>Are you sure you want to delete this song?</h2><br>
    <p>Song Title</p>
    <input type="text" name="title" value="<%=rs.getString(2)%>" readonly><br><br>
    <a href="../../DeleteServlet?songId=<%=rs.getInt(1)%>"><button class="delete-button">Delete</button></a>
    <a href="SongsAdmin.jsp"><button class="edit-button">Cancel</button></a>
    <%
        }
    }
    %>
</body>
</html>
