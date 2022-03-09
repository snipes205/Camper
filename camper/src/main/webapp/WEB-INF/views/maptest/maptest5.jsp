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
    <meta charset="utf-8">
    <title>좌표로 주소를 얻어내기</title>
    <style>
    .map_wrap {position:relative;width:100%;height:350px;}
    .title {font-weight:bold;display:block;}
    .hAddr {position:absolute;left:10px;top:10px;border-radius: 2px;background:#fff;background:rgba(255,255,255,0.8);z-index:1;padding:5px;}
    #centerAddr {display:block;margin-top:2px;font-weight: normal;}
    .bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
</style>
</head>
<body>
<div class="map_wrap">
    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
    <div class="hAddr">
        <span class="title">지도중심기준 행정동 주소정보</span>
        <span id="centerAddr"></span>
    </div>
</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=44d54500db491a25378cc4604dd20efc&libraries=services"></script>
<script>

window.onload=()=>{
	let urls = location.href;
	let strParams = urls.toString().split("?");
	let params= strParams[1].split("&");
	let smapX=params[0].substring(6);
	let smapY=params[1].substring(6);


	const request = new XMLHttpRequest();
	request.onreadystatechange = function() {
		if(request.readyState==4){
			if(request.status==200){
				let xmlImgaeData =request.responseXML;
				
				
				
				
				
			
				
				
			}else{
				alert("페이지 에러");
			}
			
		}
	};
	//요청방식 / 요청 url// 동기
	request.open('GET',' http://api.visitkorea.or.kr/openapi/service/rest/GoCamping/'
			+"imageList"
			+"?ServiceKey=02RP9yCl0%2BWeb7VZ9RjglX%2FY7k%2Bp%2FoHbLo2WDTgd2JVPrM7LjxoFNkAesm7JPgQZ6BSxAa23m2Oe6c%2F8BANHVw%3D%3D"
			+"&MobileOS=ETC&MobileApp=TestApp"
			+"&cocontentId=3429"
			,true);
	request.send();
	
	


</script>
</body>
</html>