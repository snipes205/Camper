<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

	<!-- SITE TITTLE -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>CAMPER</title>

	<!-- FAVICON -->
	<link href ="../../images/favicon.png" rel="shortcut icon">
	<!-- PLUGINS CSS STYLE -->
	<!-- <link href ="../../plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet"> -->
	<!-- Bootstrap -->
	<link rel="stylesheet" href="../../plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="../../plugins/bootstrap/css/bootstrap-slider.css">
	<!-- Font Awesome -->
	<link href ="../../plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!-- Owl Carousel -->
	<link href ="../../plugins/slick-carousel/slick/slick.css" rel="stylesheet">
	<link href ="../../plugins/slick-carousel/slick/slick-theme.css" rel="stylesheet">
	<!-- Fancy Box -->
	<link href ="../../plugins/fancybox/jquery.fancybox.pack.css" rel="stylesheet">
	<link href ="../../plugins/jquery-nice-select/css/nice-select.css" rel="stylesheet">
	<!-- CUSTOM CSS -->
	<link href ="../../css/search.css" rel="stylesheet">
	<link href ="../../css/style.css" rel="stylesheet">



	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
	<style type="text/css">
		.header {
			background: none;
		}
		.thmb {
			width: 200px;
			height: 120px;
		}

		.tbutton {
			border: 1px;
			border-color: white;
			background-color: transparent;
			outline: none;
			color: white;
			width: 100px;
			height: 70px;
		}

		.tbutton:focus {
			border: none;
		}

		.btn {
			height: 50px;
		}

		#map {
			padding-top: 7px;
			padding-bottom: 25px;
		}

		.campname {
			text-decoration: none;
		}

		.card-img-top {
			width: 340px;
			height: 225px;
		}
	</style>
	<script src="../../plugins/jQuery/jquery.min.js"></script>
	<script src="../../plugins/bootstrap/js/popper.min.js"></script>
	<script src="../../plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="../../plugins/bootstrap/js/bootstrap-slider.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=44d54500db491a25378cc4604dd20efc&libraries=services"></script>
	<script type="text/javascript">
const url = window.location.href
	
	urls =url.split("/");
	let underBar = "<div class='underbar'></div>";
	if(urls[4]=="map.do"){
		
		$("#searchMapBar").append(underBar);
		$("#searchMapBar").attr("class",'tab_txt');
		$("#searchThemeBar").attr("class",'tab_txt2');
		$("#searchMapBarLi").attr("data-selected","true");
	}else{
		$("#searchThemeBar").append(underBar);
		$("#searchMapBar").attr("class",'tab_txt2');
		$("#searchThemeBar").attr("class",'tab_txt');
		$("#searchThemeBarLi").attr("data-selected","true");
	}
	
	
	function nvl(item){
		if(typeof item==="undefined"|| item===null|| item==""){
			return "";
		}
            return item.textContent;
		}
	
	const getMapList = (pageNo)=>{
		let strSearchMap= document.getElementById("strSearchMap").value;
		let container = document.getElementById('map');
		container.style.display="none";
			if(strSearchMap.length<2){
				alert("주소를 두글자 이상 입력하세요");
			}else{
				let geocoder = new kakao.maps.services.Geocoder();
				geocoder.addressSearch($('#strSearchMap').val(), function(result, status) {
				if (status === kakao.maps.services.Status.OK) {
					let smapY=result[0].y;
					let smapX=result[0].x;
					const request = new XMLHttpRequest();
					request.onreadystatechange = function() {
						if(request.readyState==4){
							if(request.status==200){
								
								container.style.display="block";
								let xmlData =request.responseXML;
								$("#resultNum").empty();
								$("#map").empty();
								$("#pagenation").empty();
										
								const result=xmlData.getElementsByTagName('totalCount')[0].textContent;
								
	
								//페이지네이션
								totalPage= Math.floor(xmlData.getElementsByTagName('totalCount')[0].textContent/10)+1;	
								$("#pagenation").empty();
								$("#pagenation").append("<li class='page-item'>"
										+"<div class='page-link' aria-label='Previous' id='prev'>"
										+"<span aria-hidden='true'>&laquo;</span>"
										+"<span class='sr-only'>Previous</span></div></li>"
										)
								if(pageNo>2){
										$("#pagenation").append("<li class='page-item'><div class='page-link cpageNo'>"+"1"+"</div></li>");	
										$("#pagenation").append("<li class='page-item disabled'>"+"..."+"</li>")
								}		
								if(pageNo>1){
									$("#pagenation").append("<li class='page-item'><div class='page-link cpageNo'>"+(pageNo-1)+"</div></li>");	
									}
								for(let j = pageNo; j< pageNo+10&&j<totalPage; j++){
								
									$("#pagenation").append("<li class='page-item'><div class='page-link cpageNo'>"+j+"</div></li>");
								}
								if(totalPage>10){
								$("#pagenation").append("<li class='page-item disabled'>"+"..."+"</li>")
								$("#pagenation").append("<li class='page-item'><div class='page-link cpageNo' >"+totalPage+"</div></li>")
								}
								$("#pagenation").append("<li class='page-item'>"
										+"<div class='page-link next' aria-label='Next' id='next'>" 
										+"<span aria-hidden='true'>&raquo;</span>"
										+"<span class='sr-only' >Next</span></div></li>");
								$(".cpageNo").button().on("click",function(){
									$("#pagenation").empty();
									pageNo = parseInt( $(this).text());
									getMapList(pageNo);
								
								})
								$("#prev").on('click',function(){
									if(pageNo>1){
										$("#pagenation").empty();
										pageNo = pageNo-1;
										getMapList(pageNo);
									}
								})
								$("#next").on('click',function(){
									if(pageNo<totalPage){
										$("#pagenation").empty();
										pageNo = pageNo+1;
										getMapList(pageNo);
									}
								})

								const facltNm =xmlData.getElementsByTagName('facltNm');
								const addr1 = xmlData.getElementsByTagName('addr1');
								const smapX=xmlData.getElementsByTagName('mapX');
								const smapY=xmlData.getElementsByTagName('mapY');
								const firstImageUrl = xmlData.getElementsByTagName('firstImageUrl');
								const induty = xmlData.getElementsByTagName('induty');
								const contentId = xmlData.getElementsByTagName("contentId");
								
								let options = {
										center: new kakao.maps.LatLng(smapY[0].childNodes[0].nodeValue,smapX[0].childNodes[0].nodeValue),
										level: 1
									};
								let map = new kakao.maps.Map(container, options);
								let imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
								let positions = [];
								let html = "";
							
								$("#resultNum").html("결과\t<b>"+nvl(xmlData.getElementsByTagName('totalCount')[0])+"</b>개");
								for(i=0;i<facltNm.length;i++){
									$("#list").empty();
									html+="<tr>";
									html+="<td class='product-thumb'><img width='80px' height='80px'";
									if(nvl(firstImageUrl[i])==""){
										html+="src='../images/no-image.jpg' alt='이미지 없음'></td>"	
									}else{
										html+="src='"+nvl(firstImageUrl[i])+"' alt='이미지 없음'></td>"	
									}
												
									html+="<td class='product-details'>";
									html+="<h3 class='title'><a href='./detail.do?sampX="+nvl(smapX[i])+"&smapY="+nvl(smapY[i])+"&contentId="+nvl(contentId[i])+"'>"+nvl(facltNm[i])+"</a></h3>";	
									html+="<span class='location'>"+nvl(addr1[i])+"</span>";			
									html+="</td>";		
									html+="<td class='product-category'><span class='categories'>"+nvl(induty[i])+"</span></td>";		
									html+="<td class='action' data-title='Action'>";		
									html+="<div class=''>";
									html+="<ul class='list-inline justify-content-center'>";		
									html+="<li class='list-inline-item'><a data-toggle='tooltip'";	
									html+="data-placement='top' title='View' class='view'";
									html+="'./detail.do?sampX="+nvl(smapX[i])+"&smapY="+nvl(smapY[i])+"&contentId="+nvl(contentId[i])+"'>";
									html+="</a></li></ul></div></td></tr>";	
									
									positions.push({
								        title: facltNm[i].childNodes[0].nodeValue,
								        latlng: new kakao.maps.LatLng(smapY[i].textContent,smapX[i].textContent)
								    	
									})
								// 마커 이미지의 이미지 크기 입니다
							   		let imageSize = new kakao.maps.Size(24, 35); 
							    
							    // 마커 이미지를 생성합니다    
							   		let markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
							    
							   	 // 마커를 생성합니다
							   		let marker = new kakao.maps.Marker({
							    		map: map, // 마커를 표시할 지도
							    	   	position: positions[i].latlng, // 마커를 표시할 위치
							 	    	title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
							 	      	image : markerImage // 마커 이미지 
								    });
								   	let infowindow = new kakao.maps.InfoWindow({
								         content: "<div style='width:200px;' ><b>"+positions[i].title+"</b></div>" // 인포윈도우에 표시할 내용
								    });
								   	let location="./detail.do?sampX="+smapX[i].textContent+"&smapY="+smapY[i].textContent+"&contentId="+nvl(contentId[i]);
								   	kakao.maps.event.addListener(marker, 'click', function() { 
								   		window.location.href=location					    
							   	
								   	});
							   		function makeOverListener(map, marker, infowindow) {
										return function() {
											infowindow.open(map, marker);
									    };
									}
									// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
									function makeOutListener(infowindow) {
										return function() {
										     infowindow.close();
									    };
									}
									kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
							 	  	kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
								
							  	 	$("#list").append(html);
								}
							}else{
								alert("페이지 에러");
							}
						}
					};
					//요청방식 / 요청 url// 동기
					request.open('GET',' http://api.visitkorea.or.kr/openapi/service/rest/GoCamping/'
							+"locationBasedList"
							+"?ServiceKey=02RP9yCl0%2BWeb7VZ9RjglX%2FY7k%2Bp%2FoHbLo2WDTgd2JVPrM7LjxoFNkAesm7JPgQZ6BSxAa23m2Oe6c%2F8BANHVw%3D%3D"
							+"&numOfRows=10"
							+"&pageNo="+pageNo
							+"&MobileOS=ETC&MobileApp=TestApp&_type=xml"
							+"&mapX="+smapX
							+"&mapY="+smapY
							+"&radius=10000"
							,true);
					request.send();
				}else{
					alert("주소 정보가 정확하지 않습니다");
				}
			})
		} 	 
	}
	$(function(){
		urls =url.split("/");
		let underBar = "<div class='underbar'></div>";
		if(urls[4]=="map.do"){
			
			$("#searchMapBar").append(underBar);
			$("#searchMapBar").attr("class",'tab_txt');
			$("#searchThemeBar").attr("class",'tab_txt2');
			$("#searchMapBarLi").attr("data-selected","true");
		}else{
			$("#searchThemeBar").append(underBar);
			$("#searchMapBar").attr("class",'tab_txt2');
			$("#searchThemeBar").attr("class",'tab_txt');
			$("#searchThemeBarLi").attr("data-selected","true");
		}
		$("#searchButton").on('click',function(){
			let pageNo =1;
			getMapList(pageNo);
		});
	})
	</script>
</head>

<body class="body-wrapper">
	<section class="top" style="background: url(../../images/bg.jpg); background-size: cover;">
  	<jsp:include page="../../component/header.jsp"></jsp:include>

		<!--===============================
=            Hero Area            =
================================-->
		<section class="TileContainer TileContainer_full" data-selenium="tile-container-section">
			<section class="TileContainer_column" data-selenium="tile-container-left">
				<div class="TileContainer_wrapper">
					<div class="WelcomeMessage WelcomeMessage_placeholder">
						<p>전국 캠핑장 정보를 한눈에!</p>
					</div>

					<div class="search_section">
						<ul class="search_tab" index="0">
							<li data-element-index="0" data-selected="false" class="tab_list LinkComponent_Container" id="searchThemeBarLi">
								<img src="https://img.icons8.com/external-icongeek26-glyph-icongeek26/64/000000/external-camping-tent-desert-icongeek26-glyph-icongeek26.png"
									style="width: 3em; height: 3em;" />
								<div class="tab_txt" id="searchThemeBar">
									<h6 class="tab_title" ><a href="./theme.do">이름으로 검색</a></h6>
									
								</div>
							</li>

							<li data-element-index="1" data-selected="false" class="tab_list LinkComponent__Container" id="searchMapBarLi">
								<img src="https://img.icons8.com/external-bartama-glyph-64-bartama-graphic/64/000000/external-location-travel-tourism-glyph-bartama-glyph-64-bartama-graphic.png"
									style="width: 3em; height: 3em;" />
								<div class="tab_txt2" id="searchMapBar">
									<h6 class="tab_title" ><a href="./map.do">지도로 검색</a></h6>
								</div>
							</li>
						</ul>

						<div class="search_box">
							<div class="SearchBoxContainer SearchBoxContainer--AllRooms SearchBoxContainer--vertical SearchBoxContainer--HomePageNewDesign SearchBoxContainer--ImproveTextSearch"
								id="SearchBoxContainer">
								<div class="tab_container TabContent">
									<div class="inner_container">
										<div class="Searchbox Searchbox--vertical" data-selenium="searchBox">
											<div class="Searchbox__wrapper">
												<div tabindex="0" class="IconBox IconBox--autocomplete"
													data-selenium="autocomplete-box"
													data-element-name="autocomplete-box">
													<div class="IconBox__wrapper"><i class="fa fa-search"></i>
														<div class="IconBox__child" data-selenium="icon-box-child">
															<input aria-label="찾고 있는 캠핑장이 있으신가요?"
																data-selenium="textInput" tabindex="-1" type="text"
																class="SearchBoxTextEditor SearchBoxTextEditor--autocomplete"
																placeholder="찾고 있는 캠핑장이 있으신가요?"
																id="strSearchMap" name="strSearchMap">

														</div>
													</div>
												</div>
											</div>
										</div>
									</div>

									
								</div>

								<div class="inner_container TabContent__Search--button">
									<button radius="M" data-selenium="searchButton" data-element-name="search-button"
										class="Buttonstyled__ButtonStyled-sc-5gjk6l-0 search_btn" color="primary" id="searchButton">
										<div class="BaseButtonstyled__HiddenToggler-sc-12j2fzo-2 search_btn_toggle">
											<div class="inner_container">
												<span
													class="Spanstyled__SpanStyled-sc-16tp9kb-0 search_btn_txt kite-js-Span ">캠핑장
													검색</span>
											</div>
										</div>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</section>
	</section>
	<!--===================================
=            Client Slider            =
====================================-->


	<!--===========================================
=            Popular deals section            =
============================================-->


	<section class="popular-deals section bg-gray">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-title">
						<div id="map" class="container" style="width:600px;height:400px">
						</div>
					</div>
				</div>
			</div>


			
			<div class="col-md-12">

				<!-- Recently Favorited -->
				<div class="container">
				<div id="resultNum" class="h4"></div>
						<table class="table product-dashboard-table mr-auto ml-auto col-md-12" style="margin-left:auto; margin-right:auto">
						<thead>
							<tr>
								<th class="text-center">썸네일</th>
								<th class="text-center">캠핑장명</th>
								<th class="text-center">캠핑유형</th>
							</tr>
						</thead>
						<tbody id="list">
						</tbody>
					</table>

				</div>


			
				<!-- pagination -->
				<div class="pagination justify-content-center">
					<nav aria-label="Page navigation example">
						<ul class="pagination" id="pagenation">
						<!--
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									<span class="sr-only">Previous</span>
							</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item active"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
									class="sr-only">Next</span>
									
							</a></li>
						  -->	
						</ul>
					</nav>
				</div>
				<!-- pagination -->
				</div>
			</div>
	</section>
 	<jsp:include page="../../component/footer.jsp"></jsp:include>

	<!-- JAVASCRIPTS -->

	<!-- tether js -->
	<script src="../../plugins/tether/js/tether.min.js"></script>
	<script src="../../plugins/raty/jquery.raty-fa.js"></script>
	<script src="../../plugins/slick-carousel/slick/slick.min.js"></script>
	<script src="../../plugins/jquery-nice-select/js/jquery.nice-select.min.js"></script>
	<script src="../../plugins/fancybox/jquery.fancybox.pack.js"></script>
	<script src="../../plugins/smoothscroll/SmoothScroll.min.js"></script>
	<!-- google map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"></script>
	<script src="../../plugins/google-map/gmap.js"></script>
	<script src="../../js/script.js"></script>

</body>

</html>