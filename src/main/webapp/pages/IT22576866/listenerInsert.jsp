<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
	<title>musicmash</title>
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
    <h1>Sign Up as Listener</h1>
    <form action="../../signup" method="post" onsubmit="return validateForm()" autocomplete="off" enctype="multipart/form-data">
        First Name <input type="text" name="f_name" id="f_name" autocomplete="off"> <br>
        Last Name <input type="text" name="L_name" id="L_name" autocomplete="off"> <br>
        Phone Number <input type="text" name="phone" id="phone" autocomplete="off"> <br>
        Email <input type="text" name="email" id="email" autocomplete="off"> <br>
        User Name <input type="text" name="username" id="username" autocomplete="off"> <br>
        Password <input type="password" name="pass" id="pass" autocomplete="off" required> <br>
        <input type="submit" name="submit" value="SignUp">
    </form>

    <script>
        function validateForm() {
            var email = document.getElementById("email").value;
            var pass = document.getElementById("pass").value;

            // Basic email validation
            var emailRegex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            if (!email.match(emailRegex)) {
                alert("Please enter a valid email address");
                return false;
            }

            // Basic password validation
            if (pass.length < 8) {
                alert("Password must be at least 8 characters long");
                return false;
            }

            // You can add more validation as needed

            return true; // Form will be submitted if validation passes
        }
    </script>
</body>
</html>