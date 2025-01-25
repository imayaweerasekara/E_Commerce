<%--
  Created by IntelliJ IDEA.
  User: weera
  Date: 1/23/2025
  Time: 12:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="Home">My Store</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="Home">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="Category">Category</a></li>
                <li class="nav-item"><a class="nav-link active" href="Product">Product</a></li>
                <li class="nav-item"><a class="nav-link" href="Order">Order</a></li>
                <li class="nav-item"><a class="nav-link" href="Cart">Cart</a></li>
                <li class="nav-item"><a class="nav-link" href="Logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Product Form -->
<div class="container mt-5">
    <h2 class="text-center">Add Product</h2>

    <form action="Product" method="post" class="mt-4">
        <div class="mb-3">
            <label for="productId" class="form-label">Product ID</label>
            <input type="text" class="form-control" id="productId" name="productId" placeholder="Enter Product ID" required>
        </div>
        <div class="mb-3">
            <label for="productName" class="form-label">Product Name</label>
            <input type="text" class="form-control" id="productName" name="productName" placeholder="Enter Product Name">
        </div>
        <div class="mb-3">
            <label for="categoryId" class="form-label">Category ID</label>
            <input type="text" class="form-control" id="categoryId" name="categoryId" placeholder="Enter Category ID">
        </div>
        <div class="mb-3">
            <label for="price" class="form-label">Price</label>
            <input type="number" class="form-control" id="price" name="price" placeholder="Enter Product Price">
        </div>
        <div class="mb-3">
            <label for="quantity" class="form-label">Quantity</label>
            <input type="number" class="form-control" id="quantity" name="quantity" placeholder="Enter Product Quantity">
        </div>
        <div class="mb-3">
            <label for="action" class="form-label">Action</label>
            <select class="form-control" id="action" name="action" required>
                <option value="add">Add</option>
                <option value="update">Update</option>
                <option value="delete">Delete</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary w-100">Submit</button>
    </form>

</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
