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
	<!-- <link href ="../plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet"> -->
	<!-- Bootstrap -->
	<link rel="stylesheet" href="../plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="../plugins/bootstrap/css/bootstrap-slider.css">
	<!-- Font Awesome -->
	<link href ="../plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!-- Owl Carousel -->
	<link href ="../plugins/slick-carousel/slick/slick.css" rel="stylesheet">
	<link href ="../plugins/slick-carousel/slick/slick-theme.css" rel="stylesheet">
	<!-- Fancy Box -->
	<link href ="../plugins/fancybox/jquery.fancybox.pack.css" rel="stylesheet">
	<link href ="../plugins/jquery-nice-select/css/nice-select.css" rel="stylesheet">
	<!-- CUSTOM CSS -->
	<link href ="../css/search.css" rel="stylesheet">
	<link href ="../css/style.css" rel="stylesheet">



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
</head>

<body class="body-wrapper">
	<section class="top" style="background: url(../images/bg.jpg); background-size: cover;">
  	<jsp:include page="../component/header.jsp"></jsp:include>

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
							<li data-element-index="0" data-selected="true" class="tab_list LinkComponent_Container">
								<img src="https://img.icons8.com/external-icongeek26-glyph-icongeek26/64/000000/external-camping-tent-desert-icongeek26-glyph-icongeek26.png"
									style="width: 3em; height: 3em;" />
								<div class="tab_txt">
									<h6 class="tab_title">테마별 검색</h6>
									<div class="underbar"></div>
								</div>
							</li>

							<li data-element-index="1" data-selected="false" class="tab_list LinkComponent__Container">
								<img src="https://img.icons8.com/external-bartama-glyph-64-bartama-graphic/64/000000/external-location-travel-tourism-glyph-bartama-glyph-64-bartama-graphic.png"
									style="width: 3em; height: 3em;" />
								<div class="tab_txt2">
									<h6 class="tab_title">지역별 검색</h6>
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
																placeholder="찾고 있는 캠핑장이 있으신가요?" value="">
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="inner_container filtering_search">
										<form action="" method="">
											<h6>캠핑장 유형</h6>
											<input type="radio" name="camping_type" id="normal" value="normal">
											<label for="normal">일반 캠핑장</label>
											<input type="radio" name="camping_type" id="car" value="car">
											<label for="car">자동차 캠핑장</label>
											<input type="radio" name="camping_type" id="caravan" value="caravan">
											<label for="caravan">카라반</label>
											<input type="radio" name="camping_type" id="glamping" value="glamping">
											<label for="glamping">글램핑</label>

											<h6>주위 환경</h6>
											<input type="radio" name="camping_theme" id="mountain" value="mountain">
											<label for="mountain">산</label>
											<input type="radio" name="camping_theme" id="valley" value="valley">
											<label for="valley">계곡</label>
											<input type="radio" name="camping_theme" id="sea" value="sea">
											<label for="sea">바다</label>
											<input type="radio" name="camping_theme" id="city" value="city">
											<label for="city">도심</label>

											<h6>이용가능 시설</h6>
											<input type="radio" name="camping_theme" id="mountain" value="mountain">
											<label for="mountain">산</label>
											<input type="radio" name="camping_theme" id="valley" value="valley">
											<label for="valley">계곡</label>
											<input type="radio" name="camping_theme" id="sea" value="sea">
											<label for="sea">바다</label>
											<input type="radio" name="camping_theme" id="city" value="city">
											<label for="city">도심</label>

											<h6>애완동물 동반 가능 여부</h6>
											<input type="radio" name="camping_theme" id="mountain" value="mountain">
											<label for="mountain">가능</label>
										</form>
									</div>
								</div>

								<div class="inner_container TabContent__Search--button">
									<button radius="M" data-selenium="searchButton" data-element-name="search-button"
										class="Buttonstyled__ButtonStyled-sc-5gjk6l-0 search_btn" color="primary">
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
						<h2>검색 결과 출력</h2>
						<p>리스트 형식으로 바꿈</p>
					</div>
				</div>
			</div>
			<div class="row">
				<!-- offer 01 -->
				<div class="col-lg-12">
					<div class="trending-ads-slide">
						<div class="col-sm-12 col-lg-4">
							<!-- product card -->
							<div class="product-item bg-light">
								<div class="card">
									<div class="thumb-content">
										<!-- <div class="price">$200</div> -->
										<a href="camping_detail.html">
											<img class="card-img-top img-fluid" src="../images/campsite/캠핑1.jpg"
												alt="Card image cap">
										</a>
									</div>
									<div class="card-body">
										<h4 class="card-title"><a href="camping_detail.html">캠핑3</a></h4>
										<ul class="list-inline product-meta">
											<li class="list-inline-item">
												<a href="camping_detail.html"><i class="fa fa-folder-open-o"></i>리뷰3</a>
											</li>
											<li class="list-inline-item">
												<a href="#"><i class="fa fa-calendar"></i>글쓴이</a>
											</li>
										</ul>
										<p class="card-text">ㅇㅇ</p>
										<div class="product-ratings">
											<ul class="list-inline">
												<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
												<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
												<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
												<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
												<li class="list-inline-item"><i class="fa fa-star"></i></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<div class="col-sm-12 col-lg-4">
							<!-- product card -->
							<div class="product-item bg-light">
								<div class="card">
									<div class="thumb-content">
										<!-- <div class="price">$200</div> -->
										<a href="camping_detail.html">
											<img class="card-img-top img-fluid" src="../images/campsite/캠핑2.jpg"
												alt="Card image cap">
										</a>
									</div>
									<div class="card-body">
										<h4 class="card-title"><a href="camping_detail.html">캠핑4</a></h4>
										<ul class="list-inline product-meta">
											<li class="list-inline-item">
												<a href="camping_detail.html"><i class="fa fa-folder-open-o"></i>글쓴이4</a>
											</li>
											<li class="list-inline-item">
												<a href="#"><i class="fa fa-calendar"></i>와우</a>
											</li>
										</ul>
										<p class="card-text">ㅇㅇㅇ</p>
										<div class="product-ratings">
											<ul class="list-inline">
												<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
												<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
												<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
												<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
												<li class="list-inline-item"><i class="fa fa-star"></i></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<div class="col-sm-12 col-lg-4">
							<!-- product card -->
							<div class="product-item bg-light">
								<div class="card">
									<div class="thumb-content">
										<!-- <div class="price">$200</div> -->
										<a href="camping_detail.html">
											<img class="card-img-top img-fluid" src="../images/campsite/캠핑3.png"
												alt="Card image cap">
										</a>
									</div>
									<div class="card-body">
										<h4 class="card-title"><a href="#"></a>캠핑장1</h4>
										<ul class="list-inline product-meta">
											<li class="list-inline-item">
												<a href="camping_detail.html"><i class="fa fa-folder-open-o"></i>주소</a>
											</li>
											<li class="list-inline-item">
												<a href="#"><i class="fa fa-calendar"></i>이름</a>
											</li>
										</ul>
										<p class="card-text">리뷰내용1</p>
										<div class="product-ratings">
											<ul class="list-inline">
												<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
												<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
												<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
												<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
												<li class="list-inline-item"><i class="fa fa-star"></i></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<div class="col-sm-12 col-lg-4">
							<!-- product card -->
							<div class="product-item bg-light">
								<div class="card">
									<div class="thumb-content">
										<!-- <div class="price">$200</div> -->
										<a href="camping_detail.html">
											<img class="card-img-top img-fluid" src="../images/campsite/캠핑4.jpg"
												alt="Card image cap">
										</a>
									</div>
									<div class="card-body">
										<h4 class="card-title"><a href="camping_detail.html">캠핑장2</a></h4>
										<ul class="list-inline product-meta">
											<li class="list-inline-item">
												<a href="camping_detail.html"><i class="fa fa-folder-open-o"></i>주소2</a>
											</li>
											<li class="list-inline-item">
												<a href="#"><i class="fa fa-calendar"></i>이름2</a>
											</li>
										</ul>
										<p class="card-text">리뷰2</p>
										<div class="product-ratings">
											<ul class="list-inline">
												<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
												<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
												<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
												<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
												<li class="list-inline-item"><i class="fa fa-star"></i></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
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