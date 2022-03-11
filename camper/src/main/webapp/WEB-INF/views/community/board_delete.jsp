<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--  캠핑톡톡 글삭제 MVC Model2 구조 -->

<%@page import="com.camper.model.BoardTO"%>
<%
	BoardTO to = (BoardTO)request.getAttribute( "to" );	
	
	String pseq = to.getPseq();
	String title = to.getTitle();
	String nick = to.getNick();
	String type= to.getType();

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
	<link rel="stylesheet" type="text/css" href="../../css/board_main.css">


  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  
<script type ="text/javascript" >
	window.onload = function() {
		document.getElementById( 'dbtn' ).onclick = function() {
			if( document.dfrm.pwd.value.trim() == '' ) {
				alert( '비밀번호를 입력하셔야 합니다.' );
				
				return;
			}
			document.dfrm.submit();
		};
	};
</script>

</head>

<body class="body-wrapper">

<!--  Header part -->
<jsp:include page="../../component/header.jsp"></jsp:include>
 	
  <!--  글삭제 section -->
  <section class="delete section">
  	<form action="/community/deleteOk.do" method="post" name="dfrm">
		<input type="hidden" name="pseq" value="<%=pseq %>" />
		<input type="hidden" name="type" value="<%=type %>" />
		
	    <div class="container">
	      <div class="row">
	        <div class="col-md-10 offset-md-1 col-lg-9 offset-lg-0">
	          <!-- Edit Profile Welcome Text -->
	          <div class="widget welcome-message">
	            <h2>글삭제</h2>
	          </div>
	
	          <!-- 글 삭제 부분 -->
	          <div class="row">
	            <div class="col-md-10 offset-md-1 col-lg offset-lg-0">
	              <div class="widget write-form">
	
					<!-- 제목 part -->
	                <div class="form-group">
	                  <label for="title">제목</label>
	                  <input type="text" class="form-control" name="title" value="<%=title %>">
	                </div>
	
	                <!-- 닉네임 part -->
	                <div class="form-group">
	                  <label for="nick">닉네임</label>
	                  <input type="text" class="form-control" name="nick" value="<%=nick %>">
	                </div>
	
	                <!-- 비밀번호 입력 part -->
	                <div class="form-group">
	                  <label for="pwd">비밀번호</label>
	                  <input type="password" class="form-control" name="pwd">
	                </div>
	
	                <!-- 목록 / 보기 / 삭제 버튼 part -->
	                <div class="buttons" >
	                	<input type="button" value="목록" class="btn btn-transparent" style="margin-top:20px; margin-right:10px;" onclick="location.href='/community/main.do'" />
	                	<input type="button" value="보기" class="btn btn-transparent" style="margin-top:20px;" onclick="location.href='/community/view.do?pseq=<%=pseq %>'" />
	                	<input type="button" value="삭제" class="btn btn-transparent" style="margin-top:20px; float: right;" id="dbtn" onclick="location.href='/community/deleteOk.do'" />
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