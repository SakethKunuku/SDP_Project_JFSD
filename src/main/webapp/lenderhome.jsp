<%@page import="com.klef.jfsd.lms.model.Lender"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Lender l= (Lender)session.getAttribute("lender");
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="lendernavbar.jsp"%>
</head>
<body>



<br/><br/><br/><br/><br/><br/>
<div>Welcome  <%=l.getName() %> </div>
 
</body>
</html>