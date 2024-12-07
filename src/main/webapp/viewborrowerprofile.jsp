<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

   
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Home</title>

</head>
<body>
<%@include file="adminnavbar.jsp" %>
<br/><br/><br/><br/>
<h3 align="center">Borrower Profile</h3>


<div align="center" style="margin-top: 100px">
 <p><strong>Borrower ID:</strong> ${borrower.id}</p><br/>
 NAME: ${borrower.name}<br/>
GENDER : ${borrower.gender}<br/>
DOB : ${borrower.dateofbirth}<br/>

EMAIL : ${borrower.email}<br/>
ADDRESS : ${borrower.address}<br/>
EMPLOYEMENT STATUS : ${borrower.empstatus}  <br/>
ANNUAL INCOME : ${borrower.annual_income}  <br/>
CONTACT : ${borrower.contact} <br/>
PASSWORD : ${borrower.password} <br/>

<a href="adminupdatebrprofile?bid=${borrower.id}">update?</a>
</div>


</div>
</body>
</html>