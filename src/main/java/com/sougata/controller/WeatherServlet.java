package com.sougata.controller;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/WeatherServlet")
public class WeatherServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public WeatherServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String city = request.getParameter("city");
        String weatherApiKey = "52c60b18f62691d61c88b717402381d7"; // Replace with your API key

        String weatherReport = Weather.getWeatherReport(city, weatherApiKey);

        request.setAttribute("city", city);
        request.setAttribute("weatherReport", weatherReport);

        request.getRequestDispatcher("display.jsp").forward(request, response);
    }
}

