<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard - Loan Management System</title>
<%@include file="adminnavbar.jsp"%>
<style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }
        .navbar {
            background-color: #333;
            color: white;
            padding: 10px 20px;
            text-align: center;
        }
        .container {
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h1, h2 {
            color: #444;
        }
        .section {
            margin-bottom: 20px;
        }
        .section h2 {
            border-bottom: 2px solid #8A6565;
            padding-bottom: 5px;
        }
        ul {
            list-style: none;
            padding: 0;
        }
        ul li {
            margin: 10px 0;
            line-height: 1.6;
        }
        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #666;
        }
    </style>
</head>
<body>

    <div class="navbar">
        <h1>Admin Dashboard - Loan Management System</h1>
    </div>

    <div class="container">
        <h1>Welcome, Admin!</h1>
        <p>Use this dashboard to manage Borrowers, Lenders, and the overall operations of the Loan Management System.</p>

        <div class="section">
            <h2>Actions for Borrowers</h2>
            <ul>
                <li>View and manage all borrower accounts.</li>
                <li>Authorize or reject borrower registration requests.</li>
                <li>Monitor and approve borrower loan applications.</li>
                <li>Track borrower payment history and outstanding balances.</li>
                <li>Suspend or deactivate borrower accounts for policy violations.</li>
                <li>Update borrower details such as contact information or address.</li>
                <li>Generate reports on borrower trends and repayment patterns.</li>
            </ul>
        </div>

        <div class="section">
            <h2>Actions for Lenders</h2>
            <ul>
                <li>View and manage all lender accounts.</li>
                <li>Authorize or reject lender registration requests.</li>
                <li>Assign loan applications to appropriate lenders.</li>
                <li>Track lender activities, such as disbursements and active loans.</li>
                <li>Suspend or deactivate lender accounts for inactivity or violations.</li>
                <li>Update lender details such as contact information or funding capacity.</li>
                <li>Generate reports on lender contributions and trends.</li>
            </ul>
        </div>

        <div class="section">
            <h2>Shared Admin Actions</h2>
            <ul>
                <li>Monitor system-wide statistics, including active users and loans.</li>
                <li>Handle borrower and lender complaints or queries efficiently.</li>
                <li>Send notifications and alerts about account status or payments.</li>
                <li>Define and update policies and guidelines for the platform.</li>
            </ul>
        </div>
    </div>

    <div class="footer">
        &copy; 2024 Loan Management System. All rights reserved.
    </div>

</body>
</html>