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
<link href="../images/favicon.png" rel="shortcut icon">
<!-- PLUGINS CSS STYLE -->
<link href="../plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
<!-- Bootstrap -->
<link rel="stylesheet" href="../plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../plugins/bootstrap/css/bootstrap-slider.css">
<!-- Font Awesome -->
<link href="../plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- Owl Carousel -->
<link href="../plugins/slick-carousel/slick/slick.css" rel="stylesheet">
<link href="../plugins/slick-carousel/slick/slick-theme.css"
	rel="stylesheet">
<!-- Fancy Box -->
<link href="../plugins/fancybox/jquery.fancybox.pack.css"
	rel="stylesheet">
<link href="../plugins/jquery-nice-select/css/nice-select.css"
	rel="stylesheet">
<!-- CUSTOM CSS -->
<link href="../css/style.css" rel="stylesheet">
<style type="text/css">
img .img-fluid {
	width: 600px;
	height: 400px;
}

.slider {
	padding-top: 30px;
	padding-bottom: 30px;
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
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script src="../plugins/bootstrap/js/popper.min.js"></script>
<script src="../plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="../plugins/bootstrap/js/bootstrap-slider.js"></script>

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=44d54500db491a25378cc4604dd20efc&libraries=services"></script>
<script type="text/javascript">

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
					let xmlData =request.responseXML;
					
					
					
					const induty = xmlData.getElementsByTagName('induty');
					const contentId = xmlData.getElementsByTagName('contentId');
					
					
					
					
					
					
					const facltNm = xmlData.getElementsByTagName('facltNm');
					const addr1 = xmlData.getElementsByTagName('addr1');
					//const glampInnerFclty = xmlData.getElementsByTagName('glampInnerFclty');
					const animalCmgCl = xmlData.getElementsByTagName('animalCmgCl');
					const sbrsCl = xmlData.getElementsByTagName('sbrsCl');
					//const lineIntro = xmlData.getElementsByTagName('lineIntro');
					const firstImageUrl = xmlData.getElementsByTagName('firstImageUrl');
					const doNm =  xmlData.getElementsByTagName('doNm');
					const hompage = xmlData.getElementsByTagName('homepage');
					console.log(facltNm[0].childNodes[0].nodeValue);
					console.log(firstImageUrl[0].childNodes[0].nodeValue);
					
					
					let sInduty= document.getElementById("induty");
					sInduty.textContent =induty[0].childNodes[0].nodeValue;
					
					
					let sFacltNm= document.getElementById("facltNm");
					sFacltNm.textContent =facltNm[0].childNodes[0].nodeValue;
					let sAddr1= document.getElementById("addr1");
					sAddr1.textContent =addr1[0].childNodes[0].nodeValue ;
					//let sGlampInnerFclty= document.getElementById("glampInnerFclty");
					
					//sGlampInnerFclty.textContent = glampInnerFclty[0].childNodes[0].nodeValue;
					let sNimalCmgCl= document.getElementById("animalCmgCl");
					sNimalCmgCl.textContent =animalCmgCl[0].childNodes[0].nodeValue;
					let sSbrsCl= document.getElementById("sbrsCl");
					sSbrsCl.textContent =sbrsCl[0].childNodes[0].nodeValue;
					//let sLineIntro =document.getElementById("lineIntro");
					//sLineIntro.textContent =lineIntro[0].childNodes[0].nodeValue;
					let sDoNm =document.getElementById("doNm");
					sDoNm.textContent =doNm[0].childNodes[0].nodeValue;
					//let sHompage =document.getElementById("hompage");
					//sHompage.textContent =hompage[0].childNodes[0].nodeValue;
					document.getElementById("mainImg").setAttribute("src",firstImageUrl[0].childNodes[0].nodeValue);
					let sContentId= document.getElementById("contentId");
					
					
				}else{
					alert("페이지 에러");
				}
				
			}
		};
		//요청방식 / 요청 url// 동기
		request.open('GET',' http://api.visitkorea.or.kr/openapi/service/rest/GoCamping/'
				+"locationBasedList"
				+"?ServiceKey=02RP9yCl0%2BWeb7VZ9RjglX%2FY7k%2Bp%2FoHbLo2WDTgd2JVPrM7LjxoFNkAesm7JPgQZ6BSxAa23m2Oe6c%2F8BANHVw%3D%3D"
				+"&numOfRows=1"
				+"&pageNo=1"
				+"&MobileOS=ETC&MobileApp=TestApp&_type=xml"
				+"&mapX="+smapX
				+"&mapY="+smapY
				+"&radius=1"
				,true);
		request.send();
		
		let mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new kakao.maps.LatLng(smapY, smapX), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };

		let map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// 마커가 표시될 위치입니다 
		let markerPosition  = new kakao.maps.LatLng(smapY, smapX); 

		// 마커를 생성합니다
		let marker = new kakao.maps.Marker({
	    	position: markerPosition
		});
		marker.setMap(map);
		}

	
		

</script>

</head>

<body class="body-wrapper">
	<jsp:include page="../component/header.jsp"></jsp:include>

	<!--===================================
=            Store Section            =
====================================-->
	<section class="section bg-gray">
		<!-- Container Start -->
		<div class="container">
			<div class="row">
				<div class="col-lg">
					<div class="row">
						<div
							class="container-fluid p-5 my-5 bg-light border col-lg-8 shadow-sm pt-3">
							<div class="product-details">
								<div id='facltNm' class="h1"></div>
								<div class="product-meta">
									<ul class="list-inline">

										<li class="list-inline-item"><i
											class="fa fa-location-arrow"></i>
											<div id="doNm"></div></li>
									</ul>
								</div>
								<div class="product-slider">
									<div class="product-slider-item my-4" id="dMain"
										>
										<img class="img-fluid w-100" 
											alt="product-img" style="height: 500px; "id="mainImg">
									</div>
									<div class="product-slider-item my-4" id="dsub2"
										data-image="images/campsite/캠핑2.jpg">
										<img class="d-block img-fluid w-100"
											src="images/campsite/캠핑2.jpg" alt="Second slide"id="sub1Img">
									</div>
									<div class="product-slider-item my-4" id="dsub3"
										data-image="images/campsite/캠핑3.png">
										<img class="d-block img-fluid w-100"
											src="images/campsite/캠핑3.png" alt="Third slide"id="sub2Img">
									</div>
									<div class="product-slider-item my-4" id="dsub4"
										data-image="images/campsite/캠핑4.jpg">
										<img class="d-block img-fluid w-100"
											src="images/campsite/캠핑4.jpg" alt="Third slide"id="sub3Img">
									</div>
									<div class="product-slider-item my-4" id="dsub5"
										data-image="images/campsite/캠핑5.jpg">
										<img class="d-block img-fluid w-100"
											src="images/campsite/캠핑5.jpg" alt="Third slide"id="sub4Img">
									</div>
								</div>
							</div>
						</div>

						<div
							class="container-fluid col-lg-4 shadow-sm p-5 my-5 border bg-light pt-3">
							<p></p>
							<table class="table table-sm">
								<tbody>
									<tr>
										<td>주소</td>
										<td><div id="addr1">주소1</div></td>
									</tr>
									<tr>
										<td>전화</td>
										<td><div id="addr1"></div></td>
									</tr>
									<tr>
										<td>홈페이지</td>
										<td><div id="homepage"></div></td>
									</tr>
									<tr>
										<td>기본 제공</td>
										<td><div id="sbrsCl"></div></td>
									</tr>
									<tr>
										<td>캠프 시설</td>
										<td><div id="glampInnerFclty"></div></td>
									</tr>
									<tr>
										<td>캠핑 형태</td>
										<td><div id="induty"></div></td>
									</tr>

									<tr>
										<td>애완동물출입</td>
										<td><div id="animalCmgCl"></div></td>
									</tr>

								</tbody>
							</table>
							<h4>한줄소개</h4>
							<div id="lineIntro"></div>
						</div>
					</div>

					<div id="map"
						class="container-lg-12 shadow-sm content pt-5 border bg-light">
						<h3 class="text-center">지도찾기</h3>
						<div class=" d-flex justify-content-center">
							<div id='map' style="width:300px; height:400px"></div>
						</div>
					</div>


					<div
						class="container-block shadow-sm content mt-5 pt-5 border bg-light">

						<h3 class=" text-center">&nbsp;&nbsp;&nbsp;&nbsp; 캠핑 리뷰</h3>
						<div class="container product-review">
							<div class="media-body">

								<div class="name">
									<h5>작성자1</h5>
								</div>
								<div class="date">
									<p>날짜1</p>
								</div>
								<div class="review-comment">
									<p>리뷰내용1</p>
									<button class="btn btn-warning rmbtn">수정</button>
									<button class="btn btn-danger rdbtn">삭제</button>
								</div>

							</div>
							<div class="media-body">

								<div class="name">
									<h5>작성자2</h5>
								</div>
								<div class="date">
									<p>날짜2</p>
								</div>
								<div class="review-comment">
									<p>리뷰내용2</p>
									<button class="btn btn-warning rmbtn">수정</button>
									<button class="btn btn-danger rdbtn">삭제</button>
								</div>

							</div>
							<div class="media-body">
								<div class="name">
									<h5>작성자3</h5>
								</div>
								<div class="date">
									<p>날짜3</p>
								</div>
								<div class="review-comment">
									<p>리뷰내용3</p>
									<button class="btn btn-warning rmbtn">수정</button>
									<button class="btn btn-danger rdbtn">삭제</button>
								</div>
							</div>
							<div class="container review-submission bg-light">
								<h3 class="tab-title text-start">리뷰작성</h3>


								<div class="review-submit">
									<form action="#" class="row">
										<div class="col-lg-6">
											<input type="text" name="name" id="name" class="form-control"
												placeholder="Name">
										</div>
										<div class="col-lg-6">
											<input type="email" name="email" id="email"
												class="form-control" placeholder="Email">
										</div>
										<div class="col-12">
											<textarea name="review" id="review" rows="10"
												class="form-control" placeholder="Message"></textarea>
										</div>
										<div class="col-12">
											<button type="submit" class="btn btn-main btn-sm">작성</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Container End -->
	</section>

	<jsp:include page="../component/footer.jsp"></jsp:include>
	<!-- JAVASCRIPTS -->
	<script src="../plugins/jQuery/jquery.min.js"></script>
	<script src="../plugins/bootstrap/js/popper.min.js"></script>
	<script src="../plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="../plugins/bootstrap/js/bootstrap-slider.js"></script>
	<!-- tether js -->
	<script src="../plugins/tether/js/tether.min.js"></script>
	<script src="../plugins/raty/jquery.raty-fa.js"></script>
	<script src="../plugins/slick-carousel/slick/slick.min.js"></script>
	<script
		src="../plugins/jquery-nice-select/js/jquery.nice-select.min.js"></script>
	<script src="../plugins/fancybox/jquery.fancybox.pack.js"></script>
	<script src="../plugins/smoothscroll/SmoothScroll.min.js"></script>
	<!-- google map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"></script>
	<script src="../plugins/google-map/gmap.js"></script>
	<script src="../js/script.js"></script>

</body>

</html>