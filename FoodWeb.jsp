<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
<%@ include file="/WEB-INF/index.css"%>
>
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${pickFood.name}</title>
</head>

<body>
	<div class="topnav">

		<a class="active" href="Homepage"><span>IRON GRUB</span>Home</a> <a
			href="CheckOrder">CheckOrder</a> <a href="Introduction">About Us</a>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br> 	<h1>	OTHER Options:</h1>

	<c:choose>
		<c:when test="${pickFood.size}">
			<form action='FoodWeb' method='post'>
				<c:forEach items="${pickServings}" var="serving">
					<c:choose>
						<c:when test="${serving.size=='large'}">

							<img src="${pickFood.image}" height="250px" width="250px" align="left">

							<div class="background">
							<h4>
							${pickFood.name}<br>
								${pickFood.description}<br>
								Original:${pickFood.price}

								</h4>

								<h4>Calories :  ${serving.calories}</h4>
								 <h4> Protein:  ${serving.protein}</h4>
								 <h4>Carbs: ${serving.carbs}</h4>
								  <h4>Fat : ${serving.fat}</h4>
								  <h4>Size:
								Regular +$0
									<input type="radio" name="Size" value="2" checked="checked"><br><br>

								Large +$2
								<input type="radio" name="Size" value="2"
									checked="checked">
									</h4>
							</div>
						</c:when>
						<c:otherwise>
							<div>
								<p style="right";><img src="${pickFood.image}" height="200px" width="200px">
								Calories = ${serving.calories} | | Protein: ${serving.protein} |
								| Carbs: ${serving.carbs} | | Fat : ${serving.fat} | | Size:
								Normal +$0 <input type="radio" name="Size" value="0"></p>
							</div>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<input type='submit' value='Check Out'>
			</form>
			<br />
		</c:when>
		<c:otherwise>
			<form action='FoodWeb' method='post'>
				<c:forEach items="${pickServings}" var="serving">
					<div>
						<p style="right";><img src="${pickFood.image}" height="200px" width="200px" >
						Calories = ${serving.calories} | | Protein: ${serving.protein} | |
						Carbs: ${serving.carbs} | | Fat : ${serving.fat} | | Size: <input
							type="radio" name="Size" value="0" checked="checked">
						Normal +$0<br></p>
					</div>
				</c:forEach>

				<input type='submit' value='Check Out'>
			</form>
			<br />
		</c:otherwise>
	</c:choose>
</body>
</html>

