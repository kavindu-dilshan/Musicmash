<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success Page</title>

<style>
body {
    font-family: Helvetica, Arial, sans-serif;
    background-image: url("./pages/IT22915290/resources/artist-background.png");
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    color: white;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

h1 {
    text-align: center;
    font-size: 36px;
    margin: 20px 0;
}

a {
    text-decoration: none;
}

input[type="submit"] {
    background-color: #008CBA;
    border: none;
    color: white;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 10px 5px;
    cursor: pointer;
}

</style>


</head>
<body>
    <h1>Success</h1>
   <a href="./pages/IT22915290/payment.jsp">
        <input type="submit" name="submit" value="View History">
    </a>
</body>
</html>