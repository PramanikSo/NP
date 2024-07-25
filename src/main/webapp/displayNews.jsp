<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>News Headlines</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
    body {
        background-color: #f8f9fa;
    }
    .news-container {
        margin-top: 20px;
    }
    .news-item {
        background-color: #fff;
        padding: 15px;
        margin-bottom: 15px;
        border-radius: 5px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        cursor: pointer;
    }
    .news-source {
        font-size: 1.5rem;
        font-weight: bold;
        background-color: yellow;
        color: red;
        padding: 10px;
        border-radius: 5px 5px 0 0;
    }
    
    .modal-content {
        font-size: 1rem;
    }
    .headings{
    	color:white;
    	background-color:#6610f2;
    }
     .modal-backdrop.blur {
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
        }
        .centered-modal-header {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

    
</style>
</head>
<body>

<div class="container news-container">
    <h1 class="text-center headings">The Newspedia</h1>
    <div class="row">
        <div class="col-md-3">
            <div class="news-item" data-bs-toggle='modal' data-bs-target='#modalEconomicTimes'>
                <div class="news-source">THE ECONOMIC TIMES</div>
                <ul class="news-list list-group">
                    <%
                        String[] newsEconomicTimes = (String[]) request.getAttribute("newsEconomicTimes");
                        if (newsEconomicTimes != null) {
                            for (int i = 0; i < newsEconomicTimes.length; i++) {
                                out.println("<li class='list-group-item list-group-item-info'>" + newsEconomicTimes[i] + "</li>");
                            }
                        } else {
                            out.println("<li>No news data available.</li>");
                        }
                    %>
                </ul>
            </div>
        </div>
        <div class="col-md-3">
            <div class="news-item">
                <div class="news-source" data-bs-toggle='modal' data-bs-target='#modalHindu'>THE HINDU</div>
                <ul class="news-list list-group">
                    <%
                        String[] newsHindu = (String[]) request.getAttribute("newsHindu");
                        if (newsHindu != null) {
                            for (int i = 0; i < newsHindu.length; i++) {
                                out.println("<li class='list-group-item list-group-item-success'>" + newsHindu[i] + "</li>");
                            }
                        } else {
                            out.println("<li>No news data available.</li>");
                        }
                    %>
                </ul>
            </div>
        </div>
        <div class="col-md-3">
            <div class="news-item" data-bs-toggle='modal' data-bs-target='#modalIndiaToday'>
                <div class="news-source">INDIA TODAY</div>
                <ul class="news-list list-group">
                    <%
                        String[] newsIndiaToday = (String[]) request.getAttribute("newsIndiaToday");
                        if (newsIndiaToday != null) {
                            for (int i = 0; i < newsIndiaToday.length; i++) {
                                out.println("<li class='list-group-item list-group-item-secondary'>" + newsIndiaToday[i] + "</li>");
                            }
                        } else {
                            out.println("<li>No news data available.</li>");
                        }
                    %>
                </ul>
            </div>
        </div>
        <div class="col-md-3">
            <div class="news-item" data-bs-toggle='modal' data-bs-target='#modalTimesOfIndia'>
                <div class="news-source">TIMES OF INDIA</div>
                <ul class="news-list list-group">
                    <%
                        String[] newsTimesOfIndia = (String[]) request.getAttribute("newsTimesOfIndia");
                        if (newsTimesOfIndia != null) {
                            for (int i = 0; i < newsTimesOfIndia.length; i++) {
                                out.println("<li class='list-group-item list-group-item-warning'>" + newsTimesOfIndia[i] + "</li>");
                            }
                        } else {
                            out.println("<li>No news data available.</li>");
                        }
                    %>
                </ul>
            </div>
        </div>
    </div>
    
</div>

<div class="text-center">
        <a href="index.jsp" class="btn btn-primary">Back to Home</a>
    </div>

<!-- Modal for Economic Times -->
<div class="modal fade" id="modalEconomicTimes" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header centered-modal-header">
                <h5 class="modal-title headings" id="exampleModalLabel">THE ECONOMIC TIMES</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <ul class="list-group list-group-flush">
                    <%
                       String[] colors = {"bg-primary text-white", "bg-secondary text-white", "bg-success text-white", "bg-danger text-white", "bg-warning text-dark", "bg-info text-white", "bg-light text-dark", "bg-dark text-white"};
                        if (newsEconomicTimes != null) {
                            for (int i = 0; i < newsEconomicTimes.length; i++) {
                                out.println("<li class='list-group-item " + colors[i % colors.length] + "'>" + newsEconomicTimes[i] + "</li>");
                            }
                        } else {
                            out.println("<li>No news data available.</li>");
                        }
                    %>
                </ul>
            </div>
        </div>
    </div>
    <div class="text-center">
        <a href="https://economictimes.indiatimes.com/?from=mdr" class="btn btn-warning">For more details click here</a>
    </div>
</div>


<!-- Modal for The Hindu -->
<div class="modal fade" id="modalHindu" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header centered-modal-header">
                <h5 class="modal-title headings" id="exampleModalLabel">THE HINDU</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <ul class="list-group list-group-flush">
                    <%
                        if (newsHindu != null) {
                            for (int i = 0; i < newsHindu.length; i++) {
                                out.println("<li class='list-group-item " + colors[i % colors.length] + "'>" + newsHindu[i] + "</li>");
                            }
                        } else {
                            out.println("<li>No news data available.</li>");
                        }
                    %>
                </ul>
            </div>
        </div>
    </div>
     <div class="text-center">
        <a href="https://www.thehindu.com/" class="btn btn-warning">For more details click here</a>
    </div>
</div>

<!-- Modal for India Today -->
<div class="modal fade" id="modalIndiaToday" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header centered-modal-header">
                <h5 class="modal-title headings" id="exampleModalLabel">INDIA TODAY</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <ul class="list-group list-group-flush">
                    <%
                        if (newsIndiaToday != null) {
                            for (int i = 0; i < newsIndiaToday.length; i++) {
                                out.println("<li class='list-group-item " + colors[i % colors.length] + "'>" + newsIndiaToday[i] + "</li>");
                            }
                        } else {
                            out.println("<li>No news data available.</li>");
                        }
                    %>
                </ul>
            </div>
        </div>
    </div>
     <div class="text-center">
        <a href="https://www.indiatoday.in/" class="btn btn-warning">For more details click here</a>
    </div>
</div>

<!-- Modal for Times of India -->
<div class="modal fade" id="modalTimesOfIndia" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header centered-modal-header">
                <h5 class="modal-title headings" id="exampleModalLabel">TIMES OF INDIA</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <ul class="list-group list-group-flush">
                    <%
                        if (newsTimesOfIndia != null) {
                            for (int i = 0; i < newsTimesOfIndia.length; i++) {
                                out.println("<li class='list-group-item " + colors[i % colors.length] + "'>" + newsTimesOfIndia[i] + "</li>");
                            }
                        } else {
                            out.println("<li>No news data available.</li>");
                        }
                    %>
                </ul>
            </div>
        </div>
    </div>
     <div class="text-center">
        <a href="https://timesofindia.indiatimes.com/" class="btn btn-warning">For more details click here</a>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>
