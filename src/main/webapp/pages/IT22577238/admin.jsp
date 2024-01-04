<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
	<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.Statement, java.sql.ResultSet" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>musicmash - Admin</title>
<!-- Bootstrap CSS CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
</head>
<body>

<!-- Database Connection and Get Counts from DB Tables -->
<% 
	String driverName = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String dbName = "musicmash_db";
	String userId = "root";
	String password = "3306";
	
	try {
		Class.forName(driverName);
		} catch (ClassNotFoundException e) {
		e.printStackTrace();
		}

		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
    int listenerCount = 0;    
    
    // Listenr Count
    try {
    	// Database Connection
    	con = DriverManager.getConnection(connectionUrl+dbName, userId, password);
    	stmt=con.createStatement();
    	// SQL Query for count listener table
    	String sql ="SELECT count(*) FROM listener_table";
    	// SQL Query execution		
    	rs = stmt.executeQuery(sql);
                
    	   if (rs.next()) {
    		   listenerCount = rs.getInt(1);
           }

    	   rs.close();
    	   stmt.close();
    	   con.close();
       } catch (Exception e) {
           e.printStackTrace();
       }
    
    
    // Artist Count      
    int artistCount=0;
    
    try {
    	// Database Connection
    	con = DriverManager.getConnection(connectionUrl+dbName, userId, password);
    	stmt=con.createStatement();
    	// SQL Query for count listener table
    	String sql ="SELECT count(*) FROM artist_table";
    	// SQL Query execution		
    	rs = stmt.executeQuery(sql);
                
    	   if (rs.next()) {
    		   artistCount = rs.getInt(1);
           }

    	   rs.close();
    	   stmt.close();
    	   con.close();
       } catch (Exception e) {
           e.printStackTrace();
       }
    
    int songCount=0;
    try {
    	// Database Connection
    	con = DriverManager.getConnection(connectionUrl+dbName, userId, password);
    	stmt=con.createStatement();
    	// SQL Query for count listener table
    	String sql ="SELECT count(*) FROM songs";
    	// SQL Query execution		
    	rs = stmt.executeQuery(sql);
                
    	   if (rs.next()) {
    		   songCount = rs.getInt(1);
           }

    	   rs.close();
    	   stmt.close();
    	   con.close();
       } catch (Exception e) {
           e.printStackTrace();
       }
    
%>

  <!-- Import Admin-nav -->
<jsp:include page="./adminnav.jsp" />

  <!-- Main Statics of Music Mash -->
  <div class="container-fluid">
  <div class="row">
  	<div class="card text-center" style="width: 25rem; margin-top:60px; margin-left:150px;">
  		<div class="card-body">
    		<h5 class="card-title " style="color: #9966CC; font-size: 50px;" > <%= listenerCount %></h5>
    		<h6 class="card-subtitle mb-2 text-muted" style="font-size: 30px;">Total Listeners</h6>
    		<p class="card-text">This represent total of current listeners signup to musicmash</p>
    		<a href="listenerManage.jsp" class="card-link">
    			<button type="button" class="btn btn-outline-primary">More to Configure</button>
    		</a>    		
  		</div>
	</div>
	
  	<div class="card text-center" style="width: 25rem; margin-top:60px; margin-left:20px;">
  		<div class="card-body">
    		<h5 class="card-title " style="color: Orange; font-size: 50px;" > <%= artistCount %></h5>
    		<h6 class="card-subtitle mb-2 text-muted" style="font-size: 30px;">Total Artists</h6>
    		<p class="card-text">This represent total of current artists signup to musicmash</p>
    		<a href="artistManage.jsp" class="card-link">
    			<button type="button" class="btn btn-outline-primary">More to Configure</button>
    		</a>    		
  		</div>
	</div>
	
  	<div class="card text-center" style="width: 25rem; margin-top:60px; margin-left:20px;">
  		<div class="card-body">
    		<h5 class="card-title " style="color: #03C03C; font-size: 50px;" > <%= artistCount %></h5>
    		<h6 class="card-subtitle mb-2 text-muted" style="font-size: 30px;">Total Earnings</h6>
    		<p class="card-text">This represent total of current earning on musicmash</p>
    		<a href="artistManage.jsp" class="card-link">
    			<button type="button" class="btn btn-outline-primary">More to Configure</button>
    		</a>    		
  		</div>
	</div>
	
  	<div class="card text-center" style="width: 25rem; margin-top:60px; margin-left:20px;">
  		<div class="card-body">
    		<h5 class="card-title " style="color: #FE6F5E; font-size: 50px;" > <%= songCount %></h5>
    		<h6 class="card-subtitle mb-2 text-muted" style="font-size: 30px;">Total Songs Upload</h6>
    		<p class="card-text">This represent total of current songs upload to musicmash</p>
    		<a href="artistManage.jsp" class="card-link">
    			<button type="button" class="btn btn-outline-primary">More to Configure</button>
    		</a>    		
  		</div>
	</div>
	
	</div>
  </div>
  <!-- Main Statics of Music Mash -->
  
  
  
  



<!-- Bootstrap JS CDN -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>