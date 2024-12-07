<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style type="text/css">
    /* Styles specific to the login page */
    .login-container {
        font-family: 'Arial', sans-serif;
        background-color: #F9C0AB;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }

    .login-container h2 {
        color: #333;
        margin-bottom: 20px;
    }
    
    .login-container form {
        background-color:transparen;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        width: 300px;
        text-align: left;
    }

    .login-container label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }

    .login-container input[type="text"],
    .login-container input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    .login-container input[type="submit"] {
        background-color: #643404;
        color: white;
        padding: 10px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        width: 100%;
    }

    .login-container input[type="submit"]:hover {
        background-color: #643404;
    }

    .login-container .message {
        color: red;
        margin-bottom: 15px;
    }

    .login-container a {
        margin-top: 10px;
        text-decoration: none;
        color: #007bff;
    }

    .login-container a:hover {
        text-decoration: underline;
    }
</style>
<%@include file="navbar.jsp"%>
</head>
<body>
    <!-- Login form wrapped in a container -->
    <div class="login-container">
        <% 
        String message = (String) request.getAttribute("message");
        if (message != null) {
        %>
        <p class="message"><%=message%></p>
        <% 
        } 
        %>
        <form action="checklenderlogin" method="post">
            <h2 align="center">Lender Login</h2>
            <hr>
            <br/>
            <label for="username">Username:</label>
            <input type="text" id="username" name="lemail" required>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="lpwd" required> 
            
            <input type="submit" value="Login">
        </form>
        <a href="lenderregistration" style="color: brown">Register here?</a>
    </div>
</body>
</html>
