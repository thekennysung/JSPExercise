<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.netbazaar.beans.User" 
	errorPage="errorPage.jsp"

%>
<!--you many replaced User with * to import all classes or else you would have to commas and list every single one since you can only have one @import per page -->

<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Index</title>
	</head>
	<%!  
		User vUser = new User();
		User rUser = new User();
	
		public boolean validUser(User pUser){
			if("Kenny".equals(pUser.getUserName()) && "Sung".equals(pUser.getPassword())){
				return true;
			}
			return false;
		}
		//this method reasds the request parameter form the Login-Form and store the values in the bean User
		public User getFormParameters(HttpServletRequest myRequest){
				User vUser = new User();
				
				vUser.setUserName(myRequest.getParameter("fUserName"));
				vUser.setPassword(myRequest.getParameter("fPassword"));
				return vUser;
		}
	%>
	
	<%
		//verify if submit button was press
		if(request.getParameter("login") != null){
			//get the userName and password from the HTTP request
			vUser = getFormParameters(request);
			session.setAttribute("sUser", vUser);
			//verify userName="Kenny" and password="Sung"
			if(validUser(vUser)){
				response.sendRedirect("successLogin.jsp");
			}else{
				throw new Exception("5001");
			}		
		}
	%>
	<body>
		<div class="divContent">
			<form method="post">
				<label> UserName :</label>
				<input type="text" name="fUserName">
				<br>
				<label> Password :</label>
				<input type="text" name="fPassword">
				<br>
				<input type="submit" name="login" value="Login">
			</form>
		</div>
		<br>
		<br>
		<br>
		Username = Kenny
		<br>
		Password = Sung
	</body>
</html>