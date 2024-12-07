<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Loan Management System</title>
<link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
    crossorigin="anonymous">

<%@include file="navbar.jsp"%>
<style>
    body {
        background-color: #F9C0AB;
    }
    .card {
        background-color: transparent;
        border-radius: 15px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        color: white;
    }
    .card h3 {
        font-weight: bold;
        color: #643404;
    }
    .form-control {
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    .form-group label {
        font-weight: bold;
        color: #643404;
    }
    .btn-primary {
        background-color: #643404;
        color: #fff;
        font-weight: bold;
        border: none;
        border-radius: 5px;
        padding: 10px 20px;
    }
    .btn-primary:hover {
        background-color: #643404;
        color: #ffffff;
        border: 1px solid #ffffff;
    }
</style>
</head>

<body>
</br></br>
    <div class="container" style="margin-top: 90px">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-10 col-sm-12">
                <div class="card">
                    <h3 class="text-center mt-3">Borrower Registration</h3>
                    <div class="card-body">
                        <form th:action="@{/loan/{id} (id=${loan.id})}" th:object="${loan}"
                            method="post" action="insertborrower">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label>Name</label>
                                    <input type="text" name="bname" th:field="*{firstName}"
                                        class="form-control" placeholder="Enter Name" />
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Select Gender</label>
                                    <select name="bgender" class="form-control">
                                        <option value="">Select</option>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                        <option value="Others">Others</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Date-of-Birth</label>
                                    <input type="date" name="bdob" th:field="dob"
                                        class="form-control" placeholder="Enter Date-of-Birth" />
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Email</label>
                                    <input type="text" name="bemail" th:field="*{email}"
                                        class="form-control" placeholder="Enter Email" />
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Address</label>
                                    <input type="text" name="baddress" th:field="address"
                                        class="form-control" placeholder="Enter Address" />
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Employment Status</label>
                                    <select name="bempstatus" class="form-control">
                                        <option value="">Select</option>
                                        <option value="Employed">Employed</option>
                                        <option value="Self Employed">Self Employed</option>
                                        <option value="UnEmployed">UnEmployed</option>
                                        <option value="Retired">Retired</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Annual Income</label>
                                    <input type="number" name="bannual_income"
                                        th:field="address" class="form-control"
                                        placeholder="Enter Annual Income" />
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Contact</label>
                                    <input type="text" name="bcontact" th:field="*{term}"
                                        class="form-control" placeholder="Enter Contact no" />
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Password</label>
                                    <input type="password" name="bpwd" th:field="*{term}"
                                        class="form-control" placeholder="Password" />
                                </div>
                            </div>
                            <div class="box-footer text-center mt-3">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
