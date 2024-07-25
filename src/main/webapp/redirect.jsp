<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Redirecting...</title>
</head>
<body>

<%
    String language = request.getParameter("language");
    if ("English".equals(language)) {
        response.sendRedirect("scrap");
    } else if("Bengali".equals(language)){
    	response.sendRedirect("bengaliScrap");
    }
    else if("Hindi".equals(language)){
    	response.sendRedirect("hindiScrap");
    }
    else {
        // Handle other languages or show a message if needed
        out.println("Language not supported yet: " + language);
    }
%>

</body>
</html>
