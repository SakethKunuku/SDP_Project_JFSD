<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Admin Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
    <%@ include file="navbar.jsp" %>
</head>

<style>
    .admin-login {
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

    .admin-login h2 {
        color: #333;
        margin-bottom: 20px;
    }

    .admin-login form {
        background-color: transparent;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        width: 300px;
        text-align: left;
    }

    .admin-login label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }

    .admin-login input[type="text"],
    .admin-login input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    .admin-login input[type="submit"] {
        background-color: #643404;
        color: white;
        padding: 10px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        width: 100%;
    }

    .admin-login input[type="submit"]:hover {
        background-color: #0056b3;
    }

    .admin-login a {
        margin-top: 10px;
        text-decoration: none;
        color: #007bff;
    }

    .admin-login a:hover {
        text-decoration: underline;
    }

    .alert-danger {
        color: #a94442;
        background-color:transparent;
        padding: 1px;
        border-radius: 10px;
        margin-top: -10px;
    }
</style>

<body>
    <div class="admin-login">
        <form action="checkadminlogin" method="post">
            <h2 align="center">Admin Login</h2>
            <hr>
            <br />
            
            <label for="username">Username:</label>
            <input type="text" id="username" name="ausername" value="${param.ausername}" required>
            
            <c:if test="${not empty message and message.contains('Username')}">
                <div class="alert alert-danger">${message}</div>
            </c:if>

            <label for="password">Password:</label>
            <input type="password" id="password" name="apwd" required>

            <c:if test="${not empty message and message.contains('Password')}">
                <div class="alert alert-danger">${message}</div>
            </c:if>

            <input type="submit" value="Login">
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIKXk1lYYP8pP9QoM9B3ii1A2SHKfeyJISZni5IOdaBBzVjKvljU5" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv0z5cxgCayfpj6fuymT6C4y+6YtDr2E6d2ywZb6XDRH0H3Pff1f" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQ7OWQ6Lk7ZZFfHFl5HeQ8FvTOEKX3IbfQK9aX" crossorigin="anonymous"></script>
</body>
</html>
