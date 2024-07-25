<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
    }
    .news-source {
        font-size: 1.5rem;
        font-weight: bold;
        background-color: #6c757d;
        color: white;
        padding: 10px;
        border-radius: 5px 5px 0 0;
    }
    .news-list {
        list-style-type: none;
        padding-left: 0;
    }
    .news-list li {
        margin-bottom: 10px;
        cursor: pointer;
    }
    .news-list li:hover {
        text-decoration: underline;
    }
    .modal-content {
        font-size: 1rem;
    }
</style>
</head>
<body>
<div class="container news-container">
    <h1 class="text-center">The Newspedia</h1>
    <div class="row">
        <div class="col-md-3">
            <div class="news-item" data-bs-toggle="modal" data-bs-target="#modalAjkal">
                <div class="news-source">আজকাল</div>
                <ul class="news-list">
                    <%
                        String[] newsAjkal = {"News 1", "News 2", "News 3"};
                        if (newsAjkal != null) {
                            for (int i = 0; i < newsAjkal.length; i++) {
                                out.println("<li>" + newsAjkal[i] + "</li>");
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

<!-- Modal for Ajkal -->
<div class="modal fade" id="modalAjkal" tabindex="-1" aria-labelledby="modalAjkalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalAjkalLabel">আজকাল</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <ul>
                    <%
                        if (newsAjkal != null) {
                            for (int i = 0; i < newsAjkal.length; i++) {
                                out.println("<li>" + newsAjkal[i] + "</li>");
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

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha384-KyZXEAg3QhqLMpG8r+Knujsl5/6b5Qx6b9n5e3p7v9F4CSs5cpSy4fo4Q5Og6W4+" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-kQtW33rZJAHjge9c/Sv8EXuoSxHPA57urK02b8PBU5uIKcM6MY9bE6Bbgfw7e6gB" crossorigin="anonymous"></script>
</body>
</html>
