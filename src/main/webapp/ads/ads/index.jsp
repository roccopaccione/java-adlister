<%--
  Created by IntelliJ IDEA.
  User: roccopaccione
  Date: 11/5/20
  Time: 4:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="All ads "/>
    </jsp:include>
</head>
<body>
<h1>Here is all the ads: </h1>
<c:forEach var="ad" items="${ads}">
    <h3>${ad.title}</h3>
    <p>${ad.description}</p>
</c:forEach>
</body>
</html>
