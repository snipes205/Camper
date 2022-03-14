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
<link rel="stylesheet" href="../../plugins/bootstrap/css/bootstrap-slider.css">
<!-- Font Awesome -->
<link href="../../plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<!-- Owl Carousel -->
<link href="../../plugins/slick-carousel/slick/slick.css" rel="stylesheet">
<link href="../../plugins/slick-carousel/slick/slick-theme.css" rel="stylesheet">
<!-- Fancy Box -->
<link href="../../plugins/fancybox/jquery.fancybox.pack.css" rel="stylesheet">
<link href="../../plugins/jquery-nice-select/css/nice-select.css" rel="stylesheet">
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

// window.onload는 페이지 당 한번밖에 실행되지 않음.
// 여기서는 위의 주소검색 api에 window.onload가 있으므로 또 쓸 경우 충돌
// 따라서 아래와 같이 eventListener를 사용해줌
window.addEventListener('load', function() {
		
		$('#submit1').click(function(){
			
			const id = $('#user_id').val();
			const pwd = $('#user_pwd').val();
			const nick = $('#user_nick').val();
			const name = $('#user_name').val();
			const birth = $('#user_birth').val();
			const phone = $('#user_phone').val();
			const email = $('#user_email').val();
			const postcode = $('#postcode').val();
			const address = $('#jibunAddress').val();
			
			if(id == '' || id == null){
				alert('아이디를 입력해주세요!');
				$('#user_id').focus();
				return false;
			}
			if(pwd == '' || pwd == null){
				alert('비밀번호를 입력해주세요!');
				$('#user_pwd').focus();
				return false;
			}
			if(nick == '' || nick == null){
				alert('닉네임을 입력해주세요!');
				$('#user_nick').focus();
				return false;
			}
     		if(name == '' || name == null){
				alert('이름을 입력해주세요!');
				$('#user_name').focus();
				return false;
			} 
			if(birth == '' || birth == null){
				alert('생일을 입력해주세요!');
				$('#user_birth').focus();
				return false;
			}
			if(phone == '' || phone == null){
				alert('핸드폰번호를 입력해주세요!');
				$('#user_phone').focus();
				return false;
			}
			if(email == '' || email == null){
				alert('이메일을 입력해주세요!');
				$('#user_email').focus();
				return false;
			}
			if(postcode== '' || postcode == null || address == '' || address == null){
				alert('주소를 입력해주세요!');
				return false;
			}
			
			if($('input:checkbox[id="terms"]').is(":checked") == false){
				alert('이용약관에 동의해주세요!');
				return false;
			}
			
		document.registerForm.action = '/login/registerok.do';
		document.registerForm.submit();
		})
		
		
		// ID와 PWD 형식을 검사하는 정규식(영어대소문자와 숫자로 5~20자리) 
		let idpwCheck = /[a-zA-Z0-9]{5,20}$/		
		
		// 닉네임 형식을 검사하는 정규식(영어대소문자와 숫자, 한글로 5~15자리)
		let nickCheck = /^[a-zA-Z0-9ㄱ-ㅎ|ㅏ-ㅣ|가-힣]{5,15}$/	
		
		// 생년월일(YYYYMMDD) 형식을 검사하는 정규식
		let birthCheck = /([0-9]{4}(0[1-9]{1}|1[0-2]{1})(0[1-9]{1}|[1,2]{1}[0-9]{1}|3[0,1]{1}))/g
		
		// 이메일(abc@gmail.com) 형식을 검사하는 정규식
		let emailCheck = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i
		
		// 핸드폰 번호 형식을 검사하는 정규식
		let phoneCheck = /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/
		
		// 형식검사하는 메서드
		function check( val, target ) {
			if( val.test( target ) ) {
				return true;
			}
		}
		
		// ID 중복여부 검사(Input id에서 포커스아웃될 때 이벤트 발생)
		$( "#user_id" ).focusout( function() {
			const user_id = $( "#user_id" ).val();
			if( user_id != '' ) {
				if( check( idpwCheck, user_id ) ) {
					$.ajax({
						url: '/idcheck.do',
						type: 'POST',
						data: {"user_id": user_id},
						success: function( data ) {
							//controller에서 return값을 int로 넘기면 에러가 난다...
							if( data == "0" ) {
								$( "#usingId_chk" ).text( "사용가능한 ID입니다!" );
								$( "#usingId_chk" ).css( "margin", "0 auto" );
								$( "#usingId_chk" ).css( "color", "blue" );
								$( "#submit1" ).attr( "disabled", false );
							} else if( data == "1" ) {
								$( "#usingId_chk" ).text( "이미 사용 중인 ID입니다!" );
								$( "#usingId_chk" ).css( "margin", "0 auto" );
								$( "#usingId_chk" ).css( "color", "red" );
								$( "#user_id" ).val( "" );
								$( "#user_id" ).focus();
								$( "#submit1" ).attr( "disabled", true );
							}
						},
						error: function() {
							console.log( "ajax 에러" )
						}
					})
				} else {
					$( "#usingId_chk" ).text( "영어대소문자와 숫자 5~20자리로 ID를 만들어주세요!" );
					$( "#usingId_chk" ).css( "margin", "0 auto" );
					$( "#usingId_chk" ).css( "color", "red" );
					$( "#user_id" ).val( "" );
					$( "#user_id" ).focus();
					$( "#submit1" ).attr( "disabled", true );
				}	
			} else {
				$( "#usingId_chk" ).text( "" );
			}
		})
		
		// 닉네임 중복 여부 검사
		$( "#user_nick" ).focusout( function() {
		const user_nick = $( "#user_nick" ).val();
		if( user_nick != '' ) {
			if( check( nickCheck, user_nick ) ) {
				$.ajax({
					url: '/nickcheck.do',
					type: 'POST',
					data: {"user_nick": user_nick},
					success: function( data ) {
						
						if( data == "0" ) {
							$( "#usingNick_chk" ).text( "사용가능한 닉네임입니다!" );
							$( "#usingNick_chk" ).css( "margin", "0 auto" );
							$( "#usingNick_chk" ).css( "color", "blue" );
							$( "#submit1" ).attr( "disabled", false );
							
						} else if( data == "1"  ) {
							$( "#usingNick_chk" ).text( "이미 사용 중인 닉네임입니다!" );
							$( "#usingNick_chk" ).css( "margin", "0 auto" );
							$( "#usingNick_chk" ).css( "color", "red" );
							$( "#user_nick" ).val( "" );
							$( "#user_nick" ).focus();
							$( "#submit1" ).attr( "disabled", true );
						}
					},
					error: function() {
						console.log( "ajax 에러" )
					}
				})
			} else {
				$( "#usingNick_chk" ).text( "영어대소문자와 숫자, 한글 5~15자리로 닉네임을 만들어주세요!" );
				$( "#usingNick_chk" ).css( "margin", "0 auto" );
				$( "#usingNick_chk" ).css( "color", "red" );
				$( "#user_nick" ).val( "" );
				$( "#user_nick" ).focus();
				$( "#submit1" ).attr( "disabled", true );
			}
			
		} else {
			$( "#usingNick_chk" ).text( "닉네임을 입력해주세요." );
			$( "#usingNick_chk" ).css( "margin", "0 auto" );
			$( "#usingNick_chk" ).css( "color", "red" );
			$( "#user_nick" ).val( "" );
			$( "#user_nick" ).focus();
			$( "#submit1" ).attr( "disabled", true );
		}
	})
	
	// 비밀번호 유효성 검사와 일치여부 확인
	$( "#user_pwd" ).focusout( function() {
		const user_pwd = $( "#user_pwd" ).val();
		
		if( !check( idpwCheck, user_pwd ) ) {
			$( "#pwd_chk" ).text( "영어대소문자와 숫자 5~20자리로 비밀번호를 만들어주세요!" );
			$( "#pwd_chk" ).css( "margin", "0 auto" );
			$( "#pwd_chk" ).css( "color", "red" );
			$( "#user_pwd" ).val( "" );
			$( "#user_pwd" ).focus();
			$( "#submit1" ).attr( "disabled", true );
		} else{
			$( "#pwd_chk" ).text( "" );
			//패스워드 똑같이 입력했는지 검사
			$( "#user_cpwd" ).focusout( function() {
				const user_pwd = $( "#user_pwd" ).val();
				const user_cpwd = $( "#user_cpwd" ).val();
				
				if( user_pwd != '' && user_cpwd != '' ) {
					if( user_pwd == user_cpwd ) {
						$( "#cpwd_chk" ).text( "비밀번호가 일치합니다!" );
						$( "#cpwd_chk" ).css( "margin", "0 auto" );
						$( "#cpwd_chk" ).css( "color", "blue" );
						$( "#submit1" ).attr( "disabled", false );
					} else {
						$( "#cpwd_chk" ).text( "비밀번호가 일치하지 않습니다!" );
						$( "#cpwd_chk" ).css( "margin", "0 auto" );
						$( "#cpwd_chk" ).css( "color", "red" );
						$( "#user_cpwd" ).val( "" );
						$( "#user_cpwd" ).focus();
						$( "#submit1" ).attr( "disabled", true );
					}
				} else {
					$( "#pwd_chk" ).text( "" );
					$( "#submit1" ).attr( "disabled", false );
				}
				
			})
		}
	})
	
	// 생년월일 유효성검사(YYYYMMDD)
	$( "#user_birth" ).focusout( function() {
		const user_birth = $( '#user_birth' ).val();
		
		if( !check( birthCheck, user_birth ) ) {
			$( "#birth_chk" ).text( "YYYYMMDD(19950128) 형식으로 입력해주세요!" );
			$( "#birth_chk" ).css( "margin", "0 auto" );
			$( "#birth_chk" ).css( "color", "red" );
			$( '#user_birth' ).val( "" );
			$( "#submit1" ).attr( "disabled", true );
		} else {
			$( "#birth_chk" ).text("");
			$( "#submit1" ).attr( "disabled", false );
		}
	})
	
	// 전화번호 유효성검사(01089186340)
	$( '#user_phone' ).focusout( function() {
		const user_phone = $( '#user_phone' ).val();
		
		if( !check( phoneCheck, user_phone ) ) {
			$( "#phone_chk" ).text( "01089186340 형식으로 입력해주세요!" );
			$( "#phone_chk" ).css( "margin", "0 auto" );
			$( "#phone_chk" ).css( "color", "red" );
			$( '#user_phone' ).val( "" );
			$( '#user_phone' ).focus();
			$( "#submit1" ).attr( "disabled", true );
		} else {
			$( "#phone_chk" ).text( "" );
			$( "#submit1" ).attr( "disabled", false );
		}
	})
	
	// 이메일 유효성검사(test@gmail.com)
	$( "#user_email" ).focusout( function() {
		var user_email = $( "#user_email" ).val();
		
		if( !check( emailCheck, user_email ) ) {
			$( "#email_chk" ).text( "user@mail.com 형식으로 입력해주세요!" );
			$( "#email_chk" ).css( "margin", "0 auto" );
			$( "#email_chk" ).css( "color", "red" );
			$( '#user_email' ).val( "" );
			$( '#user_email' ).focus();
			$( "#submit1" ).attr( "disabled", true );
		} else {
			$( "#email_chk" ).text( "" );
			$( "#submit1" ).attr( "disabled", false );
		}
	})
	
		
	
	
	});

	
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
 <style>
.header {background:none;}
</style>

</head>

<body class="body-wrapper" style="background: url(../../images/bg.jpg) no-repeat; background-size: cover; background-color: #07173c;">
	
	<jsp:include page="../../component/header.jsp"></jsp:include>
	<section class="login py-5 border-top-1">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-5 col-md-8 align-item-center">
					<div class="border border"
						style="background-color: rgba(255, 255, 255, 0.75); border-radius: 20px; text-align: center;">
						<img class="mt-4 mb-0" src="../../images/login-logo.png">
						<form method="POST" name="registerForm">
							<fieldset class="p-4" style="text-align: start;">
								<input type="id" placeholder="ID* (영어대소문자와 숫자 5~20자리)" class="border p-3 w-100 my-2" required="required" id="user_id" name="id">
								<div id="usingId_chk"></div>
								<input type="text" placeholder="닉네임*(영어대소문자와 숫자, 한글 5~15자리)" class="border p-3 w-100 my-2" required="required" id="user_nick" name="nick">
								<div id="usingNick_chk"></div>
								<input type="password" placeholder="비밀번호*" class="border p-3 w-100 my-2" required="required" id="user_pwd" name="pwd">
								<div id="pwd_chk"></div>
								<input type="password" placeholder="비밀번호 확인*" class="border p-3 w-100 my-2" required="required" id="user_cpwd" name="confirm_pwd">
								<div id="cpwd_chk"></div>
								<input type="text" placeholder="이름*" class="border p-3 w-100 my-2" name="name" id="user_name">
								<input type="text" placeholder="생년월일(YYYYMMDD)*" class="border p-3 w-100 my-2" id="user_birth" name="birth">
								<div id="birth_chk"></div>
								<input type="text" placeholder="전화번호(01012345678)*" class="border p-3 w-100 my-2" id="user_phone" name="phone">
								<div id="phone_chk"></div>
								<input type="text" placeholder="Email(test@gmail.com)*" class="border p-3 w-100 my-2" id="user_email" name="email">
								<div id="email_chk"></div>
								<input type="text" class="border p-3 w-95 my-2 bg-white" id="postcode" name="postcode" placeholder="우편번호*">
								<button type="button" onclick="execDaumPostcode()" class="btn btn-transparent mt-0 text-center" style="white-space: nowrap; float:right">주소검색</button>
								<input type="text" class="form-control" id="jibunAddress" name="jibunAddress" placeholder="지번주소*" readonly> <br>
								<!-- 
								<input type="radio" name="gender" id="female" value="f"> <label for="normal" style="color:#666; font-size:20px">여자</label>
								<input type="radio" name="gender" id="male" value="m"><label for="car" style="color:#666; font-size:20px">남자</label> <br>
								 -->
								<label for="form-profile choose-file d-block"">프로필 이미지</label>
								<input type="file" class="form-control-file p-1 mb-3" id="profile" name="profile" value="" class="board_view_input">
								<label for="form-greet d-inline mt-3">한 줄 소개</label>
								<textarea style="resize: none; width: 100%;" name="greet" id="greet">${sessionScope.greet}</textarea>
								<div class="loggedin-forgot d-inline-flex my-3">
									<input type="checkbox" id="terms" name="terms" class="mt-1">
									<label for="registering" class="px-2"><a class="text-primary font-weight-bold" href data-toggle="modal" data-target="#terms">이용약관</a>에 동의합니다.</label>
								</div>
								<button type="button" class="d-block py-3 px-5 bg-primary text-white  border-0 font-weight-bold mt-3 ml-auto mr-auto"
									style="text-align: center; font-size: 22px; border-radius: 50px; width: 100%;" name="submit1" id="submit1">Join us</button>
								<a class="mt-3 d-block"><img src="../../images/kakao_login_large_wide.png" style="width: 100%;"></a>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="../../modal/terms.jsp"></jsp:include>

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