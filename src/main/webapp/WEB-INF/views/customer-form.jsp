<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add Customer</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>

<body>
<div class="container">
    <div class="wrapper">
        <header class="header">
            <h2>Customer Detail</h2>
        </header>
        <div class="form-wrapper">
            <form:form cssClass="form" action="save" modelAttribute="customer" method="post">
                <form:hidden path="id"/>
                <div class="form-group">
                    Name: <form:input path="name" class="form-control"/>
                </div>
                <div class="form-group">
                    Email: <form:input path="email" class="form-control"/>
                </div>
                <div class="form-group">
                    <input type="submit" class="btn">
                </div>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>
