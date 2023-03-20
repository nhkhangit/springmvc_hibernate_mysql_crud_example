<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <title>Customers List</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>

<body>
    <div class="container">
        <div class="wrapper">
            <header class="header">
                <h2>Customer Details</h2>
            </header>
            <div class="content">
                <a href="show-customer-form" class="btn">Add Customer</a>
                <table>
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Action</th>
                    </tr>
                    <c:forEach var="customer" items="${customers}">
                        <c:url var="updateLink" value="/customer/update-form">
                            <c:param name="id" value="${customer.id}"/>
                        </c:url>
                        <c:url var="deleteLink" value="/customer/delete">
                            <c:param name="id" value="${customer.id}"/>
                        </c:url>
                        <tr>
                            <td>${customer.name}</td>
                            <td>${customer.email}</td>
                            <td>
                                <a href="${updateLink}" class="btn-link">Update</a> |
                                <a href="${deleteLink}" class="btn-link" onclick="if(!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</body>