<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>

	<!-- SITE TITTLE -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>캠핑톡톡|글목록</title>

	<!-- FAVICON -->
	<link href="../img/favicon.png" rel="shortcut icon">
	<!-- PLUGINS CSS STYLE -->
	<!-- <link href="plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet"> -->
	<!-- Bootstrap -->
	<link rel="stylesheet" href="../plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="../plugins/bootstrap/css/bootstrap-slider.css">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<!-- Font Awesome -->
	<link href="../plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!-- Owl Carousel -->
	<link href="../plugins/slick-carousel/slick/slick.css" rel="stylesheet">
	<link href="../plugins/slick-carousel/slick/slick-theme.css" rel="stylesheet">
	<!-- Fancy Box -->
	<link href="../plugins/fancybox/jquery.fancybox.pack.css" rel="stylesheet">
	<link href="../plugins/jquery-nice-select/css/nice-select.css" rel="stylesheet">
	<!-- CUSTOM CSS -->
	<link href="../css/style.css" rel="stylesheet">
	<link href="../css/board_main.css" rel="stylesheet">


	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>

<!-- Header part -->
<body class="body-wrapper">
	<jsp:include page="../component/header.jsp"></jsp:include>

	<!-- FAQ Section -->
	<section class="blog section">
	<div class="container">
				<div class="col-md-10 offset-md-1 col-lg-9 offset-lg-0"">
					<h2><i class="ico"><img src="../images/community/faq.png"></i>
					FAQ
					</h2><hr />     
				</div>
			</div>
		<div class="container">
			<div class="row">
				<div class="col-md-10 offset-md-1 col-lg-9 offset-lg-0">


					<!-- FAQ 아코디언 part -->
					<article>
						<div id="accordion">
							<h3>자주 묻는 질문</h3>
							<div class="card" style="margin-top:20px;">
								<div class="card-header">
									<a class="card-link" data-toggle="collapse" href="#collapseOne">
										캠핑가자에서 캠핑을 같이가고싶으면 어떡해야 하나요 ? </a>
								</div>
								<div id="collapseOne" class="collapse" data-parent="#accordion">
									<div class="card-body"> 캠핑가자 카테고리에 올라온 다른 회원님의 글을 통해서 캠핑에 같이가고
									싶으신 회원님은 쪽지로 상호간의 약속을 잡으셔서 함께 가시면 됩니다.  </div>
								</div>
							</div>

							<div class="card">
								<div class="card-header">
									<a class="collapsed card-link" data-toggle="collapse" href="#collapseTwo">
										쪽지는 어떻게 보내나요 ? </a>
								</div>
								<div id="collapseTwo" class="collapse" data-parent="#accordion">
									<div class="card-body"> 게시물 작성하신 다른 회원님의 닉네임을 누르셔서 뜨는 회원프로필 창 하단에
									팔로우 / 쪽지하기 버튼을 누르셔서 보내고 싶으신 내용을 보내시면 됩니다. </div>
								</div>
							</div>

							<div class="card">
								<div class="card-header">
									<a class="collapsed card-link" data-toggle="collapse" href="#collapseThree">
										좋아요 눌렀던 게시물을 취소하려면 어떻게 해야하나요 ? </a>
								</div>
								<div id="collapseThree" class="collapse" data-parent="#accordion">
									<div class="card-body"> 마이페이지안의 좋아요 목록보기에서 회원님이 누르신 게시물들을
									확인 할수 있기 때문에 다시 게시물 들어가셔서 좋아요를 취소하시면 됩니다. </div>
								</div>
							</div>

							<div class="card">
								<div class="card-header">
									<a class="collapsed card-link" data-toggle="collapse" href="#collapseFour">
										자주묻는 질문 4입니다. </a>
								</div>
								<div id="collapseFour" class="collapse" data-parent="#accordion">
									<div class="card-body"> 자주 묻는 질문 4에 대한 대답입니다. 이러쿵저러쿵 이러쿵저러쿵
										이러쿵저러쿵 이러쿵저러쿵 이러쿵저러쿵 이러쿵저러쿵 이러쿵저러쿵 이러쿵저러쿵 이러쿵저러쿵 이러쿵저러쿵 </div>
								</div>
							</div>

							<div class="card">
								<div class="card-header">
									<a class="collapsed card-link" data-toggle="collapse" href="#collapseFive">
										자주묻는 질문 5입니다. </a>
								</div>
								<div id="collapseFive" class="collapse" data-parent="#accordion">
									<div class="card-body"> 자주 묻는 질문 5에 대한 대답입니다. 이러쿵저러쿵 이러쿵저러쿵
										이러쿵저러쿵 이러쿵저러쿵 이러쿵저러쿵 이러쿵저러쿵 이러쿵저러쿵 이러쿵저러쿵 이러쿵저러쿵 이러쿵저러쿵 </div>
								</div>
							</div>

							<div class="card">
								<div class="card-header">
									<a class="collapsed card-link" data-toggle="collapse" href="#collapseSix">
										자주묻는 질문 6입니다. </a>
								</div>
								<div id="collapseSix" class="collapse" data-parent="#accordion">
									<div class="card-body"> 자주 묻는 질문 6에 대한 대답입니다. 이러쿵저러쿵 이러쿵저러쿵
										이러쿵저러쿵 이러쿵저러쿵 이러쿵저러쿵 이러쿵저러쿵 이러쿵저러쿵 이러쿵저러쿵 이러쿵저러쿵 이러쿵저러쿵 </div>
								</div>
							</div>

							<div class="card">
								<div class="card-header">
									<a class="collapsed card-link" data-toggle="collapse" href="#collapseSeven">
										자주묻는 질문 7입니다. </a>
								</div>
								<div id="collapseSeven" class="collapse" data-parent="#accordion">
									<div class="card-body"> 자주 묻는 질문 7에 대한 대답입니다. 이러쿵저러쿵 이러쿵저러쿵
										이러쿵저러쿵 이러쿵저러쿵 이러쿵저러쿵 이러쿵저러쿵 이러쿵저러쿵 이러쿵저러쿵 이러쿵저러쿵 이러쿵저러쿵 </div>
								</div>
							</div>

						</div>
					</article>
				</div>

				<!--  우측 part -->
				<div class="col-md-10 offset-md-1 col-lg-3 offset-lg-0">
					<div class="sidebar">


						<!-- 검색 부분 -->

						<div class="widget search p-0">
							<div class="input-group">
								<input type="text" class="form-control" id="expire" placeholder="Search..."> <span
									class="input-group-addon"><i class="fa fa-search"></i></span>
							</div>
						</div>


						<!-- 카테고리 부분 -->

						<div class="widget category">
							<!-- Widget Header -->
							<h5 class="widget-header">카테고리</h5>
							<ul class="category-list">
								<li><a href="/ask/notice.do">공지사항 <span class="float-right">(10)</span></a></li>
								<li><a href="/ask/faq.do">FAQ <span class="float-right">(10)</span></a></li>
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