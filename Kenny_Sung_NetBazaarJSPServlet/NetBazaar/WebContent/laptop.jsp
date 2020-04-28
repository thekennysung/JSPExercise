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
				<center><h2>Laptops</h2></center>
		</div>
		<br>
		<div class="divContent">
			<a href="indexPage.jsp">Home</a>
			<a href="cart.jsp">View Cart</a>
		</div>
		<form action="cart.jsp" method="post">
			<input type="checkbox" name="Mac" value=2000/>
			<label for="mac">Mac Price 2000</label>
			<br>
			<input type="checkbox" name="Asus" value=1000/>
			<label for="asus">Asus Price 1000</label>
			<br>
			<input type="checkbox" name="Dell" value=500/>
			<label for="dell">Dell Price 500</label>
			<br>
			<input type="submit" name="add2cart" value="Add to Cart"/>
		</form>
	
	</body>
</html>