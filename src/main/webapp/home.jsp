<%--
  Created by IntelliJ IDEA.
  User: weera
  Date: 1/24/2025
  Time: 2:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home</title>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<!--    ------------------- Navbar -->

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">MyApp</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="home.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="category.jsp">Category</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="product.jsp">Products</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="users.jsp">Users</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="orders.jsp">Orders</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="order_details.jsp">Order Details</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="cart.jsp">Cart</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-danger" href="logout.jsp">Log Out</a>
        </li>
      </ul>
    </div>
  </div>
</nav>


<!--    -----------------------Home Page Content -->
<div class="container mt-5">
  <h1 class="text-center">Welcome to MyApp!</h1>
  <p class="text-center">
    Use the navigation bar above to access different sections.
  </p>

          <!--      ================== Feature Sections -->

  <div class="row mt-4">
    <div class="col-md-4">
      <div class="card">
        <div class="card-body">
                <%--  ========category--%>
          <h5 class="card-title">Category Management</h5>
          <p class="card-text">Add, update, or delete categories.</p>
          <a href="category.jsp" class="btn btn-primary">Go to Categories</a>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card">
        <div class="card-body">
                <%--  =======product--%>
          <h5 class="card-title">Product Management</h5>
          <p class="card-text">Add, update, or delete products.</p>
          <a href="product.jsp" class="btn btn-primary">Go to Products</a>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card">
        <div class="card-body">
                <%-- ==========user--%>
          <h5 class="card-title">User Management</h5>
          <p class="card-text">Manage user accounts and details.</p>
          <a href="users.jsp" class="btn btn-primary">Go to Users</a>
        </div>
      </div>
    </div>
  </div>

  <div class="row mt-4">
    <div class="col-md-4">
      <div class="card">
        <div class="card-body">
              <%--  ========orders--%>
          <h5 class="card-title">Orders</h5>
          <p class="card-text">View and manage customer orders.</p>
          <a href="orders.jsp" class="btn btn-primary">Go to Orders</a>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card">
        <div class="card-body">

          <h5 class="card-title">Order Details</h5>
          <p class="card-text">View details for specific orders.</p>
          <a href="order_details.jsp" class="btn btn-primary">Go to Order Details</a>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card">
        <div class="card-body">

          <h5 class="card-title">Cart</h5>
          <p class="card-text">View and manage the cart.</p>
          <a href="cart.jsp" class="btn btn-primary">Go to Cart</a>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


