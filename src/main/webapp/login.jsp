<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
    <div class="container">
    <jsp:include page="partials/navbar.jsp"/>

        <h1>Please Log In</h1>
        <form action="/login" method="POST">
            <div class="form-group">
                <label for="username">Username:</label>
                <input id="username" name="username" class="form-control" type="text" placeholder="Enter Username">
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input id="password" name="password" class="form-control" type="password" placeholder="Enter Password">
            </div>
            <input type="submit" class="btn btn-primary btn-block" value="Log In">
        </form>
    </div>
</body>
</html>