<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style><%@include file="/WEB-INF/index.css"%></style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Check Orders</title>
</head>
<body>
<div class="topnav">
 
  <a class="active" href="Homepage"><span>IRON GRUB</span>Home</a>
  <a href="Introduction">About Us</a>
</div>
<form action = 'CheckOrder' method = 'post'>
First Name : <input type='text' name='username' ><br>

<input type='submit' value='Check Orders'>
</form>

</body>
</html>