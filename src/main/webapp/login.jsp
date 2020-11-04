<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: roccopaccione
  Date: 11/3/20
  Time: 2:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if(request.getMethod().equalsIgnoreCase("POST")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if(username.equalsIgnoreCase("admin")&& password.equalsIgnoreCase("password")){
            response.sendRedirect("/profile.jsp");
        }
    }
%>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form action="/login.jsp" method="POST" >
    <div>
        <label for="username">Username</label>
        <input id="username" name="username" type="text">
    </div>
    <div>
        <label for="password">Password</label>
        <input id="password" name="password" type="text">
    </div>
    <div>
        <input type="submit">
    </div>
</form>
</body>
</html>
