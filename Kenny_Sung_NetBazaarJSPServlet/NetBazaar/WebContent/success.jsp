<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Enumeration" %>    
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Success</title>
	<style type="text/css">
		.p{
			color:green;
		}
	</style>
	</head>
	<% 
	if(request.getParameter("remove")!=null){
    	if(request.getParameter("Samsung")!=null){
    		session.removeAttribute("Samsung");
    	}
    	if(request.getParameter("Nokia")!=null){
    		session.removeAttribute("Nokia");
		}
    	if(request.getParameter("LG")!=null){
    		session.removeAttribute("LG");
		}
    	if(request.getParameter("Mac")!=null){
    		session.removeAttribute("Mac");
    	}
    	if(request.getParameter("Asus")!=null){
    		session.removeAttribute("Asus");
		}
    	if(request.getParameter("Dell")!=null){
    		session.removeAttribute("Dell");
		}
    	if(request.getParameter("Patek")!=null){
    		session.removeAttribute("Patek");
    	}
    	if(request.getParameter("Nomos")!=null){
    		session.removeAttribute("Nomos");
		}
    	if(request.getParameter("Omega")!=null){
    		session.removeAttribute("Omega");
		}
	    response.sendRedirect("cart.jsp");
	}
	
	String sam=request.getParameter("Samsung");
	String nok=request.getParameter("Nokia");
	String lg=request.getParameter("LG");
	String mac=request.getParameter("Mac");
	String asus=request.getParameter("Asus");
	String dell=request.getParameter("Dell");
	String patek=request.getParameter("Patek");
	String nomos=request.getParameter("Nomos");
	String omega=request.getParameter("Omega");
	%>
	<body>
		<div class="divHeader">
				<center><h1>NetBazaar</h1></center>
		</div>
		<br>
		<div class="divContent">
			<a href="indexPage.jsp">Home</a>
		</div>
		<br>
		<p>You have successfully purchased the Following items:</p>
		<ul>
		<% 
		if(request.getParameter("purchase")!=null){
			if(sam != null){
				out.print("<li>" + sam + "</li>");
			}
			if(nok != null){
				out.print("<li>" + nok + "</li>");
				}
			if(lg != null){
				out.print("<li>" + lg + "</li>");
				}
			if(mac != null){
				out.print("<li>" + mac + "</li>");
			}
			if(asus != null){
				out.print("<li>" + asus + "</li>");
				}
			if(dell != null){
				out.print("<li>" + dell + "</li>");
				}
			if(patek != null){
				out.print("<li>" + patek +"</li>");
			}
			if(nomos != null){
				out.print("<li>" + nomos + "</li>");
				}
			if(omega != null){
				out.print("<li>" + omega + "</li>");
				}
		}
		%>
		</ul>
		<%session.invalidate();%>
	</body>
</html>