<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>musicmash-admin</title>
</head>
<body>
		<c:forEach var = "lis" items = "${repodetail}"> 
			
			<c:set var = "id" value = "${lis.id}"/>
			<c:set var = "name" value = "${lis.name}"/>
			<c:set var = "date" value = "${lis.date}"/>
			<c:set var = "desc" value = "${lis.desc}"/>
			<c:set var = "recy" value = "${lis.recy}"/>		
			
			<h1>${lis.id}</h1>
			
			</c:forEach>
</body>
</html>