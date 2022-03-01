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
	<link href="../images/favicon.png" rel="shortcut icon">
	<!-- PLUGINS CSS STYLE -->
	<!-- <link href="plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet"> -->
	<!-- Bootstrap -->
	<link rel="stylesheet" href="../plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="../plugins/bootstrap/css/bootstrap-slider.css">
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
	<!--  네이버 스마트에디터 -->
	<script type="../text/javascript" src="/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>


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

	<!--  글쓰기 페이지 -->

	<section class="user-profile section">
		<div class="container">
			<div class="row">
				<div class="col-md-10 offset-md-1 col-lg-9 offset-lg-0">
					<!-- Edit Profile Welcome Text -->
					<div class="widget welcome-message">
						<h2>글쓰기</h2>
						<p>캠핑톡톡에 자신만의 이야기를 남겨주세요</p>
					</div>
					<!-- Edit Personal Info -->
					<div class="row">
						<div class="col-md-10 offset-md-1 col-lg offset-lg-0">
							<div class="widget write-form">
								<!-- 닉네임 -->
								<div class="form-group">
									<label for="nick">닉네임</label>
									<input type="text" class="form-control" id="nick">
								</div>

								<!-- 비밀번호 -->
								<div class="form-group">
									<label for="title">제목</label>
									<input type="text" class="form-control" id="title">
								</div>

								<!-- 카테고리 선택 -->
								<div class="form-group" style="margin: 20px 0px 20px;">
									<label for="type" style="margin-right:20px;">카테고리</label>
									<select class="selectpicker" id="type">
										<option>캠핑로그</option>
										<option>캠핑꿀팁</option>
										<option>캠핑어때</option>
									</select>
								</div>

								<!-- 제목 -->
								<div class="form-group">
									<label for="password">비밀번호</label>
									<input type="password" class="form-control" id="password">
								</div>

								<!-- 내용 -->
								<div class="form-group">
									<label for="content">내용</label>
									<input type="text" class="form-control" id="content"
										style="width:70%x; height:500px;">
								</div>

								<!-- 가입약관 -->
								<div class="form-group"
									style="text-align:left;border:1px solid #e0e0e0;background-color:f9f9f9;padding:5px">
									<label for="info" style="margin:10px;">※ 개인정보 수집 및 이용에 관한 안내</label>
									<div style="padding-left:10px;">
										<div
											style="width:97%;height:95px;font-size:11px;letter-spacing: -0.1em;border:1px solid #c5c5c5;background-color:#fff;padding-left:14px;padding-top:7px;">
											1. 수집 개인정보 항목 : 회사명, 담당자명, 메일 주소, 전화번호, 홈페이지 주소, 팩스번호, 주소 <br />
											2. 개인정보의 수집 및 이용목적 : 제휴신청에 따른 본인확인 및 원활한 의사소통 경로 확보 <br />
											3. 개인정보의 이용기간 : 모든 검토가 완료된 후 3개월간 이용자의 조회를 위하여 보관하며, 이후 해당정보를 지체 없이 파기합니다.
											<br />
											4. 그 밖의 사항은 개인정보취급방침을 준수합니다.
										</div>
									</div>
									<div
										style="padding-top:7px;padding-left:5px;padding-bottom:7px;font-family: Gulim,Tahoma,verdana;">
										<input type="checkbox" name="info" value="1" class="input_radio"
											style="margin:5px;">
										<span><label for="info_bottom">개인정보 수집 및 이용에 대해 동의합니다.</label></span>
									</div>
								</div>

								<!-- 등록 버튼 -->
								<div class="button">
									<button style="margin-top:20px; margin-right:10px;" class="btn btn-transparent"
										onclick="location.href='board_list1.html'">목록</button>
									<button style="margin-top:20px; float: right;" class="btn btn-transparent"
										onclick="location.href='board_list1.html'">등록</button>
								</div>
							</div>
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