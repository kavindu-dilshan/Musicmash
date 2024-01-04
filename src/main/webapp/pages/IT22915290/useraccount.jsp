<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Account</title>

<style>
	body {
    	font-family: helvetica;
    	color: white;
   		background-image: url("./pages/IT22915290/resources/artist-background.png");
		background-size: cover;
		text-align: center;
    	
    }
    
    .middle {
    	padding-left: 500px;
    }
    
    
  	form{
  	
  	
  	}
    table {
    
    	padding-left: 500px;
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
    
    input[type="text"],[type=file],[type=password] {
        width: 80%;
        background-color: #808080;
        color: white;
        padding:2px;
        margin-bottom: 0px;
        border: 1px solid #ccc;
        border-radius: 3px;
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
	<br><h1 style="text-align: center;">Purchase History</h1><br><br>
	<div class="middle">
	<table>
	<c:forEach var="pur" items="${purdetails}">
	
	<c:set var="id" value="${pur.id}"/>
	<c:set var="firstname" value="${pur.firstname}"/>
	<c:set var="lastname" value="${pur.lastname}"/>
	<c:set var="email" value="${pur.email}"/>
	<c:set var="plan" value="${pur.plan}"/>
	<c:set var="amount" value="${pur.amount}"/>
	<c:set var="autoincrement" value="${pur.autoincrement}"/>
	<c:set var="cardnumber" value="${pur.cardnumber}"/>
	
	<tr>
		<td>Customer ID</td>
		<td>${pur.id}</td>
	</tr>
	<tr>
		<td>Customer First Name</td>
		<td>${pur.firstname}</td>
	</tr>
	<tr>
		<td>Customer Last Name</td>
		<td>${pur.lastname}</td>
	</tr>
	<tr>
		<td>Customer Email</td>
		<td>${pur.email}</td>
	</tr>
	<tr>
		<td>Customer Plan</td>
		<td>${pur.plan}</td>
	</tr>
	
	<tr>
		<td>Customer amount</td>
		<td>${pur.amount}</td>
	</tr>
	
	<tr>
		<td>Customer autoincrement </td>
		<td>${pur.autoincrement}</td>
	</tr>
	
	
	<tr>
		<td>Customer cardnumber</td>
		<td>${pur.cardnumber}</td>
	</tr>
	
	</c:forEach>
	</table>
	</div>
	
	<c:url value="./pages/IT22915290/updatecustomer.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="firstname" value="${firstname}"/>
		<c:param name="lastname" value="${lastname}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="plan" value="${plan}"/>
		<c:param name="amount" value="${amount}"/>
		<c:param name="auto" value="${autoincrement}"/>
	    <c:param name="cardn" value="${cardnumber}"/>
	    
	</c:url>
	
	<a href="${cusupdate}">
	<br><br><input class="edit-button" type="button" name="update" value="Update">
	</a>
	
	
	
	<c:url value="./pages/IT22915290/deletecustomer.jsp" var="cusdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="firstname" value="${firstname}"/>
		<c:param name="lastname" value="${lastname}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="plan" value="${plan}"/>
		<c:param name="amount" value="${amount}"/>
		<c:param name="auto" value="${autoincrement}"/>
	    <c:param name="cardn" value="${cardnumber}"/>
	</c:url>
	<a href="${cusdelete}">

	<input class="delete-button" type="button" name="delete" value="Delete ">
	</a>

</body>
</html>