<%@page import="com.klef.jfsd.lms.model.Borrower"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    Borrower b = (Borrower) session.getAttribute("borrower");
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loan Management System</title>

    <!-- Bootstrap 4 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Custom CSS -->
 
    <%@include file="borrowernavbar.jsp"%>
</head>

<body>
<style>
        body {
            background-color: #F9C0AB;  /* Updated background color */
            font-family: Arial, sans-serif;
        }

        .card {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            padding: 20px;
            background-color: #F9C0AB;
        }

        .card h3 {
            color: #643404;
        }
        .card p {
            color: #643404;
        }

        .card-body {
            padding: 30px;
            color: #643404;
            font-weight: bolder;
        }

        .btn-primary {
            background-color:  #643404;
            border-color: #007bff;
            font-weight: bolder;
            
        }

        .btn-primary:hover {
            background-color: #643404;
            border-color: #004085;
            font-weight: bolder;
        }

        /* Input focus styling */
        input[type="text"], input[type="number"] {
            border-radius: 5px;
            border: 1px solid #ccc;
            padding: 10px;
            width: 100%;
            margin-bottom: 15px;
        }

        input[type="text"]:focus, input[type="number"]:focus {
            outline: none;
            border-color: #007bff;
        }

        .box-footer {
            text-align: center;
            margin-top: 20px;
        }

        /* Responsive design */
        @media (max-width: 768px) {
            .card-body {
                padding: 15px;
            }
        }
    </style>


</br> </br> </br> </br>
    <div class="container" style="margin-top: 90px">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-10 col-sm-12">
                <div class="card">
              
                    <h3 class="text-center">Loan Application</h3>

                    <div class="card-body">
                        <form action="insertloan" method="post">
                            <div class="row">
                                <!-- Left Side (Column 1) -->
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="bname">Name</label>
                                        <input type="text" id="bname" name="bname" class="form-control"
                                            value="<%= b != null ? b.getName().replace(" ", "&nbsp;") : "" %>" readonly />
                                    </div>

                                    <div class="form-group">
                                        <label for="samount">Amount</label>
                                        <input type="number" id="samount" name="samount" class="form-control"
                                            placeholder="Enter Amount" required />
                                    </div>

                                    <div class="form-group">
                                        <label for="purpose">Purpose</label>
                                        <input type="text" id="purpose" name="purpose" class="form-control"
                                            placeholder="Enter Purpose of Loan" required />
                                    </div>
                                </div>

                                <!-- Right Side (Column 2) -->
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="loanterm">Time Period (Months)</label>
                                        <input type="number" id="loanterm" name="loanterm" class="form-control"
                                            placeholder="Enter Time Period" required />
                                    </div>

                                    <div class="form-group">
                                        <label for="interestrate">Interest Rate (%)</label>
                                        <input type="number" id="interestrate" name="interestrate" class="form-control"
                                            placeholder="Desired Interest Rate per Month" step="0.1" required />
                                    </div>
                                </div>
                            </div>

                            <div class="box-footer">
                                <button type="submit" class="btn btn-primary">Apply</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

</html>
