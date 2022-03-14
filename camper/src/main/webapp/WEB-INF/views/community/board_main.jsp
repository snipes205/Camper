<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--  캠핑톡톡 메인 List MVC Model2 구조 -->

<%@ page import="com.camper.model.BoardTO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.ResultSet" %>
<%

	// 캠핑로그 
	
	ArrayList<BoardTO> boardLists5 = (ArrayList)request.getAttribute( "boardLists5" );
	
	StringBuffer sbHtml = new StringBuffer();
		for( BoardTO to : boardLists5 ) {
			String pseq = to.getPseq();
			String title = to.getTitle();
			String nick = to.getNick();
			
			sbHtml.append( "	<div class='item'>" );
			sbHtml.append( "		<div class='title'>" );
			sbHtml.append( "			<a href='/community/view.do?pseq=" + pseq + "'>" + title + "</a>&nbsp;" );
			sbHtml.append( "		</div>" );
			sbHtml.append( "			<div class='writer'>" + nick + "</div>" );
			sbHtml.append( "	</div>" );

	}
%>
<%
	// 캠핑꿀팁
	
	ArrayList<BoardTO> boardLists6 = (ArrayList)request.getAttribute( "boardLists6" );
	
	StringBuffer sbHtml2 = new StringBuffer();
		for( BoardTO to : boardLists6 ) {
			String pseq = to.getPseq();
			String title = to.getTitle();
			String nick = to.getNick();
			
			sbHtml2.append( "	<div class='item'>" );
			sbHtml2.append( "		<div class='title'>" );
			sbHtml2.append( "			<a href='/community/view.do?pseq=" + pseq + "'>" + title + "</a>&nbsp;" );
			sbHtml2.append( "		</div>" );
			sbHtml2.append( "			<div class='writer'>" + nick + "</div>" );
			sbHtml2.append( "	</div>" );

	}
%>
<% 
		
	// 캠핑가자
	ArrayList<BoardTO> boardLists7 = (ArrayList)request.getAttribute( "boardLists7" );
	
	StringBuffer sbHtml3 = new StringBuffer();
		for( BoardTO to : boardLists7 ) {
			String pseq = to.getPseq();
			String title = to.getTitle();
			String nick = to.getNick();
			
			sbHtml3.append( "	<div class='item'>" );
			sbHtml3.append( "		<div class='title'>" );
			sbHtml3.append( "			<a href='/community/view.do?pseq=" + pseq + "'>" + title + "</a>&nbsp;" );
			sbHtml3.append( "		</div>" );
			sbHtml3.append( "			<div class='writer'>" + nick + "</div>" );
			sbHtml3.append( "	</div>" );

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

</head>

<body class="body-wrapper">

<!--  Header part -->
	<jsp:include page="../../component/header.jsp"></jsp:include>
	
	<section class="section bg-gray">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading text-center pb-5">
						<i class="ico"><img src="../../images/community/icon_chat.png"></i>
						<h2 class="font-weight-bold" style="margin:20px;" >
						캠핑톡톡
						</h2>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="package-content bg-light border text-center p-5 my-2 my-lg-0">
						<div class="package-content-heading">
							<h2><i class="ico"><img src="../../images/community/icon_tent.png"></i>
								<a href="./camplog.do">캠핑로그</a>
							</h2>
							<hr />
							<div class="board1">
								
								<!-- 캠핑로그 List 내용 -->
								<%=sbHtml.toString() %>
							</div>
						</div>
					</div>
				</div>

				<!--  board2 -->
				<div class="col-lg-4 col-md-6">
					<div class="package-content bg-light border text-center my-2 my-lg-0 p-5">
						<div class="package-content-heading">
							<h2><i class="ico"><img src="../../images/community/icon_bag.png"></i><a
									href="./camptip.do">캠핑꿀팁</a></h2>
							<hr />
							<div class="board1">
							
								<!--  캠핑꿀팁 List 내용 -->
								<%=sbHtml2.toString() %>
							</div>
						</div>
					</div>
				</div>
				
				<!--  board3 -->
				<div class="col-lg-4 col-md-6 mx-sm-auto">
					<div class="package-content bg-light border text-center p-5 my-2 my-lg-0">
						<div class="package-content-heading">
							<h2><i class="ico"><img src="../../images/community/icon_car.png"></i><a
									href="./campgo.do">캠핑가자</a></h2>
							<hr />
							<div class="board1">
							
								<!-- 캠핑가자 List 내용 -->
								<%= sbHtml3.toString() %>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
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