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
            <div class="news-item" data-bs-toggle="modal" data-bs-target="#modalAjtak">
                <div class="news-source">आजतक</div>
                <ul class="news-list list-group ">
                    <%
                        String[] newsAjtak = (String[]) request.getAttribute("newsAjtak");
                        if (newsAjtak != null) {
                            for (int i = 0; i < newsAjtak.length; i++) {
                                out.println("<li class='list-group-item list-group-item-info'>" + newsAjtak[i] + "</li>");
                            }
                        } else {
                            out.println("<li>No news data available.</li>");
                        }
                    %>
                </ul>
            </div>
        </div>
        
        
        <div class="col-md-3">
            <div class="news-item" data-bs-toggle="modal" data-bs-target="#modalBhaskar">
                <div class="news-source">दैनिक भास्कर</div>
                <ul class="news-list list-group">
                    <%
                        String[] newsBhaskar = (String[]) request.getAttribute("newsBhaskar");
                        if (newsBhaskar != null) {
                            for (int i = 0; i < newsBhaskar.length; i++) {
                                out.println("<li class='list-group-item list-group-item-success'>" + newsBhaskar[i] + "</li>");
                            }
                        } else {
                            out.println("<li>No news data available.</li>");
                        }
                    %>
                </ul>
            </div>
        </div>
        
        
         <div class="col-md-3">
            <div class="news-item" data-bs-toggle="modal" data-bs-target="#modalJagran">
                <div class="news-source">दैनिक जागरण</div>
                <ul class="news-list list-group">
                    <%
                        String[] newsJagran = (String[]) request.getAttribute("newsJagran");
                        if (newsJagran != null) {
                            for (int i = 0; i < newsJagran.length; i++) {
                                out.println("<li class='list-group-item list-group-item-secondary'>" + newsJagran[i] + "</li>");
                            }
                        } else {
                            out.println("<li>No news data available.</li>");
                        }
                    %>
                </ul>
            </div>
        </div>
        
		<div class="col-md-3">
            <div class="news-item" data-bs-toggle="modal" data-bs-target="#modalUjala">
                <div class="news-source">अमर उजाला</div>
                <ul class="news-list list-group">
                    <%
                        String[] newsUjala = (String[]) request.getAttribute("newsUjala");
                        if (newsUjala != null) {
                            for (int i = 0; i < newsUjala.length; i++) {
                                out.println("<li class='list-group-item list-group-item-warning'>" + newsUjala[i] + "</li>");
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

<!-- Modal for Ajtak -->
<div class="modal fade" id="modalAjtak" tabindex="-1" aria-labelledby="modalAjtakLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="card">
            <div class="modal-header centered-modal-header">
                <h5 class="modal-title headings" id="modalAjtakLabel">आजतक</h5>
                <button type="button" class="btn-close ms-auto" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            </div>
           <div class="modal-body">
		    <div class="card"> 
		        <ul class="list-group list-group-flush">
		            <%
		                String[] colors = {"bg-primary text-white", "bg-secondary text-white", "bg-success text-white", "bg-danger text-white", "bg-warning text-dark", "bg-info text-white", "bg-light text-dark", "bg-dark text-white"};
		                if (newsAjtak != null) {
		                    for (int i = 0; i < newsAjtak.length; i++) {
		                        out.println("<li class='list-group-item " + colors[i % colors.length] + "'>" + newsAjtak[i] + "</li>");
		                    }
		                } else {
		                    out.println("<li class='list-group-item'>No news data available.</li>");
		                }
		            %>
		        </ul>
		    </div>
		</div>
        </div>
    </div>
     <div class="text-center">
        <a href="https://www.aajtak.in/" class="btn btn-warning">For more details click here</a>
    </div>
</div>




<!-- Modal for Dainik Bhaskar -->
<div class="modal fade" id="modalBhaskar" tabindex="-1" aria-labelledby="modalBhaskarLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="card">
            <div class="modal-header centered-modal-header">
                <h5 class="modal-title headings" id="modalBhaskarLabel">दैनिक भास्कर </h5>
                <button type="button" class="btn-close ms-auto" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            </div>
           <div class="modal-body">
		    <div class="card"> 
		        <ul class="list-group list-group-flush">
		            <%
		                
		                if (newsBhaskar != null) {
		                    for (int i = 0; i < newsBhaskar.length; i++) {
		                        out.println("<li class='list-group-item " + colors[i % colors.length] + "'>" + newsBhaskar[i] + "</li>");
		                    }
		                } else {
		                    out.println("<li class='list-group-item'>No news data available.</li>");
		                }
		            %>
		        </ul>
		    </div>
		</div>
        </div>
    </div>
     <div class="text-center">
        <a href="https://www.bhaskar.com/" class="btn btn-warning">For more details click here</a>
    </div>
</div>




<!-- Modal for Dainik Jagran -->
<div class="modal fade" id="modalJagran" tabindex="-1" aria-labelledby="modalJagranLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="card">
            <div class="modal-header centered-modal-header">
                <h5 class="modal-title headings" id="modalJagranLabel">दैनिक जागरण</h5>
                <button type="button" class="btn-close ms-auto" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            </div>
           <div class="modal-body">
		    <div class="card"> 
		        <ul class="list-group list-group-flush">
		            <%
		                
		                if (newsJagran != null) {
		                    for (int i = 0; i < newsJagran.length; i++) {
		                        out.println("<li class='list-group-item " + colors[i % colors.length] + "'>" + newsJagran[i] + "</li>");
		                    }
		                } else {
		                    out.println("<li class='list-group-item'>No news data available.</li>");
		                }
		            %>
		        </ul>
		    </div>
		</div>
        </div>
    </div>
     <div class="text-center">
        <a href="https://www.jagran.com/" class="btn btn-warning">For more details click here</a>
    </div>
</div>



<!-- Modal for Amar Ujala -->
<div class="modal fade" id="modalUjala" tabindex="-1" aria-labelledby="modalUjalaLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="card">
            <div class="modal-header centered-modal-header">
                <h5 class="modal-title headings" id="modalUjalaLabel">अमर उजाला </h5>
                <button type="button" class="btn-close ms-auto" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            </div>
           <div class="modal-body">
		    <div class="card"> 
		        <ul class="list-group list-group-flush">
		            <%
		                
		                if (newsUjala != null) {
		                    for (int i = 0; i < newsUjala.length; i++) {
		                        out.println("<li class='list-group-item " + colors[i % colors.length] + "'>" + newsUjala[i] + "</li>");
		                    }
		                } else {
		                    out.println("<li class='list-group-item'>No news data available.</li>");
		                }
		            %>
		        </ul>
		    </div>
		</div>
        </div>
    </div>
     <div class="text-center">
        <a href="https://www.amarujala.com/" class="btn btn-warning">For more details click here</a>
    </div>
</div>






<script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"
    ></script>

</body>
</html>
