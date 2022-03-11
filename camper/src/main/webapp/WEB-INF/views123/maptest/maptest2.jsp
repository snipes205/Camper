<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@	page import="com.camper.search.MapListSearch"
%>
<%  
	MapListSearch mls = new MapListSearch();
	ArrayList<HashMap<String,String>> items = mls.mapSearch();
	ArrayList<String> mapXs =new ArrayList<String>();
	ArrayList<String> mapYs =new ArrayList<String>();
	ArrayList<String> contIds =new ArrayList<String>();
	ArrayList<String> facltNms =new ArrayList<String>();
	ArrayList<String> firstImageUrls =new ArrayList<String>();

	
	for(int i = 0;i<items.size() ;i++){
		
		String contId= items.get(i).get("contentId");
		String facltNm= items.get(i).get("facltNm");
		String firstImageUrl = items.get(i).get("firstImageUrl");
		String mapX = items.get(i).get("mapX");
		String mapY = items.get(i).get("mapY");
		mapXs.add(mapX);
		mapYs.add(mapY);
		contIds.add(contId);
		facltNms.add(facltNm);
		firstImageUrls.add(firstImageUrl);
	}

%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Kakao 지도 시작하기</title>
</head>


<body>
	
	<div id="map" style="width:800px;height:600px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=44d54500db491a25378cc4604dd20efc"></script>

	<script>
		let container = document.getElementById('map');
		let options = {
			center: new kakao.maps.LatLng(<%=mapYs.get(1) %>, <%=mapXs.get(1)%>),
			level: 3
		};

		let map = new kakao.maps.Map(container, options);
		
		// 마커가 표시될 위치입니다 
		let markerPosition  = new kakao.maps.LatLng(<%=mapYs.get(1) %>, <%=mapXs.get(1) %>); 
		// 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
		// 마커를 생성합니다
		let marker = new kakao.maps.Marker({
		    position: markerPosition,
		})
		let iPosition  = new kakao.maps.LatLng(<%=mapYs.get(1) %>, <%=mapXs.get(1) %>); 
		let iContent = '<div style="padding:5px;"><%=facltNms.get(1) %><img width="70px" src="<%=firstImageUrls.get(1)%>" /></div>';
		marker.setMap(map);
		let infowindow = new kakao.maps.InfoWindow({
		    position : iPosition, 
		    content : iContent 
		});
		infowindow.open(map, marker); 
	</script>

</body>
</html>