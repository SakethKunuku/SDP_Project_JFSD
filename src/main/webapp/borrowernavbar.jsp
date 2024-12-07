<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Poppins', sans-serif;
    }
    body {
      min-height: 100vh;
    }
    nav {
      background: rgba(249, 192, 171, 0.6); /* Updated background color */
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3); /* Updated box shadow */
      padding: 7px 40px;
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      z-index: 500;
      margin-top: 10px;
      margin-bottom: 50px;
    }
    .navbar {
      display: flex;
      align-items: center;
      justify-content: space-between;
      width: 100%;
    }
    .logo a {
      display: flex;
      align-items: center;
      text-decoration: none;
    }
    .logo img {
      height: 80px; /* Logo size */
      margin-right: 0.5rem;
    }
    .nav-links {
      display: flex;
      align-items: center;
    }
    .nav-links a {
      color: #643404 !important; /* Link color */
      font-size: 1.2rem; /* Font size */
      padding: 8px 12px;
      text-transform: uppercase;
      font-weight: bolder;
      text-decoration: none; /* Remove underline */
    }
    .nav-links a:hover {
      color: #643404;
    }
    </style>
</head>
<body>
<nav>
    <div class="navbar">
      <div class="logo"><a href="#"><img src="/images/loansphere_logo2.png" alt="LoanSphere Logo"></a></div>
      <div class="nav-links">
        <a href="applyloan">APPLY LOAN</a>
        <a href="myloanrequests">MY LOAN REQUESTS</a>
        <a href="borroweractiveloans">ACTIVE LOANS</a>
        <a href="showmytransactions">TRANSACTIONS</a>
        <a href="borrowerprofile">PROFILE</a>
        <a href="borrowerlogout">LOGOUT</a>
      </div>
    </div>
</nav>
</body>
</html>
