<%@page import="com.klef.jfsd.lms.model.Borrower"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Loan Management System</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<%@include file="adminnavbar.jsp"%>

<style>
    /* General Styles */
    body {
      font-family: Arial, sans-serif;
      background-color: #f3f3f3;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .popup-button {
      padding: 10px 20px;
      font-size: 16px;
      background-color: #28a745;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .popup-button:hover {
      background-color: #28a745;
    }

    /* Pop-Up Overlay */
    .popup-overlay {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.5);
      display: none;
      justify-content: center;
      align-items: center;
      z-index: 1000;
    }

    /* Pop-Up Card */
    .popup-card {
      background: white;
      width: 90%;
      max-width: 400px;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
      text-align: center;
    }

    .popup-card h2 {
      margin: 0 0 15px;
    }

    .popup-card form {
      display: flex;
      flex-direction: column;
    }

    .popup-card label {
      text-align: left;
      margin-bottom: 5px;
      font-weight: bold;
    }

    .popup-card input,
    .popup-card textarea {
      margin-bottom: 15px;
      padding: 10px;
      font-size: 14px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    .popup-card textarea {
      resize: none;
      height: 80px;
    }

    .form-buttons {
      display: flex;
      justify-content: space-between;
    }

    .submit-button,
    .cancel-button {
      padding: 10px 20px;
      font-size: 14px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .submit-button {
      background-color: #28a745;
      color: white;
    }

    .submit-button:hover {
      background-color: #218838;
    }

    .cancel-button {
      background-color: #dc3545;
      color: white;
    }

    .cancel-button:hover {
      background-color: #c82333;
    }
  </style>
</head>


<body>
<br><br>

	
	


<div class ="container">
    
 

    <table class = "table table-striped table-bordered">
        <thead class = "table-dark">
        <tr>
      		<th>  ID</th>
            <th> Borrower Name</th>
            <th> Email </th>
            <th> Profile</th>
            <th> Loan Requests </th>
            <th> Transactions</th>
            
        
        </tr>
        </thead>
        
    <c:forEach items="${borrowerslist}" var="borrower">
	<tr>	
	
	<td> <c:out value="${borrower.id}"></c:out> </td>
     	
	<td> <c:out value="${borrower.name}"></c:out> </td>
	
	<td> <c:out value="${borrower.email}"></c:out> </td>
	
	<td> <a href="viewborrowerprofile?bid=${borrower.id}"><c:out value="Profile"></c:out></a> </td>
	<td> <a href="viewborrowerloans?bname=${borrower.name}"><c:out value="Loans"></c:out></a> </td>
	<td> <a href="viewborrowertransactions?bname=${borrower.name}"><c:out value="Transactions"></c:out></a> </td>
	
	
	</tr>
	
	</c:forEach>
	</table>
	
</div>

</body>
</html>




















