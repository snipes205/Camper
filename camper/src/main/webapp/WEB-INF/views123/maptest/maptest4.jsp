<%@page import="com.camper.search.CampSearch"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@	page import="com.camper.search.MapListSearch"
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
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
   		mapOption = { 
      	  center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
      	  level: 3 // 지도의 확대 레벨
 	 	  };

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// 지도를 클릭한 위치에 표출할 마커입니다
		var marker = new kakao.maps.Marker({ 
   	 // 지도 중심좌표에 마커를 생성합니다 
   		 	position: map.getCenter() 
		}); 
	// 지도에 마커를 표시합니다
		marker.setMap(map);

	// 지도에 클릭 이벤트를 등록합니다
	// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
		kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
    
    // 클릭한 위도, 경도 정보를 가져옵니다 
  			var latlng = mouseEvent.latLng; 
  	  
    // 마커 위치를 클릭한 위치로 옮깁니다
  		 	marker.setPosition(latlng);
    
 	  		var message = '클릭한 위치의 위도는 ' +<div id="\'"getLat"\'"> latlng.getLat() + ' 이고, ';
  		 	message += '경도는 ' + <div id="\'"getLng"\'">latlng.getLng() + ' 입니다';
    
   			var resultDiv = document.getElementById('clickLatlng'); 
   			 resultDiv.innerHTML = message;
    
		});
		<%  
		String strMapX= request.getParameter("strMapX");
		String strMapY= request.getParameter("strMapY");
		CampSearch cs = new CampSearch();
		ArrayList<HashMap<String,String>> items = cs.mapSearch(strMapX,strMapY);
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
	</script>

</body>
</html>