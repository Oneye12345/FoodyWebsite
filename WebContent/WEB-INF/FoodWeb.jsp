<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style><%@include file="/WEB-INF/navBar.css"%></style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>${pickFood.name}</title>
</head>

<body>

	<div class="topnav" id="myTopnav">
 		 <a class="active" href="Homepage"><span>IRON GRUB</span> Home</a> 
  		<a href="CheckOrder">CheckOrder</a> 
  		<a href="Introduction">About Us</a>
  		<a href="#contact">Contact</a>
	</div>

	<div class="container">

		<div class="row">

			<div class=page-header>
				<h1><font color="orange" size="7"><center> Continue to Checkout</center></font></h1>
			</div>

			<div class="col-sm-4">

				<div class="img">
					<a href="FoodWeb?id=${pickFood.id}"> <img
						src="${pickFood.image}" width="180" height="180"></a>
				</div>
			</div>
			
			<div class="col-sm-6">
				<br> <br>
				<label class="control-lable"> <b><font color="orange" size="5" >${pickFood.name}</font></b> </label> <br>
				<label class="control-lable"> <font color="#333333" face="sans-serif">${pickFood.description}</font></label> <br>
				<label class="control-lable"> <font color="#333333">$ ${pickFood.price} </font></label> <br>
			</div>
			
			</div>
			
				<br><br><label class="control-lable"> <b><font color="#333333">OTHER Options: </font></b></label>

				<c:choose>
					<c:when test="${pickFood.size}">
						<form action='CheckOut' method='get'>
							<c:forEach items="${pickServings}" var="serving">
								<c:choose>
									<c:when test="${serving.size=='large'}">

										<div>
											<br><label class="control-lable"> <b>Size: Large Total Calories =
												${serving.calories} </b><br><br> <b>Protein:</b> ${serving.protein}g | |
												<b>Carbs:</b> ${serving.carbs}g | | <b>Fat:</b> ${serving.fat}g | | <b>Size:</b>
												Large +$2 <input type="radio" name="Size" value="2"
												checked="checked">
											</label>
										</div>

									</c:when>
									<c:otherwise>
										<div>
											<br><label class="control-lable">  <b>Size: Regular Total Calories =
												${serving.calories} </b><br><br> <b>Protein:</b> ${serving.protein}g | |
												<b>Carbs:</b> ${serving.carbs}g | | <b>Fat:</b> ${serving.fat}g | | <b>Size:</b>
												Regular +$0 <input type="radio" name="Size" value="0">
											</label>
										</div>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<input type='submit' value='Check Out'>
						</form>
						<br />
					</c:when>
					<c:otherwise>
						<form action='CheckOut' method='get'>
							<c:forEach items="${pickServings}" var="serving">
								<div>
									<br><label class="control-lable"> <b>Size: Regular Total Calories =
												${serving.calories} </b><br><br> <b>Protein:</b> ${serving.protein}g | |
												<b>Carbs:</b> ${serving.carbs}g | | <b>Fat:</b> ${serving.fat}g | | <b>Size:</b>
												Regular +$0 <input type="radio" name="Size" value="0" checked="checked">
									</label>
								</div>
							</c:forEach>

							<div class="form-group row ">
							 <label class="col-sm-1 col-form-label"><input type="submit" value="Check Out"></label>
							</div>
						</form>
						<br />
					</c:otherwise>
				</c:choose>

			</div>
	

</body>

<div class= "text-center">&copy; 2017 Iron Grub Inc., All Rights Reserved</div>

</html>

