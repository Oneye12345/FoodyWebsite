<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${pickFood.name}</title>
</head>

<body>
    
	${pickFood.image}
	<br> ${pickFood.name}
	<br> ${pickFood.description}
	<br> ${pickFood.price}
	<br> OTHER Options:
 
 <c:choose>
		<c:when test="${pickFood.size}">
			<form action='FoodWeb' method='post'>
				<input type="radio" name="Size" value="0"> Small +$0<br>
				<input type="radio" name="Size" value="2"> Large +2$
				 <input type='submit'>
			</form>
			<br />
		</c:when>
		<c:otherwise>
			<form action='FoodWeb' method='post'>
				<input type="radio" name="Size" value="0"> Small +$0<br>
				 <input type='submit'>
			</form>
			<br />
		</c:otherwise>
	</c:choose>
</body>
</html>