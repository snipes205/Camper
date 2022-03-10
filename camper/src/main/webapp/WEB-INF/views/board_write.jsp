<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!--  캠핑로그 List MVC Model2 구조 -->

<%@page import="com.camper.model.BoardTO"%>
<%
	BoardTO to = (BoardTO)request.getAttribute( "to" );

	String type = to.getType();
	String nick = to.getNick();
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
  
  <script type = "text/javascript" >
	window.onload = function() {
		document.getElementById( 'wbtn' ).onclick = function() {
			// alert( 'click' );
			// 필수요소 검사			
			if( document.wfrm.title.value.trim() == '' ) {
				alert( '제목을 입력 하셔야 합니다.' );
				return false;
			}
			
			if( document.wfrm.pwd.value.trim() == '' ) {
				alert( '비밀번호를 입력 하셔야 합니다.' );
				return false;
			}
			document.wfrm.submit();
		};
	};
  </script>

</head>

<body class="body-wrapper">
<<<<<<< HEAD
 	<jsp:include page="../component/header.jsp"></jsp:include>
=======

<!--  Header part -->
 	<jsp:include page="../component/header.jsp"></jsp:include>
 	
>>>>>>> origin/ljh
	<!--  글쓰기 페이지 -->
	<section class="write section">
		<form action="/community/writeOk.do" method="post" name="wfrm" >
			<input type="hidden" name="type" value=<%=type %> />
			<div class="container">
				<div class="row">
					<div class="col-md-10 offset-md-1 col-lg-9 offset-lg-0">
						<!-- Edit Profile Welcome Text -->
						<div class="widget welcome-message">
							<h2>글쓰기</h2>
							<p>캠핑톡톡에 자신의 이야기를 남겨주세요</p>
						</div>
						
						<!-- 글쓰기 form -->
						<div class="row">
							<div class="col-md-10 offset-md-1 col-lg offset-lg-0">
								<div class="widget write-form">
									
										<!-- 제목 입력 part -->
									<div class="form-group">
										<label for="title">제목</label>
										<input type="text" class="form-control" name="title">
									</div>
								
									<!-- 닉네임 입력 part -->
									<div class="form-group">
										<label for="nick">닉네임</label>
										<input type="text" class="form-control" name="nick" value="<%=nick %>">
									</div>
	
									<!-- 비밀번호 입력 part -->
									<div class="form-group">
										<label for="pwd">비밀번호</label>
										<input type="password" class="form-control" name="pwd">
									</div>
	
									<!-- 내용 입력 part --> 
									<div class="form-group">
										<label for="content">내용</label>
										<input type="text" class="form-control" name="content"
											style="width:70%x; height:500px;">
									</div>
									
									<!-- 가입약관 part -->
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
	
										<!-- 버튼 part -->
										<div class="buttons">
											<input type="button" value="목록" class="btn btn-transparent" style="margin-top:20px; margin-right:10px;" onclick="location.href='/community/main.do'" />
											<input type="button" value="등록" class="btn btn-transparent" style="margin-top:20px; float: right;" id="wbtn" onclick="location.href='/community/writeok.do'" />
										</div>
									</div>
								</div>
<<<<<<< HEAD

								<!-- 등록 버튼 -->
								<div class="button">
									<a href="/community/main.do"><button style="margin-top:20px; margin-right:10px;" class="btn btn-transparent">목록</button></a>
									<button style="margin-top:20px; float: right;" class="btn btn-transparent"
										onclick="location.href='board_list1.html'">등록</button>
								</div>
=======
>>>>>>> origin/ljh
							</div>
						</div>
					</div>
				</div>
<<<<<<< HEAD
			</div>
		</div>
	</section>
=======
			</form>
		</section>
	
	<!-- Footer part -->
>>>>>>> origin/ljh
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