<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Iron Grub</title>
</head>
<body>
(Design the Website front End)
<h2>Welcome Iron Grub</h2> 
<br>Check your Order Here: <a style="text-decoration: none;"href="CheckOrder">Check Order Here</a><br>


<c:forEach items="${listFood}" var="listFood">
	<img src="${listFood.image}"><a style="text-decoration: none;"href="FoodWeb?id=${listFood.id}">${listFood.name}</a> Prices : ${listFood.price }<br>
</c:forEach>
	
	







</body>
</html>