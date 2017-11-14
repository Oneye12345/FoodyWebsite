<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style><%@include file="/WEB-INF/navBar.css"%></style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>CheckOut</title>
</head>
<body>


<div class="topnav" id="myTopnav">
 		 <a class="active" href="Homepage"><span>IRON GRUB</span> Home</a> 
  		<a href="CheckOrder">CheckOrder</a> 
  		<a href="Introduction">About Us</a>
  		
	</div>


	<div class="container">

		<div class=page-header>
				<h1><font color="#FF7D33" size="7"> <center>Welcome to Checkout</center> </font></h1>
		</div>
		
		<div class="row">

				<div class="col-sm-4">
					<div class="img">
						<a href="FoodWeb?id=${pickFood.id}"> 
						<img src="${pickFood.image}" width = "350" height = "350"></a>
					</div>
				</div>
				
				<br>
			
				<div class="col-sm-6">
					<font size="6"><b>You are Ordering:</b></font> <br><font color="#FF7D33" size="6"><b>${pickFood.name}</b></font><br><br>
					<label class="control-lable"> <font color="#333333" face="Time New Roman" size="4">${pickFood.description}</font></label> <br><br>
				 	<label class="control-lable"><font color="#333333" face="Time New Roman" size="4"> <c:if test="${FoodSize == 2}"><b>Large Size:</b> $ ${tPrice}</c:if></font></label>
					<label class="control-lable"> <font color="#333333" face="Time New Roman" size="4"><c:if test="${FoodSize == 0}"><b>Regular Size:</b> $ ${tPrice}</c:if></font></label>
				</div>
				
		</div>		 
				


				<form action="CheckOut" method="post">
					
					  	<c:if test = "${isEmptyAlert==false}">
  					    <h5><font color="red">Please fill out all information.</font></h5>
   					    </c:if>
   					    
   					    <div class="form-group row">
							<br><br><label class="col-sm-1 col-form-label"> <font color="black" face="Time New Roman"><b>Address:</b></font></label> 
							<div class="col-sm-5">
							<input class="form-control" type="text" name="Address"><br>
							</div>
						
						</div>
						    
						<div class="form-group row">
							<label class="col-sm-1 col-form-label"> <font color="black" face="Time New Roman"><b>Payment information:</b></font> </label>
							<div class="col-sm-5">
							<input class="form-control" type="text" name="PaymentInformation"> <br> 
							</div>
						</div>
				
						<div class="form-group row">
							<label class="col-sm-1 col-form-label"> <font color="black" face="Time New Roman"><b>Credit Card Number:</b></font></label> 
							<div class="col-sm-5">
							<input class="form-control" type="text" name="CreditCardNumber"><br> 
							</div>
						</div>
						
						<div class="form-group row">
							<label class="col-sm-1 col-form-label"> <font color="black" face="Time New Roman"><b>Security Code:</b></font></label> 
							 <div class="col-sm-5">
							<input class="form-control" type="text" name="CardSecurityCode"><br>
							</div>
						</div>
						
						<div class="form-group row">
							<label class="col-sm-1 col-form-label"> <font color="black" face="Time New Roman"><b>Name (First name):</b></font></label> 
							<div class="col-sm-5">
							<input class="form-control" type="text" name="fName"><br> 
							</div>
						</div>
						
					<div class="form-group row ">
						<label class="col-sm-1 col-form-label"><br><input type="submit" value="Confirm Order"></label>
						
					</div>
				</form>
			</div>

</body>
<footer><p style=" bottom: 0; width:100%; text-align: center">&copy; 2017 Iron Grub Inc., All Rights Reserved</p></footer>
</html>