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
<link href ="../images/favicon.png" rel="shortcut icon">
<!-- PLUGINS CSS STYLE -->
<link href ="../plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
<!-- Bootstrap -->
<link rel="stylesheet" href="../plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../plugins/bootstrap/css/bootstrap-slider.css">
<!-- Font Awesome -->
<link href ="../plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- Owl Carousel -->
<link href ="../plugins/slick-carousel/slick/slick.css" rel="stylesheet">
<link href ="../plugins/slick-carousel/slick/slick-theme.css"
	rel="stylesheet">
<!-- Fancy Box -->
<link href ="../plugins/fancybox/jquery.fancybox.pack.css" rel="stylesheet">
<link href ="../plugins/jquery-nice-select/css/nice-select.css"
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
								<h1 class="product-title">캠핑장 이름</h1>
								<div class="product-meta">
									<ul class="list-inline">

										<li class="list-inline-item"><i
											class="fa fa-location-arrow"></i> 위치<a href="">위치1</a></li>
									</ul>
								</div>
								<div class="product-slider">
									<div class="product-slider-item my-4"
										data-image="images/campsite/캠핑1.jpg">
										<img class="img-fluid w-100" src="images/campsite/캠핑1.jpg"
											alt="product-img" style="height: 500px;">
									</div>
									<div class="product-slider-item my-4"
										data-image="images/campsite/캠핑2.jpg">
										<img class="d-block img-fluid w-100"
											src="images/campsite/캠핑2.jpg" alt="Second slide">
									</div>
									<div class="product-slider-item my-4"
										data-image="images/campsite/캠핑3.png">
										<img class="d-block img-fluid w-100"
											src="images/campsite/캠핑3.png" alt="Third slide">
									</div>
									<div class="product-slider-item my-4"
										data-image="images/campsite/캠핑4.jpg">
										<img class="d-block img-fluid w-100"
											src="images/campsite/캠핑4.jpg" alt="Third slide">
									</div>
									<div class="product-slider-item my-4"
										data-image="images/campsite/캠핑5.jpg">
										<img class="d-block img-fluid w-100"
											src="images/campsite/캠핑5.jpg" alt="Third slide">
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
										<td>주소1</td>
									</tr>
									<tr>
										<td>전화</td>
										<td>02-0000-0000</td>
									</tr>
									<tr>
										<td>홈페이지</td>
										<td>https://</td>
									</tr>
									<tr>
										<td>화장실</td>
										<td>0</td>
									</tr>
									<tr>
										<td>샤워실</td>
										<td>1</td>
									</tr>
									<tr>
										<td>애완동물출입</td>
										<td>2017</td>
									</tr>
								</tbody>
							</table>
							<p>저희가 운영하는 이지캠핑장은 캠핑에 필요한 장비와 소품들을 제공해 드리고 있으며, 가벼운 맘과 차림으로
								즐거운 캠핑 라이프를 즐기실 수 있습니다. 기본 제공으로 식기류, 가스버너, 가스, 화로대 등을 제공해 드리고
								있으며, 필요하신 물품은 캠핑장내 매점을 통해 구입하실 수 있습니다. (침구류 본인지참) 저희 이지캠핑장은 유명산
								기슭에서 흘러나오는 맑은 계곡과, 가평의 유명한 잣나무숲을 품은 자연친화적 캠핑장입니다. 맑은 계곡가에서의 휴식과
								물놀이, 그리고 자체 수영장에서의 즐거운 물놀이도 가능합니다.</p>


						</div>
					</div>
						
						<div id="map" class="container-lg-12 shadow-sm content pt-5 border bg-light" >
						<h3 class="text-center">지도찾기</h3>
						<div class=" d-flex justify-content-center" >
						
						<img alt="" src="./images/campsite/map.png" style="height :300px;width: 400px;">
						</div>
						<div class="container">
						
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
	<script src="../plugins/jquery-nice-select/js/jquery.nice-select.min.js"></script>
	<script src="../plugins/fancybox/jquery.fancybox.pack.js"></script>
	<script src="../plugins/smoothscroll/SmoothScroll.min.js"></script>
	<!-- google map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"></script>
	<script src="../plugins/google-map/gmap.js"></script>
	<script src="../js/script.js"></script>

</body>

</html>