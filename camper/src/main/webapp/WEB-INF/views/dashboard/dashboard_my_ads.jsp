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
<link href="../../images/favicon.png" rel="shortcut icon">
<!-- PLUGINS CSS STYLE -->
<!-- <link href ="../../plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet"> -->
<!-- Bootstrap -->
<link rel="stylesheet" href="../../plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../../plugins/bootstrap/css/bootstrap-slider.css">
<!-- Font Awesome -->
<link href="../../plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- Owl Carousel -->
<link href="../../plugins/slick-carousel/slick/slick.css" rel="stylesheet">
<link href="../../plugins/slick-carousel/slick/slick-theme.css"
	rel="stylesheet">
<!-- Fancy Box -->
<link href="../../plugins/fancybox/jquery.fancybox.pack.css"
	rel="stylesheet">
<link href="../../plugins/jquery-nice-select/css/nice-select.css"
	rel="stylesheet">
<!-- CUSTOM CSS -->
<link href="../../css/style.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
		window.addEventListener('load', function() {
			
			$('#submit1').click(function(){
				
				const current_pwd = $('#current_pwd').val();
				const new_pwd = $('#new_pwd').val();
				const confirm_pwd = $('#confirm_pwd').val();
				
				if(current_pwd == '' || current_pwd == null){
					alert('현재 비밀번호를 입력해주세요!');
					$('#current_pwd').focus();
					return false;
				}
				if(new_pwd == '' || new_pwd == null || confirm_pwd == '' || confirm_pwd == null){
					alert('새로운 비밀번호를 입력해주세요!');
					$('#confirm_pwd').focus();
					return false;
				}
				
			document.pwdForm.action = '/updatePwd.do';
			document.pwdForm.submit();
			})
			
			// ID와 PWD 형식을 검사하는 정규식(영어대소문자와 숫자로 5~20자리) 
			let idpwCheck = /[a-zA-Z0-9]{5,20}$/	
			
			// 형식검사하는 메서드
			function check( val, target ) {
				if( val.test( target ) ) {
					return true;
				}
			}
			
			// 비밀번호 유효성 검사와 일치여부 확인
			$( "#new_pwd" ).focusout( function() {
				const new_pwd = $( "#new_pwd" ).val();
				
				if( !check( idpwCheck, new_pwd ) ) {
					$( "#pwd_chk" ).text( "영어대소문자와 숫자 5~20자리로 비밀번호를 만들어주세요!" );
					$( "#pwd_chk" ).css( "margin", "0 auto" );
					$( "#pwd_chk" ).css( "color", "red" );
					$( "#new_pwd" ).val( "" );
					$( "#submit1" ).attr( "disabled", true );
				} else{
					$( "#pwd_chk" ).text( "" );
					//패스워드 똑같이 입력했는지 검사
					$( "#confirm_pwd" ).focusout( function() {
						const new_pwd = $( "#new_pwd" ).val();
						const confirm_pwd = $( "#confirm_pwd" ).val();
						
						if( new_pwd != '' && confirm_pwd != '' ) {
							if( new_pwd == confirm_pwd ) {
								$( "#pwd_chk" ).text( "비밀번호가 일치합니다!" );
								$( "#pwd_chk" ).css( "margin", "0 auto" );
								$( "#pwd_chk" ).css( "color", "blue" );
								$( "#submit1" ).attr( "disabled", false );
							} else {
								$( "#pwd_chk" ).text( "비밀번호가 일치하지 않습니다!" );
								$( "#pwd_chk" ).css( "margin", "0 auto" );
								$( "#pwd_chk" ).css( "color", "red" );
								$( "#pwd_chk" ).val( "" );
								$( "#pwd_chk" ).focus();
								$( "#submit1" ).attr( "disabled", true );
							}
						} else {
							$( "#pwd_chk" ).text( "" );
							$( "#submit1" ).attr( "disabled", false );
						}
						
					})
				}
			})
		})
		
		
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
	<jsp:include page="../../component/header.jsp"></jsp:include>

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
						<!-- MyPage SideNav -->
						<jsp:include page="../../component/dashboard.jsp">
							<jsp:param value="myads" name="thisPage"/>
						</jsp:include>
						<!-- MyPage SideNav -->
	
						<!-- delete-account modal -->
						<jsp:include page="../../modal/goodBye.jsp"></jsp:include>
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
										<label for="form-id">아이디</label> <input type="text"
											class="form-control" id="form-id" readonly value="${sessionScope.id}">
									</div>
									<!-- name -->
									<div class="form-group">
										<label for="form-name">이름</label> <input type="text"
											class="form-control" id="form-name" readonly value="${sessionScope.name}">
									</div>
									<!-- name -->
									<div class="form-group">
										<label for="form-pw">비밀번호</label> <input type="password"
											class="form-control" id="form-pw">
									</div>
									<!-- nick -->
									<label for="form-nick">닉네임</label>
									<div class="form-group d-inline-flex">
										<input type="text" class="form-control mr-2" id="form-nick" value="${sessionScope.nick}">
										<button class="btn btn-transparent mt-0 text-center"
											style="white-space: nowrap;">중복확인</button>
									</div>
									<!-- File chooser -->
									<label for="form-profile">프로필 이미지</label>
									<div class="form-group choose-file d-inline-flex">
										<i class="fa fa-user text-center px-3"></i> <input type="file"
											class="form-control-file mt-2 pt-1" id="input-file">
									</div>
									<!-- Birth -->
									<div class="form-group">
										<label for="form-birth">생년월일</label> <input type="text"
											class="form-control" id="form-birth" value="${sessionScope.birth}">
									</div>
									<!-- Phone -->
									<div class="form-group">
										<label for="form-num">핸드폰 번호</label> <input type="text"
											class="form-control" id="form-num" value="${sessionScope.phone}">
									</div>
									<!-- Address -->
									<label for="form-add">주소</label>
									<div class="form-group d-inline-flex">
										<input type="text" class="form-control  mr-2" id="postcode" value="${sessionScope.zipcode }" readonly>
										<input type="button" onclick="execDaumPostcode()" class="btn btn-transparent mt-0 text-center" value="주소검색">
									</div>

									<input type="text" class="form-control" id="jibunAddress"
										readonly value="${sessionScope.address }"> <br>
									<!-- Email -->
									<label for="form-mail">E-mail</label>
									<div class="form-group">
										<input type="text" class="form-control" id="form-email" value="${sessionScope.email }">
									</div>

									<label for="form-greet">한 줄 소개</label>
									<div class="form-group">
										<textarea style="resize: none; width: 100%;">${sessionScope.greet}</textarea>
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
								<form name="pwdForm" method="POST">
									<!-- Current Password -->
									<div class="form-group">
										<label for="current-password">현재 비밀번호</label> <input
											type="password" class="form-control" id="current_pwd" name="current_pwd">
									</div>
									<!-- New Password -->
									<div class="form-group">
										<label for="new-password">새 비밀번호</label> <input
											type="password" class="form-control" id="new_pwd" name="new_pwd">
									</div>
									<!-- Confirm New Password -->
									<div class="form-group">
										<label for="confirm-password">새 비밀번호 확인</label> <input
											type="password" class="form-control" id="confirm_pwd" name="confirm_pwd">
									</div>
									<div id="pwd_chk"></div>
									<!-- Submit Button -->
									<button class="btn btn-transparent" id="submit1" name="submit1">비밀번호 변경</button>
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

	<jsp:include page="../../component/footer.jsp"></jsp:include>
	<!-- JAVASCRIPTS -->
	<script src="../../plugins/jQuery/jquery.min.js"></script>
	<script src="../../plugins/bootstrap/js/popper.min.js"></script>
	<script src="../../plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="../../plugins/bootstrap/js/bootstrap-slider.js"></script>
	<!-- tether js -->
	<script src="../../plugins/tether/js/tether.min.js"></script>
	<script src="../../plugins/raty/jquery.raty-fa.js"></script>
	<script src="../../plugins/slick-carousel/slick/slick.min.js"></script>
	<script
		src="../../plugins/jquery-nice-select/js/jquery.nice-select.min.js"></script>
	<script src="../../plugins/fancybox/jquery.fancybox.pack.js"></script>
	<script src="../../plugins/smoothscroll/SmoothScroll.min.js"></script>
	<!-- google map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"></script>
	<script src="../../plugins/google-map/gmap.js"></script>
	<script src="../../js/script.js"></script>
</body>

</html>