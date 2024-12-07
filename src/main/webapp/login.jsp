<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Borrower Login</title>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">

    <%@ include file="navbar.jsp" %>

    <style>
        /* Scoped styles for Borrower Login page */
        .borrower-login-container {
            font-family: 'Arial', sans-serif;
            background-color: #F9C0AB;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            padding: 20px;
        }

        .borrower-login-container h2 {
            color: #643404;
            margin-bottom: 20px;
        }

        .borrower-login-container form {
            background-color: transparent;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            width: 350px;
            text-align: left;
        }

        .borrower-login-container label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }

        .borrower-login-container input[type="text"],
        .borrower-login-container input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            transition: box-shadow 0.3s ease, border-color 0.3s ease;
        }

        .borrower-login-container input[type="text"]:focus,
        .borrower-login-container input[type="password"]:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
            outline: none;
        }

        .borrower-login-container input[type="submit"] {
            background-color: #643404;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 100%;
            font-weight: bold;
        }

        .borrower-login-container input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .borrower-login-container .message {
            color: red;
            margin-bottom: 15px;
            font-size: 14px;
            text-align: center;
        }

        .borrower-login-container a {
            margin-top: 15px;
            text-decoration: none;
            color: #007bff;
            font-size: 14px;
            text-align: center;
            display: block;
        }

        .borrower-login-container a:hover {
            text-decoration: underline;
        }

        .borrower-login-container hr {
            border: none;
            border-top: 2px solid #eee;
            margin: 15px 0;
        }
    </style>
</head>
<body>
    <div class="borrower-login-container">
        <!-- Display message if available -->
        <%
            String message = (String) request.getAttribute("message");
            if (message != null) {
        %>
        <p class="message"><%= message %></p>
        <%
            }
        %>

        <form action="checkborrowerlogin" method="post">
            <h2 align="center">Borrower Login</h2>
            <hr>
            <label for="username">Username:</label>
            <input type="text" id="username" name="bemail" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="bpwd" required>

            <input type="submit" value="Login">
        </form>

        <a href="borrowerregistration" style="color: brown">Register here?</a>
    </div>
</body>
</html>
