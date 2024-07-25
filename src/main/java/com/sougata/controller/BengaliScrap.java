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

@WebServlet("/bengaliScrap")
public class BengaliScrap extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String urlAjkal = "https://www.aajkaal.in/";
		String urlSongbadProtidin="https://www.sangbadpratidin.in/";
		String urlBortoman="https://bartamanpatrika.com/home";
		String urlEisamay="https://eisamay.com/";
		
		 Document document=null;
	     Elements news=null;
	     
	     try {
	    	 // Ajkal
	         document = Jsoup.connect(urlAjkal).get();
	         news = document.select(".col-sm-6");
	        String[] newsAjkal = new String[5];
	        int count=0;
	        
	        for (Element i : news) {
	            String text = i.text();
	            if (text != null && text.contains(":")) {
	                String[] parts = text.split(":", 2);
	                if (parts.length > 1) {
//	                    System.out.println(parts[1].trim());
	                	newsAjkal[count]=parts[1].trim();
	                	count++;
	                    
	                }
	            }
	            if(count>4) {
	            	break;
	            }
	        }
	        
	        
	        // Sangbad Protidin
	         document = Jsoup.connect(urlSongbadProtidin).get();
             news = document.select(".site_wrapper .fnt_bold");
             String[] newsSP = new String[5];
             count=0;
             for (Element i : news) {
                 if(i.text()!=null){
//                     System.out.println(i.text());
                	 if (count < 5) {
                		 newsSP[count] = i.text();
                		 count++;
                     }else {
                    	 break;
                     }              	 
                    
                 }


             }
             
             // Bortoman
              document = Jsoup.connect(urlBortoman).get();
              news = document.select(".col-sm-4 .text-left");
              String[] newsBortoman = new String[5];
              count=0;
              for (Element i : news) {
                  if(i.text()!=null){
//                      System.out.println(i.text());
                	  if (count < 5) {
                		  newsBortoman[count] = i.text();
                 		 count++;
                      }else {
                     	 break;
                      }  
                      
                  }


              }
              
              // Eisamay
              document = Jsoup.connect(urlEisamay).get();
              news = document.select(".text_ellipsis");
              String[] newsEisamay = new String[5];
              count=0;
              for (Element i : news) {
                  if(i.text()!=null){
//                      System.out.println(i.text());
                	  if (count < 5) {
                		  newsEisamay[count] = i.text();
                 		 count++;
                      }else {
                     	 break;
                      }  
                      
                  }


              }
	        
	        
	        
	        
	        request.setAttribute("newsAjkal", newsAjkal);
	        request.setAttribute("newsSP", newsSP);
	        request.setAttribute("newsBortoman", newsBortoman);
	        request.setAttribute("newsEisamay", newsEisamay);
	        
	        request.getRequestDispatcher("displayBengaliNews.jsp").forward(request, response);
	     }catch(Exception e) {
	    	 e.printStackTrace();
	     }
	     
	 
        
        
		
	}

	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
