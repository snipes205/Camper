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

</head>

<body class="body-wrapper">
  	<jsp:include page="../component/header.jsp"></jsp:include>

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
								<li>
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
								<li class="active">
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
						<h2>1:1 문의</h2>
					</div>
					<!-- title -->
					<!-- Recently Favorited -->

					<form action="#" style="background-color: rgba(255, 255, 255, 0.8)">
						<fieldset class="p-4">
							<div class="form-group">
								<div class="row">
									<div class="col-lg-6 py-2">
										<input type="text" placeholder="닉네임" class="form-control" required>
									</div>
									<div class="col-lg-6 pt-2">
										<input type="email" placeholder="E-mail" class="form-control" required>
									</div>
								</div>
							</div>
							<select name="" id="" class="form-control w-100">
								<option value="1">문의 유형</option>
								<option value="1">캠핑장 정보 관련</option>
								<option value="1">커뮤니티 게시글 관련</option>
								<option value="1">불량 사용자 접수</option>
								<option value="1">기타</option>
							</select>
							<textarea name="message" id="" placeholder="내용" class="border w-100 p-3 mt-3 mt-lg-4"
								style="background-color: rgba(255, 255, 255, 0)"></textarea>
							<div class="btn-grounp">
								<button type="submit" class="btn btn-primary mt-2 float-right">문의하기</button>
							</div>
						</fieldset>
					</form>

				</div>
			</div>
		</div>
		<!-- Row End -->
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