<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    isErrorPage="true"
    import="com.netbazaar.beans.User"
%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Login Error Page</title>
	</head>
	<%!
		User vUser = new User();
	%>
	
	<%
		vUser= (User)session.getAttribute("sUser");
		String vMessage = null;
		String vErrorCode = null;
		vErrorCode = exception.getMessage();
		if(vErrorCode.equals("5001")){
			vMessage = "Invalid UserName or Password";
		}
	%>
	<body>
	<div class="divHeader">
				<h1>Error 404</h1>
				<hr>
			</div>
			<br>
			
			<div class="divContent">
				<form mehtod="post">
					<p> Error <%= vErrorCode %>: <%= vMessage %> </p>
					<br>
					User Name or Password entered incorrectly:
					<br>
					User Name = <%= vUser.getUserName() %>
					<br>
					Password = <%= vUser.getPassword() %>
				</form>
				
			</div>
			<br>
			<a href="login.jsp">Go Back</a>
	</body>
</html>