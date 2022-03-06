package com.camper.search;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class CampSearch {
	private String strMapX;
	private String strMapY;
	
	public CampSearch (HttpServletRequest request, HttpServletResponse response) {
		strMapX= request.getParameter("strMapX");
		strMapY= request.getParameter("strMapY");
		
	}
	
	public ArrayList<HashMap<String, String>> mapSearch(String strMapX,String strMapY) {
	
		strMapX= this.strMapX;
		strMapY= this.strMapY;
		String sKey ="02RP9yCl0%2BWeb7VZ9RjglX%2FY7k%2Bp%2FoHbLo2WDTgd2JVPrM7LjxoFNkAesm7JPgQZ6BSxAa23m2Oe6c%2F8BANHVw%3D%3D";
		String numOfRows = "1";
		String pageNo= "1";
		String radius="1";
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/GoCamping/locationBasedList?ServiceKey="
		+sKey+"&numOfRows="+numOfRows+"&pageNo="+pageNo+"&MobileOS=ETC&MobileApp=TestApp"+
		"&mapX="+strMapX+"&mapY="+strMapY+"&radius="+radius;
		ArrayList<HashMap<String, String>>result = new ArrayList<HashMap<String,String>>();
		Document doc = null;
		try {
			doc = Jsoup.connect(url).get();
			Elements eles = doc.select("items");
			Elements item = eles.select("item");

			for(Element ele : item) {
				HashMap<String, String> listMap = new HashMap<String, String>();
				
				String addr1 = ele.select("addr1").text();
				String addr2 = ele.select("addr2").text();
				String contentId = ele.select("contentId").text();
				String doNm = ele.select("doNm").text();
				String facltNm = ele.select("facltNm").text();
				String firstImageUrl = ele.select("firstImageUrl").text();
				String homepage = ele.select("homepage").text();
				String sigunguNm = ele.select("sigunguNm").text();
				String mapX = ele.select("mapX").text();
				String mapY = ele.select("mapY").text();
				
				listMap.put("contentId",contentId);
				listMap.put("facltNm",facltNm);
				listMap.put("mapX",mapX);
				listMap.put("mapY",mapY);
				listMap.put("addr1", addr1);
				listMap.put("addr2",addr2);
				listMap.put("doNm",doNm);
				listMap.put("firstImageUrl",firstImageUrl);
				listMap.put("homepage",homepage);
				listMap.put("sigunguNm",sigunguNm);

				result.add(listMap);
			};
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}
		
		return result;
		
	}
	
}
