<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

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
	<link href ="../css/style.css" rel="stylesheet">


	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>

<body class="body-wrapper">
	<section class="header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<nav class="navbar navbar-expand-lg navbar-light navigation">
						<a class="navbar-brand" href="../">
							<img src="../images/logo.png" alt="로고">
						</a>
						<button class="navbar-toggler" type="button" data-toggle="collapse"
							data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
							aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav ml-auto main-nav ">
								<li class="nav-item dropdown dropdown-slide">
									<a class="nav-link dropdown-toggle" href="../search/theme.do" aria-haspopup="true"
										aria-expanded="false">
										캠핑어때
									</a>
								</li>
								<li class="nav-item dropdown dropdown-slide">
									<a class="nav-link dropdown-toggle" href="../community/main.do" aria-haspopup="true"
										aria-expanded="false">
										캠핑톡톡
									</a>
								</li>
								<li class="nav-item dropdown dropdown-slide">
									<a class="nav-link dropdown-toggle" href="../ask/faq.do" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false">
										고객센터
									</a>
									<!-- Dropdown list -->
									<div class="dropdown-menu">
										<a class="dropdown-item" href="../ask/faq.do">공지사항</a>
										<a class="dropdown-item" href="../ask/notice.do">FAQ</a>
									</div>
								</li>
							</ul>
							<ul class="navbar-nav ml-auto mt-10">
								<li class="nav-item dropdown dropdown-slide">
									<a class="nav-link" href="" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<img class="profile-img" src="../images/1.jpg">
									</a>
									<!-- Dropdown list -->
									<div class="dropdown-menu">
										<a class="nav-link login-button" href="../login/login.do">로그인</a>
										<a class="nav-link add-button" href="../login/register">회원가입</a>
									</div>
								</li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!--=================================
=            Single Blog            =
==================================-->



	<section class="blog single-blog section">
		<div class="container">
			<div class="row">
				<div class="col-md-10 offset-md-1 col-lg-9 offset-lg-0">
					<article class="single-post">

						<!--  상세 보기 part -->
						<h3>제목</h3>
						<ul class="list-inline">
							<li class="list-inline-item">by <a href="">작성자</a></li>
							<li class="list-inline-item">2022-02-24</li>
						</ul>
						<img src="./images/community/camping.png" alt="phto">
						<p>밤하늘을 보면서 캠핑을 즐기니 정말 좋은 캠핑이였다. 밤하늘을 보면서 캠핑을 즐기니 정말 좋은 캠핑이였다.
							밤하늘을 보면서 캠핑을 즐기니 정말 좋은 캠핑이였다.밤하늘을 보면서 캠핑을 즐기니 정말 좋은 캠핑이였다.</p>

						<!--  좋아요 / 댓글 part -->
						<ul class="list-inline" style="margin-top: 30%;">
							<li class="list-inline-item text-right">
								<img src="./images/community/like.png">
							</li>
							<li class="list-inline-item text-right">
								<img src="./images/community/writing.png">
							</li>
						</ul>

						<!--  댓글 입력칸 part -->
						<div class="block comment" style="margin-top: 10px;">
							<div class="form-group mb-30">
								<label for="message">댓글 쓰기</label>
								<input type="text" class="form-control" id="reply">
							</div>
							<button class="btn btn-transparent">댓글 등록</button>
						</div>
					</article>
					<!--  등록 버튼 part -->
					<div class="container">
						<div style="float: left;">
							<button class="btn btn-transparent" onclick="location.href='board_list1.html'">목록</button>
						</div>
						<div style="float: right;">
							<button class="btn btn-transparent" onclick="location.href='board_modify.html'">수정</button>
							<button class="btn btn-transparent" onclick="location.href='board_delete.html'">삭제</button>
						</div>
					</div>
				</div>

				<!--  오른쪽 part -->
				<div class="col-md-10 offset-md-1 col-lg-3 offset-lg-0">

					<!-- 검색 위젯 -->
					<div class="widget search p-0">
						<div class="input-group">
							<input type="text" class="form-control" id="expire" placeholder="Search">
							<span class="input-group-addon"><i class="fa fa-search"></i></span>
						</div>
					</div>


					<!-- 카테고리 위젯 -->
					<div class="widget category">
						<h5 class="widget-header">카테고리</h5>
						<ul class="category-list">
							<li><a href="board_list1.html">캠핑로그 <span class="float-right">(2)</span></a></li>
							<li><a href="board_list2.html">캠핑꿀팁 <span class="float-right">(5)</span></a></li>
							<li><a href="board_list3.html">캠핑어때 <span class="float-right">(7)</span></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		</div>
	</section>


	<!--============================
=            Footer            =
=============================-->

	<footer class="footer section section-sm">
		<!-- Container Start -->
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-12 offset-md-1 offset-lg-0">
					<!-- About -->
					<div class="block about">
						<!-- footer logo -->
						<img src="images/logo.png" alt="">
						<!-- description -->
					</div>
				</div>
				<!-- Link list -->
				<div class="col-lg-2 col-md-2 offset-md-1 offset-lg-0">
					<div class="block">
						<a href="./search_theme.html">
							<h4>캠핑 어때</h4>
						</a>
						<ul>
							<li><a href="./search_theme.html">테마별 검색</a></li>
							<li><a href="#">지역별 검색</a></li>
						</ul>
					</div>
				</div>
				<!-- Link list -->
				<div class="col-lg-2 col-md-2 offset-md-1 offset-lg-0">
					<div class="block">
						<a href="./board_main.html">
							<h4>캠핑 톡톡</h4>
						</a>
						<ul>
							<li><a href="./board_list1.html">캠핑 로그</a></li>
							<li><a href="./board_list2.html">캠핑 꿀팁</a></li>
							<li><a href="./board_list3.html">캠핑 가자</a></li>
						</ul>
					</div>
				</div>
				<!-- Link list -->
				<div class="col-lg-2 col-md-2 offset-md-1 offset-lg-0">
					<div class="block">
						<h4>고객센터</h4>
						<ul>
							<li><a href="board_notice.html">공지사항</a></li>
							<li><a href="board_faq.html">FAQ</a></li>
						</ul>
					</div>
				</div>



			</div>
		</div>
		<!-- Container End -->
		<!-- To Top -->
		<div class="top-to">
			<a id="top" class="" href="#"><i class="fa fa-angle-up"></i></a>
		</div>

	</footer>
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