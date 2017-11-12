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
	<div class="topnav" id="myTopnav">
		<a class="active" href="Homepage"><span>IRON GRUB</span> Home</a> <a
			href="Introduction">About Us</a> <a href="#contact">Contact</a>
	</div>

	<div class="container">

		<div class=page-header>
			<h1>
				<font size="7">
					<center>Your Order</center>
				</font>
			</h1>
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
<footer><p style="position: fixed; bottom: 0; width: 100%; text-align: center">&copy;
	2017 Iron Grub Inc., All Rights Reserved</p>
</footer>
</html>