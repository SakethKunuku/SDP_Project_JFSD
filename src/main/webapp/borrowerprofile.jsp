<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.klef.jfsd.lms.model.Borrower"%>
   
<%
    Borrower b = (Borrower) session.getAttribute("borrower");
%>    

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Borrower Profile</title>

    <!-- Linking Google Fonts for a more modern look -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #F4F4F9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .profile-container {
            background-color: white;
            width: 80%;
            max-width: 900px;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            padding: 30px;
            transition: all 0.3s ease-in-out;
        }

        .profile-container:hover {
            transform: scale(1.02);
        }

        h3 {
            text-align: center;
            font-size: 2rem;
            color: #333;
            margin-bottom: 30px;
        }

        .profile-details {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 15px;
            margin-bottom: 30px;
        }

        .profile-details p {
            font-size: 16px;
            color: #555;
        }

        .profile-details p strong {
            color: #333;
            font-weight: bold;
        }

        .action-buttons {
            text-align: center;
            margin-top: 20px;
        }

        .action-buttons a {
            background-color: #4CAF50;
            color: white;
            padding: 12px 24px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 18px;
            transition: background-color 0.3s ease;
        }

        .action-buttons a:hover {
            background-color: #45a049;
        }

        footer {
            text-align: center;
            background-color: #333;
            color: white;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        .profile-details p {
            font-size: 18px;
            padding: 10px;
            background-color: #f9f9f9;
            border-radius: 5px;
        }

        .profile-details p:nth-child(odd) {
            background-color: #f1f1f1;
        }

    </style>
</head>
<body>

<%@include file="borrowernavbar.jsp" %>

<div class="profile-container">
    <h3>Borrower Profile</h3>
    <div class="profile-details">
        <p><strong>Name:</strong> <%= b.getName() %></p>
        <p><strong>Gender:</strong> <%= b.getGender() %></p>
        <p><strong>Date of Birth:</strong> <%= b.getDateofbirth() %></p>
        <p><strong>Email:</strong> <%= b.getEmail() %></p>
        <p><strong>Address:</strong> <%= b.getAddress() %></p>
        <p><strong>Employment Status:</strong> <%= b.getEmpstatus() %></p>
        <p><strong>Annual Income:</strong> <%= b.getAnnual_income() %></p>
        <p><strong>Contact:</strong> <%= b.getContact() %></p>
    </div>

    <div class="action-buttons">
        <a href="updateborrowerprofile.jsp">Update Profile</a>
    </div>
</div>

<footer>
    <p>&copy; 2024 Borrower Management System. All Rights Reserved.</p>
</footer>

</body>
</html>
