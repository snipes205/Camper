<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--  캠핑로그 List MVC Model2 구조 -->

<%@ page import="com.camper.model.BoardTO" %>
<%@page import="com.camper.model.BoardListTO"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.ResultSet" %>
<% 
	ArrayList<BoardTO> boardLists = (ArrayList)request.getAttribute( "boardLists" );

	StringBuffer sbHtml = new StringBuffer();
		for( BoardTO to : boardLists ) {
			String pseq = to.getPseq();
			String title = to.getTitle();
			String nick = to.getNick();
			String wdate = to.getWdate();
			
			// 게시물 내용 form
			sbHtml.append( "<article>" );
			sbHtml.append( "	<div>" );
			sbHtml.append( "		<a href='/community/view.do?pseq=" + pseq + "'>" + title + "</a>" );
			sbHtml.append( "	</div>" );
			sbHtml.append( "	<ul class='list-inline'>" );
			sbHtml.append( "		<li class='list-inline-item'>by <a href=''>" + nick + "</a></li>" );
			sbHtml.append( "		<li class='list-inline-item'>" + wdate + "</li>" );
			sbHtml.append( "	</ul>" );
			sbHtml.append( "</article>" );

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
<link href="../plugins/slick-carousel/slick/slick-theme.css"
	rel="stylesheet">
<!-- Fancy Box -->
<link href="../plugins/fancybox/jquery.fancybox.pack.css" rel="stylesheet">
<link href="../plugins/jquery-nice-select/css/nice-select.css"
	rel="stylesheet">
<!-- CUSTOM CSS -->
<link href="../css/style.css" rel="stylesheet">
<link href="../css/board_main.css" rel="stylesheet">


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>

<!--  Header part -->
<body class="body-wrapper">
	<jsp:include page="../component/header.jsp"></jsp:include>
	
<<<<<<< HEAD
	<section class="blog section">
			<div class="container">
				<div class="col-md-10 offset-md-1 col-lg-9 offset-lg-0"">
					<h2><i class="ico"><img src="../images/community/icon_tent.png"></i>
=======
	<!--  캠핑로그 List Section  -->
	<section class="blog section">
			<div class="container">
				<div class="col-md-10 offset-md-1 col-lg-9 offset-lg-0"">
					<h2><i class="ico"><img src="/images/community/icon_tent.png"></i>
>>>>>>> origin/ljh
					캠핑로그
					</h2><hr />     
				</div>
			</div>
			
		<div class="container">
			<div class="row">
				<div class="col-md-10 offset-md-1 col-lg-9 offset-lg-0">
<<<<<<< HEAD

					<!-- 게시물 1 -->
					<article>
						<div>
							<a href="/community/view.do">제목5</a>
						</div>
						<ul class="list-inline">
							<li class="list-inline-item">by <a href="profile.html">닉네임</a></li>
							<li class="list-inline-item">2022-02-24</li>
						</ul>
					</article>

					<!-- 게시물 2 -->
					<article>
						<div>
							<a href="/community/view.do">제목4</a>
						</div>
						<ul class="list-inline">
							<li class="list-inline-item">by <a href="#">닉네임</a></li>
							<li class="list-inline-item">2022-02-24</li>
						</ul>
					</article>

					<!-- 게시물 3 -->
					<article>
						<div>
							<a href="/community/view.do">제목3</a>
						</div>
						<ul class="list-inline">
							<li class="list-inline-item">by <a href="#">닉네임</a></li>
							<li class="list-inline-item">2022-02-24</li>
						</ul>
					</article>

					<!-- 게시물 4 -->
					<article>
						<div>
							<a href="/community/view.do">제목2</a>
						</div>
						<ul class="list-inline">
							<li class="list-inline-item">by <a href="#">닉네임</a></li>
							<li class="list-inline-item">2022-02-24</li>
						</ul>
					</article>

					<!-- 게시물 5 -->
					<article>
						<div>
							<a href="/community/view.do">제목1</a>
						</div>
						<ul class="list-inline">
							<li class="list-inline-item">by <a href="#">닉네임</a></li>
							<li class="list-inline-item">2022-02-24</li>
						</ul>
					</article>

					<!--  버튼 Part -->
					<a href="/community/write.do"><button type="button" class="btn btn-transparent" style="float: right;">등록</button></a>

=======
				
					<!--  List 내용 표시 -->
					<%= sbHtml.toString() %>
					
					<!--  버튼 Part -->
					<a href="/community/write.do"><button type="button" class="btn btn-transparent" style="float: right;">글쓰기</button></a>
					
					<!--  페이지네이션 내용 표시 -->
					
					
>>>>>>> origin/ljh
					<!--  페이지네이션 Part -->
					<nav aria-label="Page navigation">
						<ul class="pagination" style="margin-top: 0px;">
							<li class="page-item"><a class="page-link" href="#" aria-label="Next">
								<span aria-hidden="true"><i class="fa fa-angle-double-left"></i></span>
								<span class="sr-only">DPrevious</span></a>
							</li>
							<li class="page-item"><a class="page-link" href="#" aria-label="Previous">
								<span aria-hidden="true"><i class="fa fa-angle-left"></i></span>
								<span class="sr-only">Previous</span></a>
							</li>
							<li class="page-item active"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">4</a></li>
							<li class="page-item"><a class="page-link" href="#">5</a></li>
							
							<li class="page-item"><a class="page-link" href="#" aria-label="Next">
								<span aria-hidden="true"><i class="fa fa-angle-right"></i></span>
								<span class="sr-only">Next</span></a>
							</li>
							<li class="page-item"><a class="page-link" href="#" aria-label="Next">
								<span aria-hidden="true"><i class="fa fa-angle-double-right"></i></span>
								<span class="sr-only">DNext</span></a>
							</li>
						</ul>
					</nav>
				</div>
				
				<!--  우측 사이드 part -->
				<div class="col-md-10 offset-md-1 col-lg-3 offset-lg-0">
					<div class="sidebar">


						<!-- 검색 Part -->
						<div class="widget search p-0">
							<div class="input-group">
								<input type="text" class="form-control" id="expire"
									placeholder="Search..."> <span
									class="input-group-addon"><i class="fa fa-search"></i></span>
							</div>
						</div>


						<!-- 카테고리 메뉴도 Part -->
						<div class="widget category">
							<!-- Widget Header -->
							<h5 class="widget-header">카테고리</h5>
							<ul class="category-list">
<<<<<<< HEAD
								<li><a href="/community/camplog.do">캠핑로그 <span class="float-right">(2)</span></a></li>
								<li><a href="/community/camptip.do">캠핑꿀팁 <span class="float-right">(5)</span></a></li>
								<li><a href="/community/campgo.do">캠핑가자 <span class="float-right">(7)</span></a></li>
=======
								<li><a href="/community/camplog.do">캠핑로그 <span class="float-right"></span></a></li>
								<li><a href="/community/camptip.do">캠핑꿀팁 <span class="float-right"></span></a></li>
								<li><a href="/community/campgo.do">캠핑가자 <span class="float-right"></span></a></li>
>>>>>>> origin/ljh
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
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

