<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Newspedia</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        body {
            background-color: #E6F9E6;
            font-family: Arial, sans-serif;
        }
        .hero {
           /* background: url('https://t4.ftcdn.net/jpg/06/15/39/73/360_F_615397357_nG7ZK98NnvHYPzJRMYLvMw2nazNNCPAO.jpg') no-repeat center center/cover; */
            height: 60vh;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }
        .hero h1 {
            font-size: 4rem;
            color: rgb(100, 100, 245); /* RGB color for h1 */
            animation: fadeInDown 2s;
        }
        .hero h6 {
           /* color: rgb(173, 216, 230); /* RGB color for h6 */
           color:purple;
            animation: fadeInUp 2s;
        }
        @keyframes fadeInDown {
            from {
                opacity: 0;
                transform: translateY(-50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        .card-img-top {
            height: 200px;
            object-fit: cover;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container-fluid">
        <a href="#" class="navbar-brand">Newspedia</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#ournavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="ournavbar">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a href="#" class="nav-link active">Home</a>
                </li>
                <li class="nav-item">
                    <a href="#contact-section" class="nav-link">About</a>
                </li>
                
            </ul>
        </div>
    </div>
</nav>

<div class="hero text-center">
    <div>
        <h1>Welcome to Newspedia</h1>
        <h6>The Headlines of all your favorite Newspapers</h6>
    </div>
</div>

<div class="container mt-5">
    <div class="row mb-4">
        <div class="col-md-6 offset-md-3">
            <form action="WeatherServlet" method="get">
                <div class="input-group">
                    <input type="text" name="city" class="form-control" placeholder="Enter city name" required>
                    <button class="btn btn-dark" type="submit">Get Weather Report</button>
                </div>
            </form>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12 text-center">
            <div class="dropdown">
                <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">
                    Choose your Newspaper Language
                </button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="redirect.jsp?language=Bengali">Bengali</a></li>
                    <li><a class="dropdown-item" href="redirect.jsp?language=English">English</a></li>
                    <li><a class="dropdown-item" href="redirect.jsp?language=Hindi">Hindi</a></li>
                    <li><a class="dropdown-item" href="redirect.jsp?language=Odia">Odia</a></li>
                </ul>
            </div>
        </div>
    </div>
	
	<section id="contact-section">
	
    <div class="row mt-5">
        <div class="col-md-4">
            <div class="card">
                <img src="https://as1.ftcdn.net/v2/jpg/02/82/61/30/1000_F_282613005_OHNIp1IkqtrjI37aRLkwOaZnEvuotRR8.jpg" class="card-img-top" alt="Newspaper Image">
                <div class="card-body">
                    <h5 class="card-title">Latest News</h5>
                    <p class="card-text">Stay updated with the latest news from around the world.</p>
                    <a href="#" class="btn btn-primary">Explore</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="https://www.businessoutreach.in/wp-content/uploads/2024/04/Dainik-Jagran.webp" class="card-img-top" alt="news hindi Image">
                <div class="card-body">
                    <h5 class="card-title">Read in your language</h5>
                    <p class="card-text">Read newspaper in your favorite language</p>
                    <a href="#" class="btn btn-primary">Explore</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="https://i0.wp.com/mountainreporter.com/wp-content/uploads/2019/03/Weather-Report.jpg?fit=678%2C381&ssl=1" class="card-img-top" alt="weather Image">
                <div class="card-body">
                    <h5 class="card-title">Weather Report</h5>
                    <p class="card-text">Get the weather information of your city</p>
                    <a href="#" class="btn btn-primary">Explore</a>
                </div>
            </div>
        </div>
    </div>
</div>
</section>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
