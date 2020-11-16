<%--
  Created by IntelliJ IDEA.
  User: roccopaccione
  Date: 11/12/20
  Time: 9:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Register for our site!"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
    <div class="container">
        <h1>Pleas fill in your information.</h1>
        <c:if test="${requestScope.registerError != null}" >
            <div class="alert alert-danger" role="alert">
                ${requestScope.registerError}
            </div>
        </c:if>
        <form action="/register" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" class="form-control" name="username">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="text" id="email" class="form-control" name="email">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" class="form-control" name="password">
            </div>
            <div class="form-group">
                <label for="password_confirm">Confirm Password</label>
                <input type="password" id="password_confirm" class="form-control" name="password_confirm">
            </div>
        </form>
    </div>
    <div>
        <input type="submit" class="btn btn-primary btn-block">
    </div>
</body>
</html>
