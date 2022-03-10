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
	ArrayList<String> facltNms =new ArrayList<String>();
	for(int i = 0;i<items.size() ;i++){
		String mapX = items.get(i).get("mapX");
		String mapY = items.get(i).get("mapY");
		String facltNm = items.get(i).get("facltNm");
		mapXs.add(mapX);
		mapYs.add(mapY);
		facltNms.add(facltNm);
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
			//중앙
			center: new kakao.maps.LatLng(<%=mapYs.get(0) %>, <%=mapXs.get(0)%>),
			level: 3
		};
		var positions = [
		<% for(int i = 0;i<items.size() ;i++){%>
		    {
		        title: '<%=facltNms.get(i)%>',
		        latlng: new kakao.maps.LatLng(<%=mapYs.get(i) %>, <%=mapXs.get(i)%>)
		    },
		 <%} %>    
		];
		
		let map = new kakao.maps.Map(container, options);
		
		// 마커가 표시될 위치입니다 
		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
    
		for (var i = 0; i < positions.length; i ++) {
    
    	// 마커 이미지의 이미지 크기 입니다
    	var imageSize = new kakao.maps.Size(24, 35); 
    
    	// 마커 이미지를 생성합니다    
    	var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
    
   	 // 마커를 생성합니다
   	 	var marker = new kakao.maps.Marker({
       		 map: map, // 마커를 표시할 지도
       		 position: positions[i].latlng, // 마커를 표시할 위치
       		 title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
       		 image : markerImage // 마커 이미지 
    		});
		}
	</script>

</body>
</html>