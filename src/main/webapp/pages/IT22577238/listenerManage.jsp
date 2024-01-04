<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
	<%
		String id = request.getParameter("userId");
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

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!-- Table -->
<div class="container-fluid">
<div class="row">

<div class="col-3">
<!-- Main Text -->
<p class="text-justify text-start font-monospace" style="font-size: 30px; margin-top: 20px; margin-left: 10px;">Listener Management</p>
<img src="../../images/admin/lmanage.jpg" class="img-fluid" alt="sidebar-image" style="height:600px; width:500px;"/>
</div>

<div class="col-9">

<div class="container font-monospace" style="margin-left:350px; margin-top: 30px;">
<form action="../../admindel" method="post">
Delete Listners 
<input type="text" name="listener_id">
<input type="submit" value="delete"><br>
</form>
</div>


<br>
<br>

<table class="table align-middle mb-0 bg-white">
  <thead class="bg-light">
    <tr>
      <th>ID</th>
      <th>First Name</th>
      <th>Last Name</th>
      <th>Email</th>
      <th>Phone Number</th>
      <th>Username</th>
    </tr>
  </thead>
  <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM listener_table";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
  <tbody>  
  <tr>  
  	<td><%=resultSet.getInt("listener_id") %></td> 
	<td><%=resultSet.getString("listener_fname") %></td>
	<td><%=resultSet.getString("listener_lname") %></td>
	<td><%=resultSet.getString("listener_username") %></td>
	<td><%=resultSet.getString("listener_email") %></td>
	<td><%=resultSet.getString("listener_password") %></td>	
    </tr>    
  </tbody>  
  
  <% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
</div>
</div>
<!-- Table to show  -->



<!-- Bootstrap JS CDN -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>