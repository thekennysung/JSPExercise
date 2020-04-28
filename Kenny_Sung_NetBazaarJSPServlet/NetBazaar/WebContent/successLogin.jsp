<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "com.netbazaar.beans.User"
    
%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	</head>
	<%!
		User vUser = new User();
		User vUserRequest = new User();
		
	%>
	<%
		vUser = (User)session.getAttribute("sUser");
	%>
	<body>
		<div class="divHeader">
				<h1>Success Page</h1>
				<hr>
			</div>
			<br>
			<div class="divContent">
				<form method="post">
					<jsp:forward page="indexPage.jsp">
						<jsp:param value="<%=vUser.getUserName() %>" name="rUserName"/>
						<jsp:param value="<%=vUser.getPassword() %>" name="rPassword"/>
					</jsp:forward>
				</form>
			</div>
	</body>
</html>