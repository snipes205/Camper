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
	<link href ="../css/style.css" rel="stylesheet">


	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
		function execDaumPostcode() {
			new daum.Postcode({
				oncomplete: function (data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('postcode').value = data.zonecode;
					document.getElementById("jibunAddress").value = data.jibunAddress;

					// 동 주소만 출력 도로명 주소 그 외 상세 주소 출력 부분 날림

				}
			}).open();
		}
	</script>

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
	<!--==================================
=            User Profile            =
===================================-->
	<section class="dashboard section">
		<!-- Container Start -->
		<div class="container">
			<!-- Row Start -->
			<div class="row">
				<div class="col-md-10 offset-md-1 col-lg-4 offset-lg-0">
					<div class="sidebar">
						<!-- User Widget -->
						<div class="widget user-dashboard-profile">
							<!-- User Image -->
							<div class="profile-thumb">
								<img src="images/1.jpg" alt="" class="rounded-circle">
							</div>
							<!-- User Name -->
							<h5 class="text-center">이름이름</h5>
							<p>나이(성별)</p>
						</div>
						<!-- Dashboard Links -->
						<div class="widget user-dashboard-menu">
							<ul>
								<li class="active">
									<a href="dashboard-my-ads.html"><i class="fa fa-user"></i> 내 정보 수정 </a>
								</li>
								<li>
									<a href="dashboard-jjim.html"><i class="fa fa-bookmark"></i> 찜한 갬핑장
										<span>5</span></a>
								</li>
								<li>
									<a href="dashboard-write.html"><i class="fa fa-pencil"></i> 내가 쓴 글
										<span>5</span></a>
								</li>
								<li>
									<a href="dashboard-like.html"><i class="fa fa-heart"></i> 좋아요 <span>12</span></a>
								</li>
								<li>
									<a href="dashboard-follow.html"><i class="fa fa-handshake-o"></i> 팔로우
										<span>23</span></a>
								</li>
								<li>
									<a href="dashboard-message.html"><i class="fa fa-comments"></i>
										메세지함
										<span>23</span></a>
								</li>
								<li>
									<a href="dashboard-question.html"><i class="fa fa-question-circle"></i> 1:1 문의
										<span>23</span></a>
								</li>

								<li>
									<a href="" data-toggle="modal" data-target="#deleteaccount"><i
											class="fa fa-trash"></i>탈퇴하기</a>
								</li>
							</ul>
						</div>

						<!-- delete-account modal -->
						<!-- delete account popup modal start-->
						<!-- Modal -->
						<div class="modal fade" id="deleteaccount" tabindex="-1" role="dialog"
							aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered" role="document">
								<div class="modal-content">
									<div class="modal-header border-bottom-0">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body text-center">
										<img src="images/dontleave.jpeg" class="img-fluid mb-2" alt="">
										<h6 class="py-2">정말 탈퇴하시겠습니까?</h6>
										<p>캠린이 두고 가지마요 ㅜㅜ
										</p>
										<textarea name="message" id="" cols="40" rows="4"
											class="w-100 rounded"></textarea>
									</div>
									<div
										class="modal-footer border-top-0 mb-3 mx-5 justify-content-lg-between justify-content-center">
										<button type="button" class="btn btn-primary" data-dismiss="modal">머무르기</button>
										<button type="button" class="btn btn-danger">진짜떠나기</button>
									</div>
								</div>
							</div>
						</div>
						<!-- delete account popup modal end-->
						<!-- delete-account modal -->

					</div>
				</div>
				<div class="col-md-10 offset-md-1 col-lg-8 offset-lg-0">
					<!-- title -->
					<div class="widget welcome-message">
						<h2>내 정보 수정</h2>
					</div>
					<!-- title -->
					<div class="row">
						<div class="col-lg-6 col-md-6">
							<div class="widget personal-info">
								<h3 class="widget-header user">내 정보</h3>
								<form action="#">
									<!-- id -->
									<div class="form-group">
										<label for="form-id">아이디</label>
										<input type="text" class="form-control" id="form-id" readonly value="iddb">
									</div>
									<!-- name -->
									<div class="form-group">
										<label for="form-name">이름</label>
										<input type="text" class="form-control" id="form-name" readonly value="namedb">
									</div>
									<!-- name -->
									<div class="form-group">
										<label for="form-pw">비밀번호</label>
										<input type="password" class="form-control" id="form-pw">
									</div>
									<!-- nick -->
									<label for="form-nick">닉네임</label>
									<div class="form-group d-inline-flex">
										<input type="text" class="form-control mr-2" id="form-nick">
										<button class="btn btn-transparent mt-0 text-center"
											style="white-space: nowrap;">중복확인</button>
									</div>
									<!-- File chooser -->
									<label for="form-profile">프로필 이미지</label>
									<div class="form-group choose-file d-inline-flex">
										<i class="fa fa-user text-center px-3"></i>
										<input type="file" class="form-control-file mt-2 pt-1" id="input-file">
									</div>
									<!-- Birth -->
									<div class="form-group">
										<label for="form-birth">생년월일</label>
										<input type="text" class="form-control" id="form-birth">
									</div>
									<!-- Phone -->
									<div class="form-group">
										<label for="form-num">핸드폰 번호</label>
										<input type="text" class="form-control" id="form-num">
									</div>
									<!-- Address -->
									<label for="form-add">주소</label>
									<div class="form-group d-inline-flex">
										<input type="text" class="form-control  mr-2" id="postcode" placeholder="우편번호">
										<input type="button" onclick="execDaumPostcode()"
											class="btn btn-transparent mt-0 text-center" value="주소검색">
									</div>

									<input type="text" class="form-control" id="jibunAddress" placeholder="지번주소"
										readonly>
									<br>
									<!-- Email -->
									<label for="form-mail">E-mail</label>
									<div class="form-group d-inline-flex">
										<input type="text" class="form-control" id="form-mail1"><span
											style="font-size: 23px; text-align: center; padding-top: 5px; margin: 0 5px;">@</span>
										<input type="text" class="form-control" id="form-mail2">
									</div>

									<label for="form-greet">한 줄 소개</label>
									<div class="form-group">
										<textarea style="resize: none; width: 100%;"></textarea>
									</div>

									<!-- Submit button -->
									<button class="btn btn-transparent">내 정보 수정</button>
								</form>
							</div>
						</div>
						<div class="col-lg-6 col-md-6">
							<!-- Change Password -->
							<div class="widget change-password">
								<h3 class="widget-header user">비밀번호 변경</h3>
								<form action="#">
									<!-- Current Password -->
									<div class="form-group">
										<label for="current-password">현재 비밀번호</label>
										<input type="password" class="form-control" id="current-password">
									</div>
									<!-- New Password -->
									<div class="form-group">
										<label for="new-password">새 비밀번호</label>
										<input type="password" class="form-control" id="new-password">
									</div>
									<!-- Confirm New Password -->
									<div class="form-group">
										<label for="confirm-password">새 비밀번호 확인</label>
										<input type="password" class="form-control" id="confirm-password">
									</div>
									<!-- Submit Button -->
									<button class="btn btn-transparent">비밀번호 변경</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Row End -->
		</div>
		<!-- Container End -->
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