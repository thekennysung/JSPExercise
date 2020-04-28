<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Mobiles</title>
	<style type="text/css">
	
	</style>
	</head>
	<body>
		<div class="divHeader">
				<center><h1>NetBazaar</h1></center>
				<center><h2>Mobiles</h2></center>
		</div>
		<br>
		<div class="divContent">
			<a href="indexPage.jsp">Home</a>
			<a href="cart.jsp">View Cart</a>
		</div>
		<form action="cart.jsp" method="post">
			<input type="checkbox" name="Samsung" value="20000"/>
			<label for="samsung">Samsung Price 25000</label>
			<br>
			<input type="checkbox" name="Nokia" value=15000/>
			<label for="nokia">Nokia Price 15000</label>
			<br>
			<input type="checkbox" name="LG" value=5000/>
			<label for="LG">LG Price 5000</label>
			<br>
			<input type="submit" name="add2cart" value="Add to Cart"/>
		</form>
	
	</body>
</html>