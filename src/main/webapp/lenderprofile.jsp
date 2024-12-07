<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.klef.jfsd.lms.model.Lender"%>
   
<%
Lender l = (Lender)session.getAttribute("lender");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lender Home</title>

</head>
<body>
<%@include file="lendernavbar.jsp" %>
<h3 align="center">My Profile</h3>
<div align="center" style="margin-top: 100px" >
NAME : <%=l.getName() %><br/>
GENDER : <%=l.getGender()%><br/>
DOB : <%=l.getDateofbirth() %><br/>
EMAIL : <%=l.getEmail() %><br/>
ADDRESS : <%=l.getAddress() %><br/>
CONTACT : <%=l.getContact() %><br/>

<a href="updatelenderprofile.jsp">update?</a>
</div>
</body>
</html>