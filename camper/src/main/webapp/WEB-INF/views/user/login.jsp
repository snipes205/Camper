<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
// flag 값이 비었을 경우 그냥 login 페이지로 이동
// flag 값이 있을 경우 아래 조건문 실행
// 해당 if문이 없을 경우 처음 login 페이지 연결 시 NullPointerException 발생
// 따라서 login_ok.jsp로 아래 구문을 빼주어야 한다.
// 페이지 분리를 하고 싶지 않다면 null 값을 구분하는 if문을 넣어주자
if (request.getAttribute("flag") != null && !request.getAttribute("flag").equals("")) {
	int flag = (Integer) request.getAttribute("flag");
	out.println(" <script type='text/javascript'> ");
	if (flag == 0) {
		// 로그인성공
		out.println(" alert('로그인에 성공했습니다!'); ");
		out.println(" location.href='/search/theme.do'");
	} else if (flag == 1) {
		// 비밀번호 일치하지 않음
		out.println(" alert('비밀번호가 틀렸습니다!'); ");
		out.println(" history.back(); ");
	} else if (flag == 2) {
		// 존재하지 않는 아이디 
		out.println(" alert('존재하지 않는 아이디입니다.'); ");
		out.println(" history.back(); ");
	} else {
		// 기타 이유로 로그인 실패
		out.println(" alert('다시 로그인해주세요.'); ");
		out.println(" history.back(); ");
	}
	out.println(" </script> ");
}
%>

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
<style>
.header {
	background: none;
}
</style>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
	window.onload = function(){
		$('#loginBtn').click(function(){
			const id = $('#id').val().trim();
			const pwd = $('#pwd').val().trim();
			
			if(id == "" || id == null) {
				alert('아이디를 입력하세요!');
				$('#id').focus();
				return false;
			} 
			if(pwd == "" || pwd == null) {
				alert('비밀번호를 입력하세요!');
				$('#pwd').focus();
				return false;
			}
			document.loginForm.action = '/login/loginCheck.do';
			document.loginForm.submit();
		
		})
	}
	
	  window.Kakao.init('4ab2e49c53cb0bd7e93f711fad86465d');

      function kakaoLogin() {
          window.Kakao.Auth.login({
              scope: 'account_email, gender, birthday',
              success: function(response) {
                  //console.log(response) // 로그인 성공하면 받아오는 데이터
                  window.Kakao.API.request({ // 사용자 정보 가져오기 
                      url: '/v2/user/me',
                      success: (res) => {
                        const kakao_account = res.kakao_account;
                      	const email = res.kakao_account.email;
                      	const birth = res.kakao_account.birthday;
                      	
                        console.log(kakao_account);
                        console.log(birth);
                        console.log(email);
                        
                        $('#kakaoemail').val(email);
                        $('#kakaobirth').val(birth);
                        $('#kakaoaccount').val(kakao_account);
                        
                        document.loginForm.submit();
                        
                      }
                  });
              },
              fail: function(error) {
                  console.log(error);
                  alert('로그인에 실패했습니다!');
              }
          });
      }
	
	
		
</script>

</head>

<body class="body-wrapper"
	style="background: url(../../images/bg.jpg) no-repeat; background-size: cover; background-color: #07173c;">

	<jsp:include page="../../component/header.jsp"></jsp:include>
	<section class="login py-5 border-top-1">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-5 col-md-8 align-item-center">
					<div class="border"
						style="background-color: rgba(255, 255, 255, 0.75); border-radius: 20px; text-align: center;">
						<img class="mt-4 mb-0" src="../../images/login-logo.png">
						<form name="loginForm" method="POST">
							<fieldset class="p-4">
								<input type="text" placeholder="ID"
									class="border p-3 w-100 my-2" id="id" name="id"> <input
									type="password" placeholder="Password"
									class="border p-3 w-100 my-2" id="pwd" name="pwd">
								<button type="button" name="loginBtn" id="loginBtn"
									class="d-block py-3 px-5 bg-primary text-white  border-0 font-weight-bold mt-3 ml-auto mr-auto"
									style="text-align: center; font-size: 22px; border-radius: 50px; width: 100%;">Log
									In</button>
								<a class="mt-3 mr-2 d-inline-block  text-primary" href
									data-toggle="modal" data-target="#findPwd">비밀번호 찾기</a> | <a
									class="mt-3 ml-2 d-inline-block text-primary"
									href="/login/register.do">회원가입</a> <input type="hidden"
									name="kakaoemail" id="kakaoemail" /> <input type="hidden"
									name="kakaoaccount" id="kakaoaccount" /> <input type="hidden"
									name="kakaobirth" id="kakaobirth" /> <a class="mt-4 d-block"
									href="javascript:kakaoLogin();"><img
									src="../../images/kakao_login_large_wide.png" style="width: 100%;"></a>
							</fieldset>
						</form>
						<%-- kakaoemail을 넘기기 위한 숨겨진 form --%>
						<%-- <form action="./kakaologin.do" method="post" name="lfrm" hidden>
			    		<input type="text" name="kakaoemail" id="kakaoemail" value="" /></form> --%>
					</div>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="../../modal/findPwd.jsp"></jsp:include>

	<!-- JAVASCRIPTS -->
	<script src="../../plugins/jQuery/jquery.min.js"></script>
	<script src="../../plugins/bootstrap/js/popper.min.js"></script>
	<script src="../../plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="../../plugins/bootstrap/js/bootstrap-slider.js"></script>
	<!-- tether js -->
	<script src="../../plugins/tether/js/tether.min.js"></script>
	<script src="../../plugins/raty/jquery.raty-fa.js"></script>
	<script src="../../plugins/jquery-nice-select/js/jquery.nice-select.min.js"></script>
	<script src="../../plugins/fancybox/jquery.fancybox.pack.js"></script>
	<script src="../../plugins/smoothscroll/SmoothScroll.min.js"></script>
	<!-- google map -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"></script>
	<script src="../../plugins/google-map/gmap.js"></script>
	<script src="../../js/script.js"></script>
</body>
</html>