<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style><%@include file="/WEB-INF/index.css"%></style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://bootswatch.com/cyborg/bootstrap.min.css"
	rel="stylesheet" type="text/css" />

<title>CheckOut</title>
</head>
<body>


	<div class="topnav">

		<a class="active" href="Homepage"><span>IRON GRUB</span>Home</a> <a
			href="CheckOrder">CheckOrder</a> <a href="Introduction">About Us</a>
	</div>



	<div class="container">

		<div class="row">

			<div class=page-header>
				<h1>Welcome to Checkout</h1>
			</div>


			<div class="col-md-4 col-md-offset-0 col-sm-6 col-sm-offset-3">
				<label class="control-lable"> You are Ordering : ${pickFood.name} </label><br> 
				<label class="control-lable">${pickFood.image}</label> <br> 
				<label class="control-lable"> <c:if test="${FoodSize == 2}">Large Size ${tPrice}</c:if></label>
				<label class="control-lable"> <c:if test="${FoodSize == 0}">Regular Size ${tPrice}</c:if></label>

			</div>

			<div class="col-md-4 col-md-offset-0 col-sm-6 col-sm-offset-3">
				<form action="CheckOut" method="post">
					<div class=form-group>
						<label class="control-lable"> Address:</label> 
						<input class="form-control" type="text" name="Address"> <br>
						<label class="control-lable"> Payment information: </label>
						<input class="form-control" type="text" name="PaymentInformation"> <br> 
						<label class="control-lable"> Credit Card Number:</label> 
						<input class="form-control" type="text" name="CreditCardNumber"><br> 
						<label class="control-lable"> Security Code:</label> 
						<input class="form-control" type="text" name="CardSecurityCode"><br>
						<label class="control-lable"> Name (First name):</label> 
						<input class="form-control" type="text" name="fName"><br> 
						<input type="submit" value="Confirm Order">
					</div>
				</form>
			</div>
		</div>
	</div>


</body>
</html>