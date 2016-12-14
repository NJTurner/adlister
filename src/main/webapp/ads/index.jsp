<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nicholasturner
  Date: 12/14/16
  Time: 11:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Ads Page"/>
    </jsp:include>
</head>
<body>
<jsp:include page="../partials/navbar.jsp"/>
<div class="container">
    <h1>Check Out Our Ads!</h1>
        <c:forEach var="adElement" items="${adList}">
    <div class="col-md-6">
            <h2>${adElement.getTitle()}</h2>
            <p>${adElement.getDescription()}</p>
    </div>
        </c:forEach>

</div>
</body>
</html>
