<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>News Headlines</title>
<link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
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
            <div class="news-item" data-bs-toggle="modal" data-bs-target="#modalAjkal">
                <div class="news-source">আজকাল</div>
                <ul class="news-list list-group">
                    <%
                        String[] newsAjkal = (String[]) request.getAttribute("newsAjkal");
                        if (newsAjkal != null) {
                            for (int i = 0; i < newsAjkal.length; i++) {
                                out.println("<li  class='list-group-item list-group-item-info'>" + newsAjkal[i] + "</li>");
                            }
                        } else {
                            out.println("<li>No news data available.</li>");
                        }
                    %>
                </ul>
            </div>
        </div>
        
         <div class="col-md-3">
            <div class="news-item" data-bs-toggle="modal" data-bs-target="#modalSP">
                <div class="news-source">সংবাদ প্রতিদিন</div>
                <ul class="news-list list-group">
                    <%
                        String[] newsSP = (String[]) request.getAttribute("newsSP");
                        if (newsSP != null) {
                            for (int i = 0; i < newsSP.length; i++) {
                                out.println("<li  class='list-group-item list-group-item-success'>" + newsSP[i] + "</li>");
                            }
                        } else {
                            out.println("<li>No news data available.</li>");
                        }
                    %>
                </ul>
            </div>
        </div>
        
        
         <div class="col-md-3">
            <div class="news-item" data-bs-toggle="modal" data-bs-target="#modalBortoman">
                <div class="news-source">বর্তমান</div>
                <ul class="news-list list-group">
                    <%
                        String[] newsBortoman = (String[]) request.getAttribute("newsBortoman");
                        if (newsBortoman != null) {
                            for (int i = 0; i < newsBortoman.length; i++) {
                                out.println("<li  class='list-group-item list-group-item-secondary'>" + newsBortoman[i] + "</li>");
                            }
                        } else {
                            out.println("<li>No news data available.</li>");
                        }
                    %>
                </ul>
            </div>
        </div>
        
        
        <div class="col-md-3">
            <div class="news-item" data-bs-toggle="modal" data-bs-target="#modalEisamay">
                <div class="news-source">এইসময়</div>
                <ul class="news-list list-group">
                    <%
                        String[] newsEisamay = (String[]) request.getAttribute("newsEisamay");
                        if (newsEisamay != null) {
                            for (int i = 0; i < newsEisamay.length; i++) {
                                out.println("<li  class='list-group-item list-group-item-warning'>" + newsEisamay[i] + "</li>");
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
        <a href="index.jsp" class="btn btn-primary">Back to Home</a>
    </div>
</div>

<!-- Modal for Ajkal -->
<div class="modal fade" id="modalAjkal" tabindex="-1" aria-labelledby="modalAjkalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header centered-modal-header">
                <h5 class="modal-title headings" id="modalAjkalLabel">আজকাল</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <ul class="list-group list-group-flush">
                    <%
                    String[] colors = {"bg-primary text-white", "bg-secondary text-white", "bg-success text-white", "bg-danger text-white", "bg-warning text-dark", "bg-info text-white", "bg-light text-dark", "bg-dark text-white"};
                        if (newsAjkal != null) {
                            for (int i = 0; i < newsAjkal.length; i++) {
                                out.println("<li class='list-group-item " + colors[i % colors.length] + "'>" + newsAjkal[i] + "</li>");
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
        <a href="https://www.aajkaal.in/" class="btn btn-warning">For more details click here</a>
    </div>
</div>

<!-- Modal for Songbad Protidin -->
<div class="modal fade" id="modalSP" tabindex="-1" aria-labelledby="modalSPLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header centered-modal-header">
                <h5 class="modal-title headings" id="modalSPLabel">সংবাদ প্রতিদিন</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <ul class="list-group list-group-flush">
                    <%
                        if (newsSP != null) {
                            for (int i = 0; i < newsSP.length; i++) {
                                out.println("<li class='list-group-item " + colors[i % colors.length] + "'>" + newsSP[i] + "</li>");
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
        <a href="https://www.sangbadpratidin.in/" class="btn btn-warning">For more details click here</a>
    </div>
</div>

<!-- Modal for Bortoman -->
<div class="modal fade" id="modalBortoman" tabindex="-1" aria-labelledby="modalBortomanLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header centered-modal-header">
                <h5 class="modal-title headings" id="modalBortomanLabel">বর্তমান</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <ul class="list-group list-group-flush">
                    <%
                        if (newsBortoman != null) {
                            for (int i = 0; i < newsBortoman.length; i++) {
                                out.println("<li class='list-group-item " + colors[i % colors.length] + "'>" + newsBortoman[i] + "</li>");
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
        <a href="https://bartamanpatrika.com/home" class="btn btn-warning">For more details click here</a>
    </div>
</div>

<!-- Modal for Eisamay -->
<div class="modal fade" id="modalEisamay" tabindex="-1" aria-labelledby="modalEisamayLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header centered-modal-header">
                <h5 class="modal-title headings" id="modalEisamayLabel">এইসময়</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <ul class="list-group list-group-flush">
                    <%
                        if (newsEisamay != null) {
                            for (int i = 0; i < newsEisamay.length; i++) {
                                out.println("<li class='list-group-item " + colors[i % colors.length] + "'>" + newsEisamay[i] + "</li>");
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
        <a href="https://eisamay.com/" class="btn btn-warning">For more details click here</a>
    </div>
</div>


<script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"
    ></script>
</body>
</html>
