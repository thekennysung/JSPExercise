<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Cart</title>
	</head>
	<body>
		<center><h1>NetBazaar</h1></center>
		<center><h3>Products in Cart</h3></center><br>
		
		<a href="indexPage.jsp">Home</a><br>
		<form method="post" action="success.jsp">
		<%	
			if(request.getParameter("add2cart")!=null){
				if(request.getParameter("Samsung")!=null){
					
					session.setAttribute("Samsung", "20000");
					out.print("<input type='checkbox' name='Samsung' value='Samsung'>Samsung Price 25000 <br>");
				}
				if(request.getParameter("Nokia")!=null){
					session.setAttribute("Nokia", "15000");
					out.print("<input type='checkbox' name='Nokia' value='Nokia'>Nokia Price 15000 <br>");
				}
				if(request.getParameter("LG")!=null){
					session.setAttribute("LG", "5000");
					out.print("<input type='checkbox' name='LG' value='LG'>LG Price 5000 <br>");
				}
				if(request.getParameter("Mac")!=null){
					session.setAttribute("Mac", "2000");
					out.print("<input type='checkbox' name='Mac' value='Mac'>Mac Price 2000 <br>");
				}
				if(request.getParameter("Asus")!=null){
					session.setAttribute("Asus", "1000");
					out.print("<input type='checkbox' name='Asus' value='Asus'>Asus Price 1000 <br>");
				}
				if(request.getParameter("Dell")!=null){
					session.setAttribute("Dell", "Dell Price 500");
					out.print("<input type='checkbox' name='Dell' value='Dell'>Dell Price 500 <br>");
				}
				if(request.getParameter("Patek")!=null){
					session.setAttribute("Patek", "200000");
					out.print("<input type='checkbox' name='Patek' value='Patek'>Patek Price 200000 <br>");
				}
				if(request.getParameter("Nomos")!=null){
					session.setAttribute("Nomos", "10000");
					out.print("<input type='checkbox' name='Nomos' value='Nomos'>Nomos Price 10000 <br>");
				}
				if(request.getParameter("Omega")!=null){
					session.setAttribute("Omega", "5000");
					out.print("<input type='checkbox' name='Omega' value='Omega'>Omega Price 5000 <br>");
				}
			}else{
	
				if(session.getAttribute("Samsung")!=null){
					
					session.setAttribute("Samsung", "Samsung");
					out.print("<input type='checkbox' name='Samsung' value='25000'>Samsung Price 25000 <br>");
				}
				if(session.getAttribute("Nokia")!=null){
					session.setAttribute("Nokia", "Nokia");
					out.print("<input type='checkbox' name='Nokia' value='15000'>Nokia Price 15000 <br>");
				}
				if(session.getAttribute("LG")!=null){
					session.setAttribute("LG", "LG");
					out.print("<input type='checkbox' name='LG' value='5000'>LG Price 5000 <br>");
				}
				if(session.getAttribute("Mac")!=null){
					session.setAttribute("Mac", "Mac");
					out.print("<input type='checkbox' name='Mac' value='10000'>Mac Price 2000 <br>");
				}
				if(session.getAttribute("Asus")!=null){
					session.setAttribute("Asus", "Asus");
					out.print("<input type='checkbox' name='Asus' value='1000'>Asus Price 1000 <br>");
				}
				if(request.getParameter("Dell")!=null){
					session.setAttribute("Dell", "Dell");
					out.print("<input type='checkbox' name='Dell' value='500'>Dell Price 500 <br>");
				}
				if(session.getAttribute("Patek")!=null){
					session.setAttribute("Patek", "Patek");
					out.print("<input type='checkbox' name='Patek' value='200000'>Patek Price 200000 <br>");
				}
				if(session.getAttribute("Nomos")!=null){
					session.setAttribute("Nomos", "Nomos");
					out.print("<input type='checkbox' name='Nomos' value='10000'>Nomos Price 10000 <br>");
				}
				if(session.getAttribute("Omega")!=null){
					session.setAttribute("Omega", "Omega");
					out.print("<input type='checkbox' name='Omega' value='5000'>Omega Price 5000 <br>");
				}
			}
		%>		
			<input type="submit" name="remove"  value="Remove from Cart">		
			<input type="submit" name="purchase" value="Purchase">
	
		</form>
		
	</body>
</html>