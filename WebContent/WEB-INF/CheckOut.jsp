<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style><%@include file="/WEB-INF/index.css"%></style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CheckOut</title>
</head>
<body>

<div class="topnav">
 
  <a class="active" href="Homepage"><span>IRON GRUB</span>Home</a>
  <a href="CheckOrder">CheckOrder</a>
  <a href="Introduction">About Us</a>
</div>
Welcome to Checkout<br>


You are Ordering : ${pickFood.name} <br>
     			   ${pickFood.image} <br>
				  <c:if test = "${FoodSize == 2}">Large Size ${tPrice}</c:if>
                  <c:if test = "${FoodSize == 0}">Regular Size ${tPrice}</c:if>

<form action="CheckOut" method="post">
	Address:
	<input type="text" name="Address"> <br>
	Payment information: <br>
	Credit Card Number:
	<input type="text" name="CreditCardNumber"><br>
	Security Code:
	<input type="text" name="CardSecurityCode"><br>
	Name (First name):
	<input type="text" name="fName"><br>
	
	<input type="submit" value="Confirm Order">

</form>

</body>
</html>