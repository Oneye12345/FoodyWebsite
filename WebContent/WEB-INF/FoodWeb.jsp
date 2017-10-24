<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Iron Grub - ${pickFood.name}</title>
</head>
<body>
<img src="${pickFood.image}"><br>
	<h1>${pickFood.name}</h1><br>
	${pickFood.price}<br>
	<h2>Food Description</h2>
	${pickFood.description}<br>
</body>
</html>