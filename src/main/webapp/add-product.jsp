<%--
  Created by IntelliJ IDEA.
  User: weera
  Date: 1/19/2025
  Time: 11:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>ADD PRODUCT</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  </head>
  <body>
  <h1>ADD PRODUCT</h1>

  <%
    String message = request.getParameter("message");
    String error = request.getParameter("error");
  %>
  <%
    if (message != null) {
  %>
  <div style="color: green"><%=message%>
  </div>
  <%
    }
  %>
  <%
    if (error != null) {
  %>
  <div style="color: red"><%=error%>
  </div>
  <%
    }
  %>


  <form action="add-product" method="post">
    <label for="name">Name</label><br>
    <input type="text" id="name" name="product_name"/><br><br>

    <label for="name">qty</label><br>
    <input type="text" id="qty" name="product_qty"/><br><br>

    <label for="name">Price</label><br>
    <input type="text" id="price" name="product_price"/><br><br>

    <button type="submit">Add Product</button>


  </form>
  
  </body>
</html>
