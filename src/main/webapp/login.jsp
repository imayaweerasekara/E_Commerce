<%--
  Created by IntelliJ IDEA.
  User: weera
  Date: 1/20/2025
  Time: 10:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LOGIN</title>
</head>
<body>

<div class="conteiner">
    <div class="card w-50 mx-auto my-5">
        <div class="card-header text-center">User Login</div>
        <div class="card-body">
            <form action="" method="post">
                <div class="form-group">
                    <label>Email</label>
                    <input type="email" class="form-control" name="login-email" placeholder="Enter Your Email " required>
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" class="form-control" name="login-password" placeholder="Enter Your Password " required>
                </div>
                <div class="text-center">
                    <button type="submit" class="btn bnt-primary">LOGIN</button>
                </div>

            </form>
        </div>
    </div>
</div>

</body>
</html>
