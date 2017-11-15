<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style><%@include file="/WEB-INF/navBar.css"%></style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Iron Grub | ${pickFood.name}</title>
</head>

<body>
<div class="topnav">
<a href="Introduction">ABOUT US</a>
  <a href="CheckOrder">MY ORDER</a>
  <a class="active" href="Homepage">SHOP</a>
</div>

	<div class="container">

		<div class="row">

			<div class=page-header>
				<p>
				<span style="text-align: left">
					<img class="logo-img"
						src='https://i.pinimg.com/736x/33/04/e3/3304e35f47f81180e8c8b896b5d57332--knifes-forks.jpg'
						width='80' height='80'>
						 <font color="#FF7D33" size="5">${pickFood.name}</font>
						 </span>
						 
				<span style="float: right">
				<font color="#FF7D33" size="5">CLEAN, FAST, EASY.</font>
				<span>
						
				</p>
			
		</div>
		
			<div class="col-sm-4">

				<div class="img">
					<a href="FoodWeb?id=${pickFood.id}"> <img
						src="${pickFood.image}" width="320" height="320"></a>
				</div>
			</div>
		
			<div class="col-sm-6">
				<br> <br>
				<p>
					<font color="black" size="6">Description</font>
				</p>
				<p>
				<font size="4">${pickFood.description}</font>
				</p>
			</div>

		</div>

		<br> <br> <label class="control-lable"> <b><font
				color="#333333" face="Time New Roman" size="4">OTHER Options:
			</font></b></label>

		<c:choose>
			<c:when test="${pickFood.size}">
				<form action='CheckOut' method='get'>
					<c:forEach items="${pickServings}" var="serving">
						<c:choose>
							<c:when test="${serving.size=='large'}">

								<div>
									<br> <font color="#333333" face="Time New Roman" size="4"><b>Size Large:
											 Total Calories =</b> ${serving.calories}g <br> <br>
										<b>Protein:</b> ${serving.protein}g &nbsp; <b>Carbs:</b>
										${serving.carbs}g &nbsp; <b>Fat:</b> ${serving.fat}g &nbsp; <b>Size Large:</b>
										${pickFood.price +2} </font><input type="radio" name="Size" value="2"
										checked="checked">

								</div>

							</c:when>
							<c:otherwise>
								<div>
									<br> <font color="#333333" face="Time New Roman" size="4">
										<b>Size Regular: Total Calories =</b> ${serving.calories}g <br>
										<br>  <b>Protein:</b> ${serving.protein}g &nbsp; <b>Carbs:</b>
										${serving.carbs}g &nbsp; <b>Fat:</b> ${serving.fat}g &nbsp; <b>Size Regular:</b>
										${pickFood.price} 
									</font><input type="radio" name="Size" value="0">

								</div>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<br><button type="submit" class="btn" value="Check Out"
						style="background-color: #D2691E; color: white">Check Out</button>
				</form>
				<br />
			</c:when>
			<c:otherwise>
				<form action='CheckOut' method='get'>
					<c:forEach items="${pickServings}" var="serving">
						<div>
							<br> <font color="#333333" face="Time New Roman" size="4">
								<b>Size Regular: Total Calories =</b> ${serving.calories}g <br>
								<br> <b>Protein:</b> ${serving.protein}g &nbsp; <b>Carbs:</b>
								${serving.carbs}g &nbsp; <b>Fat:</b> ${serving.fat}g &nbsp; <b>Size Regular:</b>
								${pickFood.price} 
							</font> <input type="radio" name="Size" value="0" checked="checked">

						</div>
					</c:forEach>
					<div >

						<br><button type="submit" class="btn" value="Check Out"
							style="background-color: #D2691E; color: white">Check
							Out</button>

					</div>

				</form>
				<br />
			</c:otherwise>
		</c:choose>

	</div>


</body>

<footer>
<div class = "footer"><p><span style="float:left;">
<br>&copy; 2017 Iron Grub Inc., All Rights Reserved</span>

<span style="float:right;"><img src = "https://sassets.evoice.com/evoiceImages/contact_sales.png" width= '15' height='15'/> &nbsp;323-555-5787
<br> <img src = 'https://n6-img-fp.akamaized.net/free-icon/email-envelope-outline-shape-with-rounded-corners_318-49938.jpg?size=338&ext=jpg' width= '15' height='15'/> &nbsp;info@irongrub.com
<br><img src = 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Building_font_awesome.svg/2000px-Building_font_awesome.svg.png' width='15' height = '15'/> 5151 State University Dr, 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Los Angeles, CA 90032</span></p></div>
</footer>
</footer>

</html>
