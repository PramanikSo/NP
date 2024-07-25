package com.sougata.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

@WebServlet("/scrap")
public class Scrap extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String urlTOI = "https://timesofindia.indiatimes.com/";
        String urlIT =  "https://www.indiatoday.in/";
        String urlTheHindu = "https://www.thehindu.com/";
        String urlET = "https://economictimes.indiatimes.com/?from=mdr";
        
        Document document=null;
        Elements news=null;
        try {
        	// Times of India
             document = Jsoup.connect(urlTOI).get();
             news = document.select(".col_l_6");
            String[] newsTimesOfIndia = new String[5];
            int count=0;
            for(Element i: news) {
            	 if (count < 5) {
            		 newsTimesOfIndia[count] = i.text();
            		 count++;
                 }else {
                	 break;
                 }
            	
            }
            
            // India Today
             document = Jsoup.connect(urlIT).get();
             news = document.select(".B1S3_content__wrap__9mSB6");
            String[] newsIndiaToday = new String[5];
            count=0;
            for(Element i: news) {
            	Element titleElement = i.select("h2 > a").first();
            	 if (count < 5) {
            		 newsIndiaToday[count] = titleElement.text();
            		 count++;
                 }else {
                	 break;
                 }
            	
            }
            
            
            // The Hindu
            document = Jsoup.connect(urlTheHindu).get();
            news = document.select(".time-list");
            String[] newsHindu = new String[5];
            count=0;
//	        count = 0;

            for (Element item : news) {
                if (count >= newsHindu.length) {
                    break;  // Stop after collecting five messages
                }
                Element link = item.selectFirst("a");
                if (link != null) {
                    // Remove the time and date parts
                    Elements timeElements = link.select(".time, .timePublished");
                    for (Element timeElement : timeElements) {
                        timeElement.remove();
                    }
                    String newsText = link.text().trim();
                    newsHindu[count++] = newsText;  // Add news message to the array
                }
            }
	        
	        // Economic Times
	        document = Jsoup.connect(urlET).get();
            news = document.select(".newsList");
            String[] newsEconomicTimes = new String[5];
            count=0;

            for (Element newsList : news) {
                // Select each <li> element within the news list
                Elements newsItems = newsList.select("li");

                // Print each news item on a separate line
    	        for(Element i: newsItems) {
	           	 if (count < 5) {
	           		newsEconomicTimes[count] = i.text();
	               }
	           	count++;
	        }
                
            }
	        
            
           
           // String[] newsHindustanTimes = new String[5];
           // String[] newsTimesOfIndia = new String[5];
//
//            int count = 0;
//            for (Element i : news) {
//                if (count >= 20) break; // 5 news items for each of 4 sources
//                if (count < 5) {
//                    newsEconomicTimes[count] = i.text();
//                } else if (count < 10) {
//                    newsHindu[count - 5] = i.text();
//                } else if (count < 15) {
//                    newsHindustanTimes[count - 10] = i.text();
//                } else {
//                    newsTimesOfIndia[count - 15] = i.text();
//                }
//                count++;
//            }

            request.setAttribute("newsEconomicTimes", newsEconomicTimes);
            request.setAttribute("newsHindu", newsHindu);
            request.setAttribute("newsIndiaToday", newsIndiaToday);
            request.setAttribute("newsTimesOfIndia", newsTimesOfIndia);

            request.getRequestDispatcher("displayNews.jsp").forward(request, response);

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
