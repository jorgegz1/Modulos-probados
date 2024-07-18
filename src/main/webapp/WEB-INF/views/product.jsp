<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h2>Product List</h2>
<form action="products" method="post">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required>
    <label for="price">Price:</label>
    <input type="number" step="0.01" id="price" name="price" required>
    <button type="submit">Add Product</button>
</form>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
    </tr>
    <c:forEach var="product" items="${products}">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
