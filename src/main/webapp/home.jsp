<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loan Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <link href="styles.css" rel="stylesheet">
    <style>
        /* General Styling */
        body, html {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            scroll-behavior: smooth;
            background: #F9C0AB;
        }

        header {
            color: #fff;
            text-align: center;
        }
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



.btn-primary {
    background-color: #FFD700;
    border: none;
    color: #643404;
    font-weight: bold;
    border-radius: 20px;
    transition: all 0.3s ease;
}

.btn-primary:hover {
    background-color: #FFB800;
    color: white;
}
        /* Carousel Styling */
        .carousel-inner img {
            height: 70vh;
            object-fit: cover;
        }

        .carousel-caption {
            background: rgba(0, 0, 0, 0.5);
            padding: 10px 20px;
            border-radius: 10px;
        }
        
            /* Fade-in animation for navbar */
        @keyframes fadeInNav {
            0% { opacity: 0; }
            100% { opacity: 1; }
        }

        /* Hero Section */
        .hero {
            position: relative;
            padding: 100px 20px;
            background-image: url('your-background-image.jpg'); /* Replace with your image */
            background-size: cover;
            background-position: center;
            animation: fadeInHero 1.0s ease-out;
        }

        .hero-content h1 {
            font-size: 3.5em;
            font-weight: bold;
            color:#643404;
            margin-bottom: 10px;
            animation: moveUpAndDown 3s ease-in-out infinite;
            margin-left : 200px;
        }

        .hero-content .quote {
            font-size: 1.5em;
            margin-bottom: 30px;
            animation: slideInFromRight 1.5s ease-out;
            margin-left : 500px;
        }

        .cta-btn-container {
            opacity: 0; /* Initially hidden */
            animation: fadeInButton 1s ease-out 3.5s forwards; /* Appear after the animation */
        }

        .cta-btn {
            background-color: #eb9e1b;
            color: white;
            padding: 15px 30px;
            font-size: 1.2em;
            border-radius: 5px;
            text-decoration: none;
            margin-top: 20px;
            margin-left : 600px;
        }

        .cta-btn:hover {
            background-color: #d88e14;
        }

        /* Cloud Animation (Up and Down) */
        .clouds {
            position: absolute;
            top: 50%;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('clouds.svg') repeat-x; /* Replace with your cloud image */
            animation: moveCloudsUpDown 6s ease-in-out infinite;
        }

        @keyframes moveCloudsUpDown {
            0% { transform: translateY(0); }
            50% { transform: translateY(-20px); }
            100% { transform: translateY(0); }
        }

        /* Text Animation for Hero Section */
        @keyframes moveUpAndDown {
            0% { transform: translateY(0); }
            50% { transform: translateY(-30px); }
            100% { transform: translateY(0); }
        }

        @keyframes fadeInHero {
            0% { opacity: 0; }
            100% { opacity: 1; }
        }

        /* Button Fade In Animation */
        @keyframes fadeInButton {
            0% { opacity: 0; }
            100% { opacity: 1; }
        }
        
        
         /* About Us Section */
        .about-section {
            text-align: center;
            margin-top: 40px;
        }

        .about-section h2 {
            font-size: 2.5em;
            color: #643404;
            margin-bottom: 20px;
            font-weight: bolder;
        }

        .about-section p {
            font-size: 1.2em;
            line-height: 1.6;
            margin-bottom: 50px;
            color: black;
            max-width: 900px;
            margin-left: auto;
            margin-right: auto;
        }

        /* Roles and Functions */
        .roles {
            display: flex;
            flex-direction: column;
            gap: 20px;
            margin-bottom: 60px;
            color: #643404;
        }

        .role {
            background-color:transparent;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .role:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .role h3 {
            font-size: 1.8em;
            color: #643404;;
            margin-bottom: 15px;
            font-weight: bolder;
            
        }

        .role p {
            font-size: 1.1em;
            color: black;
        }

        /* Services Section */
        #services {
                        background: #F9C0AB;

            padding: 50px 20px;
        }

        /* Card Styling */
        .card-container {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            gap: 20px;
        }

        .card {
            background: #F9C0AB;
            border: 1px solid #ddd;
            border-radius: 8px;
            width: 850px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .card-body {
            padding: 15px;
        }

        .card-title {
            font-size: 1.5rem;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .card-description {
            font-size: 1rem;
            color: #555;
            margin-bottom: 15px;
        }

        .card-button {
            background-color: #643404;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .card-button:hover {
            background-color: #8A6565;
        }

        /* Parallax Section */
        .parallax {
            background-image: url('loan-bg.jpg');
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            height: 60vh;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 2rem;
            font-weight: bold;
            background: #F9C0AB;   
        }

        /* About Section */
        #about {
          background: #F9C0AB;
            padding: 50px 20px;
        }
        
       .faq-section {
            margin: 20px;
            font-family: Arial, sans-serif;
        }

        .faq-item {
            margin-bottom: 15px;
        }

        .faq-btn {
            background-color: #643404;
            color: white;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
            font-size: 16px;
            margin-right: 10px;
            margin-left:80px;
            transition: background-color 0.3s ease;
        }

        .faq-btn:hover {
            background-color: #8A6565;
        }

        .question {
            font-size: 18px;
            font-weight: bold;
            display: inline-block;
            margin-right: 10px;
        }

        .answer {
            display: none;
            padding: 10px;
            margin-top: 5px;
            background-color: #EAC7AF;
            border-left: 3px solid #643404;
            font-size: 16px;
            margin-left:80px;
        }
        

        /* Contact Form */
        #contact {
            padding: 50px 20px;
        }

        .form-control {
            border-radius: 0.5rem;
        }

        .btn-primary {
            border-radius: 0.5rem;
        }
        
        

        /* Footer Styling */
        footer {
            background: #333;
            color: #fff;
            text-align: center;
            padding: 20px 10px;
        }

        /* Contributors Section */
        #contributors {
            background: #F9C0AB;
            padding: 50px 20px;
            text-align: center;
        }

        #contributors h2 {
            margin-bottom: 30px;
        }

        .contributor {
            margin: 15px;
            display: inline-block;
            text-align: center;
        }

        .contributor img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .contributor a {
            display: block;
            margin-top: 10px;
            color: #333;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .contributor a:hover {
            color: #ff9800;
        }
        
        

        /* Footer Styling */
        footer {
            background: #333;
            color: #fff;
            text-align: center;
            padding: 20px 10px;
        }
    </style>
</head>
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
                <button class="btn btn-primary dropdown-toggle" type="button" id="loginDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                    Login
                </button>
                <ul class="dropdown-menu" aria-labelledby="loginDropdown">
                    <li><a class="dropdown-item" href="adminlogin">Admin Login</a></li>
                    <li><a class="dropdown-item" href="login">Borrower Login</a></li>
                    <li><a class="dropdown-item" href="lenderlogin">Lender Login</a></li>
                </ul>
            </div>
            
            <div class="dropdown ms-2">
                <button class="btn btn-primary dropdown-toggle" type="button" id="loginDropdown" data-bs-toggle="dropdown" aria-expanded="false">
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



<div id = "home">
<br/><br/><br/><br/><br/></br>

 <div class="clouds"></div>

    <!-- Hero Content -->
    <div class="hero">
        <div class="hero-content">
            <!-- Moving Text -->
            <h1>Your Financial Journey Starts Here</h1>

            <!-- Quote -->
            <p class="quote">"Empower your financial future with us"</p>

            <!-- Start Your Application Button (Initially Hidden) -->
            <div class="cta-btn-container">
                <a href="#about" class="cta-btn">Start Your Application</a>
            </div>
        </div>
    </div>
    </div>
 
 
 
 
 <div id = "about">
 
 <section class="about-section">
 <br/><br/><br/><br/>
 
    <h2>Project Overview</h2>
    <p>
        Our platform is designed to simplify the loan process by providing a user-friendly interface for both lenders and borrowers.
        Admins oversee the platform operations, while lenders create loan offers and borrowers apply for loans. The platform ensures that financial analysts can evaluate risks and provide reports to maintain stability.
    </p>
</section>

<section class="roles">
    <div class="role">
        <h3>Admin</h3>
        <p>
            The Admin manages platform operations, user accounts, and ensures that all activities comply with the platform’s rules. They also monitor and ensure data security, keeping the system safe and reliable.
        </p>
    </div>

    <div class="role">
        <h3>Lender</h3>
        <p>
            Lenders are responsible for creating loan offers and managing interactions with borrowers. They track the repayment schedules and ensure that the loans are being paid back according to the agreed terms.
        </p>
    </div>

    <div class="role">
        <h3>Borrower</h3>
        <p>
            Borrowers apply for loans based on their financial needs. They can track their loan repayment schedules and update their loan details as required, ensuring they stay on top of their financial commitments.
        </p>
    </div>

    <div class="role">
        <h3>Financial Analyst</h3>
        <p>
            Financial Analysts assess the loan data, evaluate the risks associated with loans, and generate detailed reports. They ensure that the platform remains financially stable by analyzing and providing insights based on the loan activities.
        </p>
    </div>
</section>
 </div>
    
<!-- Services Section -->
<!-- Services Section with Carousel -->
<!-- Services Section with Carousel -->
<div id="services" class="carousel slide" data-bs-ride="carousel">
<br/><br/><br/></br></br>


    <div class="container text-center">
        <h2>Our Services</h2>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="card-container d-flex justify-content-center">
                    <div class="card">
                        <img src="/images/service1.jpg" alt="Loan Application">
                        <div class="card-body">
                            <h5 class="card-title">Loan Application</h5>
                            <p class="card-description">Apply for loans easily and securely.</p>
                            <button class="card-button">Learn More</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="card-container d-flex justify-content-center">
                    <div class="card">
                        <img src="/images/loan service 2.jpg" alt="Loan Management">
                        <div class="card-body">
                            <h5 class="card-title">Loan Management</h5>
                            <p class="card-description">Manage your loans efficiently.</p>
                            <button class="card-button">Learn More</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="card-container d-flex justify-content-center">
                    <div class="card">
                        <img src="/images/loan service 3.jpg" alt="Financial Advice">
                        <div class="card-body">
                            <h5 class="card-title">Financial Advice</h5>
                            <p class="card-description">Get professional financial guidance.</p>
                            <button class="card-button">Learn More</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Repeat for other services -->
            <div class="carousel-item">
                <div class="card-container d-flex justify-content-center">
                    <div class="card">
                        <img src="/images/loan service 4.jpg" alt="Loan Management">
                        <div class="card-body">
                            <h5 class="card-title">Loan Management</h5>
                            <p class="card-description">Manage your loans efficiently.</p>
                            <button class="card-button">Learn More</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="card-container d-flex justify-content-center">
                    <div class="card">
                        <img src="/images/loan project 2.jpg" alt="Loan Management">
                        <div class="card-body">
                            <h5 class="card-title">Loan Management</h5>
                            <p class="card-description">Manage your loans efficiently.</p>
                            <button class="card-button">Learn More</button>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#services" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#services" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
        </button>
    </div>
</div>

<div id = "faqs">
<div class="faq-section">
<br/><br/><br/><br/><br/><br/><br/><br/>

         <h2 align="center" style="color:#643404;font-weight: bolder;" >Frequently Asked Questions</h2>
         <br/><br/>

        <div class="faq-item">
            <button class="faq-btn" onclick="toggleAnswer('answer1', this)">+</button>
            <div class="question">What is a loan management system?</div>
            <div id="answer1" class="answer">
                A loan management system helps track and manage the process of loans, including approvals, repayments, and record-keeping.
            </div>
        </div>

        <div class="faq-item">
            <button class="faq-btn" onclick="toggleAnswer('answer2', this)">+</button>
            <div class="question">How do I apply for a loan?</div>
            <div id="answer2" class="answer">
                You can apply for a loan through our online platform by filling out an application form and submitting the necessary documents.
            </div>
        </div>

        <div class="faq-item">
            <button class="faq-btn" onclick="toggleAnswer('answer3', this)">+</button>
            <div class="question">What are the loan interest rates?</div>
            <div id="answer3" class="answer">
                Loan interest rates vary depending on the type of loan you are applying for. Rates are calculated based on your credit history and loan amount.
            </div>
        </div>

        <div class="faq-item">
            <button class="faq-btn" onclick="toggleAnswer('answer4', this)">+</button>
            <div class="question">Can I prepay my loan?</div>
            <div id="answer4" class="answer">
                Yes, you can make prepayments on your loan. However, please check your loan agreement for any prepayment penalties or conditions.
            </div>
        </div>

        <div class="faq-item">
            <button class="faq-btn" onclick="toggleAnswer('answer5', this)">+</button>
            <div class="question">How do I track my loan status?</div>
            <div id="answer5" class="answer">
                You can track your loan status by logging into your account and checking the loan section, which will display the current loan status and repayment details.
            </div>
        </div>
    </div>

</div>


<section id="contact">
    <div class="container">
    <br/><br/><br/><br/><br/>
    
    
        <h2>Contact Us</h2>
        <form>
            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" placeholder="Enter your name">
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" placeholder="Enter your email">
            </div>
            <div class="mb-3">
                <label for="message" class="form-label">Message</label>
                <textarea class="form-control" id="message" rows="3" placeholder="Write your message"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</section>

<section id="contributors">
    <div class="container">
        <h2>Contributors</h2>
        
        <div class="contributor">
            <img src="contributor2.jpg" alt="Contributor 2">
            <a href="https://github.com/contributor2" target="_blank">GitHub</a>
            <a href="https://linkedin.com/in/contributor2" target="_blank">LinkedIn</a>
        </div>
        <div class="contributor">
            <img src="contributor3.jpg" alt="Contributor 3">
            <a href="https://github.com/contributor3" target="_blank">GitHub</a>
            <a href="https://linkedin.com/in/contributor3" target="_blank">LinkedIn</a>
        </div>
    </div>
</section>

<footer>
    <p>© 2024 Loan Management System. All rights reserved.</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js">

document.querySelectorAll('.navbar-nav .nav-link').forEach(link => {
    link.addEventListener('click', function() {
        // Remove the active class from all links
        document.querySelectorAll('.navbar-nav .nav-link').forEach(item => item.classList.remove('active'));
        // Add the active class to the clicked link
        this.classList.add('active');
    });
});


</script>


<script>
function toggleAnswer(answerId, button) {
    var answer = document.getElementById(answerId);

    // Toggle the display of the answer
    if (answer.style.display === "none" || answer.style.display === "") {
        answer.style.display = "block";
        button.textContent = "-";
    } else {
        answer.style.display = "none";
        button.textContent = "+";
    }
}

</script>
</body>
</html>
