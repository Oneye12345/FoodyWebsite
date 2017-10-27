<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style><%@include file="/WEB-INF/index.css"%></style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${pickFood.name}</title>
</head>

<body>
<div class="topnav">
 
  <a class="active" href="Homepage"><span>IRON GRUB</span>Home</a>
  <a href="Introduction">About Us</a>
</div>

	
	${pickFood.image}
	<br> ${pickFood.name}
	<br> ${pickFood.description}
	<br> ${pickFood.price}
	<br> OTHER Options:

	<c:choose>
		<c:when test="${pickFood.size}">
			<form action='CheckOut' method='get'>
				<c:forEach items="${pickServings}" var="serving">
					<c:choose>
						<c:when test="${serving.size=='large'}">
						    
							<div>
								Calories = ${serving.calories} | | Protein: ${serving.protein} |
								| Carbs: ${serving.carbs} | | Fat : ${serving.fat} | | Size:
								Large +$2 <input type="radio" name="Size" value="2"
									checked="checked">
							</div>

						</c:when>
						<c:otherwise>
							<div>
								Calories = ${serving.calories} | | Protein: ${serving.protein} |
								| Carbs: ${serving.carbs} | | Fat : ${serving.fat} | | Size:
								Normal +$0 <input type="radio" name="Size" value="0">
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
						Calories = ${serving.calories} | | Protein: ${serving.protein} | |
						Carbs: ${serving.carbs} | | Fat : ${serving.fat} | | Size: <input
							type="radio" name="Size" value="0" checked="checked">
						Normal +$0<br>
					</div>
				</c:forEach>

				<input type='submit' value='Check Out'>
			</form>
			<br />
		</c:otherwise>
	</c:choose>
</body>
</html>

