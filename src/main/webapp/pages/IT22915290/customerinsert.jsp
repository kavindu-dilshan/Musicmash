<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script>
    function validateForm() {
      var id = document.forms["myForm"]["id"].value;
      var fname = document.forms["myForm"]["fname"].value;
      var lname = document.forms["myForm"]["Lname"].value;
      var email = document.forms["myForm"]["email"].value;
      var plan = document.forms["myForm"]["plan"].value;
      var amount = document.forms["myForm"]["amount"].value;
      var ai = document.forms["myForm"]["ai"].value;
      var cardnum = document.forms["myForm"]["cardnum"].value;

      // Basic validation for required fields
      if (id === "" || fname === "" || lname === "" || email === "" || plan === "" || amount === "" || ai === "" || cardnum === "") {
        alert("All fields must be filled out");
        return false;
      }

     
      var emailPattern = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
      if (!email.match(emailPattern)) {
        alert("Please enter a valid email address.can use Letters (a-z)(A-Z),digits(0-9) use Special characters and @ ");
        return false;
      }

      
      if (isNaN(amount)) {
        alert("Amount must be a numeric value");
        return false;
      }
     
      }

      var cardNumPattern = /^\d{16}$/;
      if (!cardnum.match(cardNumPattern)) {
        alert("Please enter a valid 16-digit card number");
        return false;
      }
    }
  </script>

</head>
<body>

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
    
    
   

<form name="myForm" action="../../insert" method="post" onsubmit="return validateForm()">
  <label>ID</label><input type="text" name="id"><br>
  <label>First name</label><input type="text" name="fname"><br>
  <label>Last name</label><input type="text" name="Lname"><br>
  <label>Email</label><input type="text" name="email"><br>
  <label>Plan</label>
  <input type="text" list="plantypes" name="plan">
  <datalist id="plantypes">
    <option value="Individual">
    <option value="DUO">
    <option value="Student">
  </datalist>
  <label>Amount</label> <input type="text" name="amount"><br>
  <label>Auto increment</label><input type="text" name="ai"><br>
  <label>Card number</label><input type="password" name="cardnum"><br><br>
  <input type="submit" name="submit" value="confirm Purchase">
</form>
</body>
</html>



