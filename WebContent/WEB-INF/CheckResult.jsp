<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style><%@ include file="/WEB-INF/navBar.css"%></style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>${currentFood}</title>
</head>
<body>
	<div class="topnav">
<a href="Introduction">ABOUT US</a>
  <a href="CheckOrder">MY ORDER</a>
  <a class="active" href="Homepage">SHOP</a>
</div>

	<div class="container">

		<div class=page-header>
			
				<p>
				<span style="text-align: left">
					<img class="logo-img"
						src='https://i.pinimg.com/736x/33/04/e3/3304e35f47f81180e8c8b896b5d57332--knifes-forks.jpg'
						width='80' height='80'>
						 <font color="#FF7D33" size="5">Your Order</font>
						 </span>
						 
				<span style="float: right">
				<font color="#FF7D33" size="5">CLEAN, FAST, EASY.</font>
				</span>
						
				</p>
			

		</div>

		<div class="row">

			<div class="form-group row">
				<label class="col-form-label"><b>You Have Order:</b><br></label>
				
			<c:forEach items="${listFood}" var="food" varStatus="rowStatus">
				<c:forEach items="${listBFood}" var="foodId" varStatus="rowCount">
					<c:if test="${food.id == foodId.id}">
           	${food.name} Amount:  ${foodId.amountBought}<br>

					</c:if>
				</c:forEach>
			</c:forEach>
		</div>
		</div>
	</div>

</body>
<footer>

<div class="footer">
	<p>
	<br><br><br><br><span style="float: left;"> <br> &copy; 2017 Iron Grub Inc., All Rights
			Reserved
		</span> <span style="float: right;"><img
			src="https://sassets.evoice.com/evoiceImages/contact_sales.png"
			width='15' height='15' /> &nbsp;323-555-5787 <br> <img
			src='https://n6-img-fp.akamaized.net/free-icon/email-envelope-outline-shape-with-rounded-corners_318-49938.jpg?size=338&ext=jpg'
			width='15' height='15' /> &nbsp;info@irongrub.com <br> <img
			src='https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Building_font_awesome.svg/2000px-Building_font_awesome.svg.png'
			width='15' height='15' /> 5151 State University Dr, <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Los
			Angeles, CA 90032</span>
	</p>
</div>
</footer>

</html>