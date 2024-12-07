<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="styles.css" rel="stylesheet">
    <style>
        .navbar {
    background: rgba(249, 192, 171, 0.6); /* #F9C0AB with 70% transparency */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
    padding: 7px 40px; /* Adjust padding */
    position: fixed; /* Makes the navbar fixed */
    top: 0; /* Sticks it to the top of the viewport */
	z-index: 500;
    margin-top: 10px; /* Adds margin to the top */
    margin-bottom: 50px; /* Keeps bottom margin as required */
    width: 100%; /* Ensures the navbar takes the full width */
}

.navbar-brand {
    display: flex;
    align-items: center;
    font-size: 1.2rem;
    color: #fff !important;
}

.navbar-brand img {
    height: 80px; /* Adjust the logo size */
    margin-right: 0.5rem;
}

.navbar-nav {
    margin-left: auto; /* Push items to the right */
    display: flex;
    align-items: center;
}

.navbar-nav .nav-link {
    color: #643404 !important;
    font-size: 0.9rem;
    padding: 8px 12px;
    text-transform: uppercase;
    transition: all 0.3s ease;
    position: relative;
    font-weight: bolder;
}

.navbar-nav .nav-link:hover {
    color: #643404;
}

.navbar-nav .nav-link.active::after,
.navbar-nav .nav-link:hover::after {
    content: "";
    display: block;
    height: 2px;
    width: 100%;
    background-color: #643404;
    position: absolute;
    bottom: 0;
    left: 0;
    transition: all 0.3s ease;
}

/* When clicking, the active item gets the underline */
.navbar-nav .nav-link.active {
    color: #643404; /* Optional: keeps the color after click */
}

/* Add a smooth transition to the active state underline */
.navbar-nav .nav-link.active::after {
    transition: width 0.3s ease;
}
.navbar-toggler {
    border: none;
}
    </style>
<body>

<header>
  <nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="/images/loansphere_logo2.png" alt="LoanSphere Logo">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" href="#home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#about">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#services">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#faqs">FAQ'S</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#contact">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#contributors">Contributors</a>
                </li>
            </ul>
            <div class="dropdown ms-2">
                <button class="btn btn-primary dropdown-toggle" type="button" id="loginDropdown" data-bs-toggle="dropdown" aria-expanded="false" style="background-color: #643404">
                    Login
                </button>
                <ul class="dropdown-menu" aria-labelledby="loginDropdown">
                    <li><a class="dropdown-item" href="adminlogin">Admin Login</a></li>
                    <li><a class="dropdown-item" href="login">Borrower Login</a></li>
                    <li><a class="dropdown-item" href="lenderlogin">Lender Login</a></li>
                </ul>
            </div>
            
            <div class="dropdown ms-2">
                <button class="btn btn-primary dropdown-toggle" type="button" id="loginDropdown" data-bs-toggle="dropdown" aria-expanded="false" style="background-color: #643404">
                    Register
                </button>
                <ul class="dropdown-menu" aria-labelledby="loginDropdown">
                    <li><a class="dropdown-item" href="borrowerregistration">Borrower Reg</a></li>
                    <li><a class="dropdown-item" href="lenderregistration">Lender Reg</a></li>
                </ul>
            </div>
        </div>
    </div>
</nav>


</header>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>























