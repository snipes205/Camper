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
	<link href="../../images/favicon.png" rel="shortcut icon">
	<!-- PLUGINS CSS STYLE -->
	<!-- <link href="plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet"> -->
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
	<!--  ckeditor -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js"></script> 
	
	

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<script type ="text/javascript" >
	window.onload = function() {
		document.getElementById( 'mbtn' ).onclick = function() {
			document.mfrm.submit();
		};
	};
</script>

</head>

<body class="body-wrapper">

<!-- Header part -->
<jsp:include page="../../component/header.jsp"></jsp:include>

	<!--  글수정 section -->
	<section class="modify section">
		<form action="/community/modifyOk.do" method="post" name="mfrm" enctype="multipart/form-data">
			<input type="hidden" name="pseq" value="<%=pseq %>" />
			<input type="hidden" name="type" value="<%=type %>" />
				<div class="container">
					<div class="row">
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
										
										<!-- 내용 입력 part --> 
										<div class="value">
											<div class="form-group">
												<textarea class="form-control" rows="10" id="content" name="content"  ><%=content %></textarea>
												<script>
											 		const ckeditor_config = {
													   	resize_enaleb : false,
													   	enterMode : CKEDITOR.ENTER_BR,
													   	shiftEnterMode : CKEDITOR.ENTER_P,
													   	filebrowserUploadUrl : "${pageContext.request.contextPath}/admin/resources/ckUpload"
													 	};
											
													CKEDITOR.replace( 'content', ckeditor_config );
												</script>
											</div>
										</div>
		
										<!-- 버튼 part -->
										<div class="buttons">
											<input type="button" value="목록" class="btn btn-transparent" style="margin-top:20px; margin-right:10px;" onclick="location.href='/community/main.do'" />
											<input type="button" value="등록" class="btn btn-transparent" style="margin-top:20px; float: right;" id="mbtn" onclick="location.href='/community/modifyOk.do'" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
	</section>
	
	<!-- Footer part -->
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
	<script src="../../plugins/jquery-nice-select/js/jquery.nice-select.min.js"></script>
	<script src="../../plugins/fancybox/jquery.fancybox.pack.js"></script>
	<script src="../../plugins/smoothscroll/SmoothScroll.min.js"></script>
	<!-- google map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"></script>
	<script src="../../plugins/google-map/gmap.js"></script>
	<script src="../../js/script.js"></script>

</body>

</html>