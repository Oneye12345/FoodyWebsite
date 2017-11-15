<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body> 
${pickFood.image} <br>
 You have Ordered  : ${pickFood.name} <br> 
 Address : ${address}<br>
 Your name : ${personName}<br>
 Ordered Date : ${orderedDate} <br>
 Credit Card Num : ${confirmCardNum}<br>
 Credit Card Type : ${cCardType}<br>
 
 Your Food will be arriving at your door in 2 days, 12pm - 5 pm <br>
 <br>
 <a href = "Homepage">Back to Home</a>
</body>
</html>