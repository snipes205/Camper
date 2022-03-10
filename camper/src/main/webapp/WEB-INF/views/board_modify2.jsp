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

	<!--  글수정 페이지 -->
	<section class="modify section">
		<div class="container">
			<div class="row">
				<div class="col-md-10 offset-md-1 col-lg-9 offset-lg-0">
					<!-- Edit Profile Welcome Text -->
					<div class="widget welcome-message">
						<h2>글수정</h2>
					</div>
					<!-- Edit Personal Info -->
					<div class="row">
						<div class="col-md-10 offset-md-1 col-lg offset-lg-0">
							<div class="widget modify-form">
								
								<!-- 제목 입력 part -->
								<div class="form-group">
									<label for="title">제목</label>
									<input type="text" class="form-control" id="title">
								</div>
								
								<!-- 닉네임 입력 part -->
								<div class="form-group">
									<label for="nick">닉네임</label>
									<input type="text" class="form-control" id="nick">
								</div>

								<!-- 비밀번호 입력 part -->
								<div class="form-group">
									<label for="password">비밀번호</label>
									<input type="password" class="form-control" id="password">
								</div>

								<!-- 내용 입력 part -->
								<div class="form-group">
									<label for="content">내용</label>
									<input type="text" class="form-control" id="content"
										style="width:70%x; height:500px;">
								</div>

								<!-- 버튼 part -->
								<div class="button">
									<a href="/community/main.do"><button style="margin-top:20px; margin-right:10px;" class="btn btn-transparent">목록</button></a>
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