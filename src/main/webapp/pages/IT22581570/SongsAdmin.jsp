<%@ page import="com.IT22576866.DBConnect"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Artist Dashboard</title>
<style>
	body {
		font-family: helvetica;
    	color: white;
   		background-image: url("resources/artist-background.png");
		background-size: cover;
	}
	
	.page-body {
    	padding-left: 100px;
    	padding-right: 100px;
    }
  
    table {
    	border: 1px solid #919294;
        border-collapse: collapse;
        width: 100%;
        opacity: 0.9;
    }

    th, td {
        padding: 10px;
        text-align: left;
    }

    th {
        background-color: #2b2c2c;
    }

    tr:nth-child(even) {
        background-color: #666668;
    }

    tr:nth-child(odd) {
        background-color: #575859;
    }
    
    .default-button {
	  background-color: #666668;
	  color: #fff;
	  border: none;
	  border-radius: 5px;
	  padding: 10px 20px;
	  margin-right: 5px;
	  cursor: pointer;
	  transition: background-color 0.3s;
	}

	.default-button:hover {
	  background-color: #424243;
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
	<img src="resources/logo.png" alt="MusicMash" width="200">
	<div class="page-body">
	<h1>Artist Dashboard</h1>
	
	<%!
		Connection con = null;
	    Statement ps = null;
	    ResultSet rs = null;
	%>
	
	<table border="1">
		<tr>
			<th>Song ID</th>
			<th>Song Title</th>
			<th>Artist</th>
			<th>Genre</th>
			<th>File Name</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		
		<%
            con = DBConnect.getConnection();
			ps = con.createStatement();
            String sql = "SELECT * FROM songs";            
            rs = ps.executeQuery(sql);
            while (rs.next()) {
        %>
        
        <tr>
			<td><%=rs.getInt(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
            <td style="text-align: center;"><a href="SongUpdate.jsp?songId=<%=rs.getInt(1)%>"><button class="edit-button">Edit</button></a></td>
            <td style="text-align: center;"><a href="SongDelete.jsp?songId=<%=rs.getInt(1)%>"><button class="delete-button">Delete</button></a></td>
        </tr>
        
		<%
         	}
        %>
	</table><br><br>
	
	<a href="SongUpload.jsp"><button class="upload-button">Upload Songs</button></a>
	<a href="SongsUser.jsp"><button class="default-button">View as User</button></a>
	</div>
</body>
</html>