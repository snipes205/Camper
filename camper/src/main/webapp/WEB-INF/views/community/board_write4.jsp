<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  캠핑로그 List MVC Model2 구조 -->

<%
	String cpage = request.getParameter( "cpage" );
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
	<!--  
	<script>
		const editorConfig = {
				filebrowserUloadUrl : "/ckEditor/imgUpload?type=image",
				extraPlugins : 'uploadimage'
		};
		
		Ckeditor.on( 'dialogDefinition', function(ev) {
			const dialogName = ev.data.name;
			const dialogDefinition = ev.data.definition;
			
			switch( dialogName ) {
				case 'image' : 
					dialogDefinition.removeContents( 'Link' );
					dialogDefinition.removeContents( 'advanced' );
			}
		});
		
		window.onload = function() {
			ck = CKEDITOR.replace( "content", editorConfig );
		};
	</script>
	-->
	

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  
<script type = "text/javascript" >
	window.onload = function() {
		document.getElementById( 'wbtn' ).onclick = function() {
			
			// 약관 체크 확인 메시지
			if( document.wfrm.info.checked == false ) {
				alert( '동의를 하셔야 합니다.' );
				return false;
			}
			
			// 제목 입력 확인 메시지
			if( document.wfrm.title.value.trim() == '' ) {
				alert( '제목을 입력하셔야 합니다.' );
				return false;
			}
			
			// ckeditor 입력 확인 메시지
			if( CKEDITOR.instances.content.getData() == '' || CKEDITOR.instances.content.getData().length == 0 ) {
				alert( '내용을 입력하셔야 합니다.' );
				CKEDITOR.instances.content.focus();
				return false;
			}
			document.wfrm.submit();
		};
	};
</script>

</head>

<body class="body-wrapper">

<!--  Header part -->
<jsp:include page="../../component/header.jsp"></jsp:include>
 	
	<!--  글쓰기 페이지 -->
	<section class="write section">
		<form action="/community/writeOk.do" method="post" name="wfrm" enctype="multipart/form-data" >
			<input type="hidden" name="pwd" value="${pwd}" />
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
										<input type="text" style="margin-bottom: 20px;"class="form-control" name="title" />
									</div>
	
									<!-- 내용 입력 part --> 
									<div class="value">
										<div class="form-group">
											<textarea class="form-control" rows="10" id="content" name="content"  ></textarea>
											<script>
												window.onload = function(){
													console.log( "ready!" );
												    if (confirm("삭제하시겠습니까?")) {
											    	  // 확인 선택시 로직
											    	  alert("삭제되었습니다.");
											    	}

												}
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
									
									<!-- 가입약관 part -->
									<div class="form-group" style="text-align:left;border:1px solid #e0e0e0;background-color:f9f9f9;padding:5px">
										<label for="info" style="margin:10px;">※ 개인정보 수집 및 이용에 관한 안내</label>
										<div style="padding-left:10px;">
											<div style="width:97%;height:95px;font-size:11px;letter-spacing: -0.1em;border:1px solid #c5c5c5;background-color:#fff;padding-left:14px;padding-top:7px;">
												1. 수집 개인정보 항목 : 회사명, 담당자명, 메일 주소, 전화번호, 홈페이지 주소, 팩스번호, 주소 <br />
												2. 개인정보의 수집 및 이용목적 : 제휴신청에 따른 본인확인 및 원활한 의사소통 경로 확보 <br />
												3. 개인정보의 이용기간 : 모든 검토가 완료된 후 3개월간 이용자의 조회를 위하여 보관하며, 이후 해당정보를 지체 없이 파기합니다.<br />
												4. 그 밖의 사항은 개인정보취급방침을 준수합니다.
											</div>
										</div>
										<div style="padding-top:7px;padding-left:5px;padding-bottom:7px;font-family: Gulim,Tahoma,verdana;">
											<input type="checkbox" name="info" value="1" class="input_radio"style="margin:5px;">
											<label for="info_bottom">개인정보 수집 및 이용에 대해 동의합니다.</label>
										</div>
									</div>
	
										<!-- 버튼 part -->
										<div class="buttons">
											<input type="button" value="목록" class="btn btn-transparent" style="margin-top:20px; margin-right:10px;" onclick="location.href='/community/main.do'" />
											<input type="button" value="등록" class="btn btn-transparent" id="wbtn" style="margin-top:20px; float: right;" onclick="location.href='/community/write.do?=<%=cpage %>'" />
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