<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update plan</title>
<style>
	body {
    	font-family: helvetica;
    	color: white;
   		background-image: url("resources/artist-background.png");
		background-size: cover;
    	
    }
  	form{
  	padding-left: 500px;
  	
  	}
    table {
    	border: 1px solid #919294;
        border-collapse: collapse;
        width: 50%;
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

<%     //get the parameter name of the useraccount page and assign to these
		String id = request.getParameter("id");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String plan = request.getParameter("plan");
		String amount = request.getParameter("amount");
		String autoincrement = request.getParameter("auto");
		String cardnumber = request.getParameter("cardn");
		%>
		
		<br><h1 style="text-align: center;">Update Purchase Plan</h1><br><br>
  <form action="../../ppupdate" method="post">
	<table>
		<tr>
			<td>Customer ID</td>
			<td><input type="text" name="purid" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Customer First Name</td>
			<td><input type="text" name="firstname" value="<%= firstname %>"  readonly ></td>
		</tr>
		<tr>
		<td>Customer Last Name</td>
		<td><input type="text" name="lastname" value="<%= lastname %>" readonly ></td>
	</tr>
	<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= email %>" readonly ></td>
	</tr>
	<tr>
		<td>Plan</td>
		<td><input type="text" name="plan" value="<%= plan %>"readonly ></td>
	</tr>
	<tr>
		<td>Amount</td>
		<td><input type="text" name="amount" value="<%= amount %>" readonly ></td>
	</tr>	
	
	<tr>
		<td></td>
		<td><input type="text" name="autoincrement" value="<%= autoincrement %>"></td>
				
	</tr>	
	
	<tr>
		<td>Card Number</td>
	     <td><input type="password" name="cardnumber" value="<%= cardnumber %>" readonly></td>
	</tr>	
	
	
		
	</table>
	<br>
	<input class="edit-button" type="submit" name="submit" value="Update">
	</form>

</body>
</html>
  
  
  
  

