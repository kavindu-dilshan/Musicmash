<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Delete</title>
	<link rel = "stylesheet" type = "text/css" href = "listenerStyle.css">
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

	<%  //java code write in jsp file using '<%'
	
		String id = request.getParameter("id");     		//parameter 'id' in listeneraccount.jsp
		String f_name = request.getParameter("fname");		//parameter 'fname' in listeneraccount.jsp
		String l_name = request.getParameter("lname");		//parameter 'lname' in listeneraccount.jsp
		String phone = request.getParameter("phone");		//parameter 'phone' in listeneraccount.jsp
		String email = request.getParameter("email");		//parameter 'email' in listeneraccount.jsp
		String username = request.getParameter("uname");	//parameter 'uname' in listeneraccount.jsp
		String password = request.getParameter("pass");		//parameter 'pass' in listeneraccount.jsp
	%>
	
	<h1>Delete Account</h1>
	
	<form action = "../../delete" method = "post">
		Listener ID <input type = "text" name = "lisid" value = "<%= id %>" readonly><br>  		<!-- put 'value' to java variable 'id' --> 
		Listener First Name <input type = "text" name = "f_name" value = "<%= f_name %>" readonly><br>	<!-- put 'value' to java variable 'f_name' -->
		Listener Last Name <input type = "text" name = "l_name" value = "<%= l_name %>" readonly><br>	<!-- put 'value' to java variable 'l_name' -->
		Listener Phone Number <input type = "text" name = "phone" value = "<%= phone %>" readonly><br>	<!-- put 'value' to java variable 'phone' -->
		Listener Email <input type = "text" name = "email" value = "<%= email %>" readonly><br>			<!-- put 'value' to java variable 'email' -->
		Listener User Name <input type = "text" name = "uname" value = "<%= username %>" readonly><br>	<!-- put 'value' to java variable 'username' -->
		
		<input type = "submit" name = "submit" value = "Delete My Account"><br>
	</form>

</body>
</html>





