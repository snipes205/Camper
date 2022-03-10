<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<!-- <link href ="../plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet"> -->
<!-- Bootstrap -->
<link rel="stylesheet" href="../plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../plugins/bootstrap/css/bootstrap-slider.css">
<!-- Font Awesome -->
<link href="../plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- Owl Carousel -->
<link href="../plugins/slick-carousel/slick/slick.css" rel="stylesheet">
<link href="../plugins/slick-carousel/slick/slick-theme.css"
	rel="stylesheet">
<!-- Fancy Box -->
<link href="../plugins/fancybox/jquery.fancybox.pack.css"
	rel="stylesheet">
<link href="../plugins/jquery-nice-select/css/nice-select.css"
	rel="stylesheet">
<!-- CUSTOM CSS -->
<link href="../css/style.css" rel="stylesheet">


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  
  <style>
.header {background:none;}
</style>

</head>

<body class="body-wrapper" style="background: url(../images/bg.jpg) no-repeat; background-size: cover; background-color: #07173c;">
	
	<jsp:include page="../component/header.jsp"></jsp:include>
	<section class="login py-5 border-top-1">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-5 col-md-8 align-item-center">
					<div class="border border"
						style="background-color: rgba(255, 255, 255, 0.75); border-radius: 20px; text-align: center;">
						<img class="mt-4 mb-0" src="../images/login-logo.png">
						<form action="#">
							<fieldset class="p-4" style="text-align: start;">
								<input type="id" placeholder="ID*" class="border p-3 w-95 my-2">
								<button class="btn btn-transparent mt-0 ml-5 text-center"
									style="white-space: nowrap; float:right">중복확인</button>
								<input type="password" placeholder="Password*"
									class="border p-3 w-100 my-2"> <input type="password"
									placeholder="Confirm Password*" class="border p-3 w-100 my-2">
								<input type="password" placeholder="Confirm Password*"
									class="border p-3 w-100 my-2">
								<div class="loggedin-forgot d-inline-flex my-3">
									<input type="checkbox" id="registering" class="mt-1"> <label
										for="registering" class="px-2"><a
										class="text-primary font-weight-bold"
										 href data-toggle="modal" data-target="#terms">이용약관</a>에 동의합니다.</label>
								</div>
								<button type="submit"
									class="d-block py-3 px-5 bg-primary text-white  border-0 font-weight-bold mt-3 ml-auto mr-auto"
									style="text-align: center; font-size: 22px; border-radius: 50px; width: 100%;">Join
									us</button>
								<a class="mt-3 d-block"><img
									src="../images/kakao_login_large_wide.png" style="width: 100%;"></a>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="../modal/terms.jsp"></jsp:include>

	<!-- JAVASCRIPTS -->
	<script src="../plugins/jQuery/jquery.min.js"></script>
	<script src="../plugins/bootstrap/js/popper.min.js"></script>
	<script src="../plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="../plugins/bootstrap/js/bootstrap-slider.js"></script>
	<!-- tether js -->
	<script src="../plugins/tether/js/tether.min.js"></script>
	<script src="../plugins/raty/jquery.raty-fa.js"></script>
	<script src="../plugins/slick-carousel/slick/slick.min.js"></script>
	<script
		src="../plugins/jquery-nice-select/js/jquery.nice-select.min.js"></script>
	<script src="../plugins/fancybox/jquery.fancybox.pack.js"></script>
	<script src="../plugins/smoothscroll/SmoothScroll.min.js"></script>
	<!-- google map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"></script>
	<script src="../plugins/google-map/gmap.js"></script>
	<script src="../js/script.js"></script>
</body>

</html>