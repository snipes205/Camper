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
	<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap-slider.css">
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
	<!--  네이버 스마트에디터 -->
	<script type="text/javascript" src="/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>


	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>

<body class="body-wrapper">
	<jsp:include page="../component/header.jsp"></jsp:include>

	<!--  글쓰기 페이지 -->

	<section class="user-profile section">
		<div class="container">
			<div class="row">
				<div class="col-md-10 offset-md-1 col-lg-9 offset-lg-0">

					<!-- 글수정 welcome part -->
					<div class="widget welcome-message">
						<h2>글수정</h2>
					</div>

					<!-- 글수정 입력 part -->
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

								<!--  타입 -->
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

								<!-- Submit button -->
								<div class="button">
									<a href="/community/main.do"><button style="margin-top:20px; margin-right:10px;" class="btn btn-transparent">목록</button></a>
									<a href="/community/view.do"><button style="margin-top:20px;" class="btn btn-transparent">보기</button></a>
									<a href="/community/modify_ok.do"><button style="margin-top:20px; float: right;" class="btn btn-transparent">수정</button></a>
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