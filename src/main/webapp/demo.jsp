
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		String chao = "hello world demoooooooo";


	%>
	
	<br>
	
	<%=chao %>
	
	<form action ="LoginProcesser" method ="get">
	Username: <input type="text" name="username"> <br >
	Password: <input type="password" name="passwd"> <br>
	<input type="submit" value="login">
	
	</form>
	

	
	

	
</body>
</html>