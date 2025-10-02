<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
  <%@ include file="WEB-INF/includes/header.jsp" %>
</head>
    <body>
        <h1 class="display-4 fw-bold"><%= "Hello World!" %></h1>
        <br/>
        <a href="about"> About </a>
        Hello! The time is now <%= new java.util.Date() %>
    </body>
</html>