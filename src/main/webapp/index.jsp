<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
  <%@ include file="WEB-INF/public/header.jsp" %>
</head>
    <%@ include file="WEB-INF/main/components/header.jsp" %>

    <body>
        <h1 class="display-4 fw-bold"><%= "Hello World!" %></h1>
        <br/>
        <a href="about"> About </a>
        Hello! The time is now <%= new java.util.Date() %>
    </body>

    <%@ include file="WEB-INF/main/components/footer.jsp" %>
</html>