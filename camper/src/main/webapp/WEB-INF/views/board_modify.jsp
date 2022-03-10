<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--  캠핑톡톡 글삭제 MVC Model2 구조 -->
    
<%@page import="com.camper.model.BoardTO"%>
<%
	BoardTO to = (BoardTO)request.getAttribute( "to" );

	String pseq = to.getPseq();
	String title = to.getTitle();
	String nick = to.getNick();
	String content = to.getContent();
	String type = to.getType();

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

<script type ="text/javascript" >
	window.onload = function() {
		document.getElementById( 'mbtn' ).onclick = function() {
			if( document.mfrm.pwd.value.trim() == '' ) {
				alert( '비밀번호를 입력하셔야 합니다.' );
				
				return;
			}
			document.mfrm.submit();
		};
	};
</script>

</head>

<body class="body-wrapper">
<<<<<<< HEAD
	<jsp:include page="../component/header.jsp"></jsp:include>

	<!--  글쓰기 페이지 -->
=======
>>>>>>> origin/ljh

<!-- Header part -->
<jsp:include page="../component/header.jsp"></jsp:include>

	<!--  글수정 section -->
	<section class="modify section">
		<form action="/community/modifyOk.do" method="post" name="mfrm">
			<input type="hidden" name="pseq" value="<%=pseq %>" />
			<input type="hidden" name="type" value="<%=type %>" />
				<div class="container">
					<div class="row">
<<<<<<< HEAD
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
=======
						<div class="col-md-10 offset-md-1 col-lg-9 offset-lg-0">
							<!-- Edit Profile Welcome Text -->
							<div class="widget welcome-message">
								<h2>글수정</h2>
							</div>
							
							<!-- 글수정 form -->
							<div class="row">
								<div class="col-md-10 offset-md-1 col-lg offset-lg-0">
									<div class="widget write-form">
									
										<!-- 제목 입력 part -->
										<div class="form-group">
											<label for="title">제목</label>
											<input type="text" class="form-control" name="title" value="<%=title %>">
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
												style="width:70%x; height:500px;" value="<%=content %>">
										</div>
		
										<!-- 버튼 part -->
										<div class="buttons">
											<input type="button" value="목록" class="btn btn-transparent" style="margin-top:20px; margin-right:10px;" onclick="location.href='/community/main.do'" />
											<input type="button" value="등록" class="btn btn-transparent" style="margin-top:20px; float: right;" id="mbtn" onclick="location.href='/community/modifyOk.do'" />
										</div>
									</div>
>>>>>>> origin/ljh
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
	</section>
	
<<<<<<< HEAD
=======
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