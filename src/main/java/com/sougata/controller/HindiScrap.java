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

@WebServlet("/hindiScrap")
public class HindiScrap extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String urlAjtak = "https://www.aajtak.in/";
		String urlDainikBhaskar="https://www.bhaskar.com/";
		String urlJagran="https://www.jagran.com/";
		String urlAmarUjala="https://www.amarujala.com/";
		
		 Document document=null;
	     Elements news=null;
	     
	     try {
	    	 // Ajtak
	         document = Jsoup.connect(urlAjtak).get();
	         news = document.select(".story-listing-ul li");
	        String[] newsAjtak = new String[5];
	        int count=0;
	        
	        for (Element item : news) {
                String newsTitle = item.select("a[title]").text();
                if (!newsTitle.isEmpty()) {
//                    System.out.println(newsTitle);
                	  newsAjtak[count]=newsTitle;
                	  count++;
                   
                }
                if(count>4) {
                	break;
                }
            }
	        
	        
	        // Dainik Bhaskar
	         document = Jsoup.connect(urlDainikBhaskar).get();
             news = document.select(".ad3ccf1a");
             String[] newsBhaskar = new String[5];
             count=0;
             for (Element item : news) {
                 Element titleElement = item.selectFirst("h3");
                 if (titleElement != null) {
                     // Get the specific span with the colored text if available
                     Element spanElement = titleElement.selectFirst("span");
                     if (spanElement != null) {
                         // Concatenate the main title excluding the span
                         String newsTitle = titleElement.text().replace(spanElement.text(), "").trim();
//                         System.out.println(newsTitle);
                         newsBhaskar[count]=newsTitle;
                     } else {
                         // If there's no span, just print the title as is
//                         System.out.println(titleElement.text());
                    	 newsBhaskar[count]=titleElement.text();
                        
                     }
                     count++;
                 }
                 if(count>4) {
                	 break;
                 }
             }
             
             // Jagran
              document = Jsoup.connect(urlJagran).get();
              news = document.select(".Editorial_CardStory__AOJMS p");
              String[] newsJagran = new String[5];
              count=0;
              for (Element i : news) {
                  if(i.text()!=null){
//                      System.out.println(i.text());
                	  if (count < 5) {
                		  newsJagran[count] = i.text();
                 		 count++;
                      }else {
                     	 break;
                      }  
                      
                  }


              }
              
              // Amar Ujala
              document = Jsoup.connect(urlAmarUjala).get();
              news = document.select(".__main_listing_content h3 a");
              String[] newsUjala = new String[5];
              count=0;
              for (Element i : news) {
                  if(i.text()!=null){
//                      System.out.println(i.text());
                	  if (count < 5) {
                		  newsUjala[count] = i.text();
                 		 count++;
                      }else {
                     	 break;
                      }  
                      
                  }


              }
	        
	        
	        
	        
	        request.setAttribute("newsAjtak", newsAjtak);
	        request.setAttribute("newsBhaskar", newsBhaskar);
	        request.setAttribute("newsJagran", newsJagran);
	        request.setAttribute("newsUjala", newsUjala);
	        
	        request.getRequestDispatcher("displayHindiNews.jsp").forward(request, response);
	     }catch(Exception e) {
	    	 e.printStackTrace();
	     }
	     
	 
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
