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
				<center><h2>Watches</h2></center>
		</div>
		<br>
		<div class="divContent">
			<a href="indexPage.jsp">Home</a>
			<a href="cart.jsp">View Cart</a>
		</div>
		<form action="cart.jsp" method="post">
			<input type="checkbox" name="Patek" value=200000/>
			<label for="patek">Patek Price 200000</label>
			<br>
			<input type="checkbox" name="Nomos" value=1000/>
			<label for="nomos">Nomos Price 10000</label>
			<br>
			<input type="checkbox" name="Omega" value=500/>
			<label for="omega">Omega Price 5000</label>
			<br>
			<input type="submit" name="add2cart" value="Add to Cart"/>
		</form>
	
	</body>
</html>