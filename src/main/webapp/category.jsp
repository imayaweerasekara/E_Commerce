<%--
  Created by IntelliJ IDEA.
  User: weera
  Date: 1/23/2025
  Time: 12:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Category Management</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Product Management</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="product.jsp">Products</a></li>
                <li class="nav-item"><a class="nav-link active" href="category.jsp">Categories</a></li>
                <li class="nav-item"><a class="nav-link" href="orders.jsp">Orders</a></li>
                <li class="nav-item"><a class="nav-link" href="logout.jsp">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container mt-4">
    <h2>Manage Categories</h2>

    <!-- Form Section -->
    <form action="CategoryServlet" method="post" class="mt-4">
        <div class="mb-3">
            <label for="categoryId" class="form-label">Category ID</label>
            <input type="text" class="form-control" id="categoryId" name="categoryId" placeholder="Enter Category ID" required>
        </div>
        <div class="mb-3">
            <label for="categoryName" class="form-label">Category Name</label>
            <input type="text" class="form-control" id="categoryName" name="categoryName" placeholder="Enter Category Name">
        </div>
        <div class="mb-3">
            <label for="action" class="form-label">Action</label>
            <select class="form-control" id="action" name="action" required>
                <option value="add">Add Category</option>
                <option value="update">Update Category</option>
                <option value="delete">Delete Category</option>
                <option value="view">View Categories</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary w-100">Submit</button>
    </form>

    <!-- Categories Table -->
    <div class="mt-5">
        <h3>Category List</h3>
        <table class="table table-striped">
            <thead>
            <tr>
                <th>Category ID</th>
                <th>Category Name</th>
            </tr>
            </thead>
            <tbody>
            <%-- This section will be dynamically populated by the servlet --%>
            </tbody>
        </table>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


