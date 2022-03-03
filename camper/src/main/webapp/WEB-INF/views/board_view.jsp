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
	<jsp:include page="../component/header.jsp"></jsp:include>

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
						<img src="../images/community/camping.png" alt="phto">
						<p>밤하늘을 보면서 캠핑을 즐기니 정말 좋은 캠핑이였다. 밤하늘을 보면서 캠핑을 즐기니 정말 좋은 캠핑이였다.
							밤하늘을 보면서 캠핑을 즐기니 정말 좋은 캠핑이였다.밤하늘을 보면서 캠핑을 즐기니 정말 좋은 캠핑이였다.</p>

						<!--  좋아요 / 댓글 part -->
						<ul class="list-inline" style="margin-top: 30%;">
							<li class="list-inline-item text-right">
								<img src="../images/community/like.png">
							</li>
							<li class="list-inline-item text-right">
								<img src="../images/community/writing.png">
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
						<a href="/community/main.do" style="float: left;"><button class="btn btn-transparent">목록</button></a>
						<div style="float: right;">
							<a href="/community/modify.do"><button class="btn btn-transparent">수정</button></a>
							<a href="/community/delete.do"><button class="btn btn-transparent">삭제</button></a>
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