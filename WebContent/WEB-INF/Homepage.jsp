<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style><%@include file="/WEB-INF/index.css"%></style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<title>Iron Grub | Clean, Fast, Easy.</title>
</head>
<body>
<div class="topnav">
 <a href="Introduction">ABOUT US</a>
  <a href="CheckOrder">MY ORDER</a>
  <a href="Homepage">SHOP</a>
</div>



<img class = "logo-img" src = 'https://i.pinimg.com/736x/33/04/e3/3304e35f47f81180e8c8b896b5d57332--knifes-forks.jpg' width= '130' height='120'>
<div class="container">
<h1>SHOP</h1>
<br>
<br>
<h3>Iron Grub</h3> 
</div>

<table border="0">
  <c:forEach items="${listFood}" var="listFood" varStatus="rowCounter">
    <c:if test="${rowCounter.count % 4 == 1}">
      <tr>
    </c:if>
    <td><center><div class="img"><a href="FoodWeb?id=${listFood.id}"> <img src="${listFood.image}" width = "180" height = "180"></a></div><br>
    			<a style="text-decoration: none; color: #696969"; href="FoodWeb?id=${listFood.id}">${listFood.name}</a> 
    			<br><font color="green">$${listFood.price}</font>
    			<br><a href="FoodWeb?id=${listFood.id}"><button type="button">Buy Now</button></a></center><br></td>
    <c:if test="${rowCounter.count % 4 == 0}">
      </tr>
    </c:if>
  </c:forEach >
</table>

</body>
<div class= "text-center">&copy; 2017 Iron Grub Inc., All Rights Reserved</div>
</html>