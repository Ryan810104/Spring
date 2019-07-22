package com.recreation.testjsoup;



import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
 
import java.io.IOException;
import java.util.Iterator;

public class TestJoup {
	public static void jsoup() throws IOException {
		 String url = "https://www.google.com/search?q=2019%E7%B8%BD%E5%86%A0%E8%BB%8D&oq=2019%E7%B8%BD%E5%86%A0%E8%BB%8D&aqs=chrome..69i57j0l5.6389j1j9&sourceid=chrome&ie=UTF-8#sie=lg;/g/11f4_3sdny;3;/m/05jvx;mt;fp;1;;";
		 try {
	            Document doc = Jsoup.connect(url).get();
	            
	            Elements h1s = doc.select("table.imspo_mt__mit");
	          
	            Element thisOne = null;
	            for(Iterator it = h1s.iterator(); it.hasNext();)
	            {
	                thisOne = (Element)it.next();
	                System.out.println(thisOne.html());
	            }
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	 
	
	        
	}   
}
