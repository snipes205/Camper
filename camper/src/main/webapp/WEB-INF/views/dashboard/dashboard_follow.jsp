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
	<link rel="shortcut icon" href="../../images/favicon.png">
	<!-- PLUGINS CSS STYLE -->
	<!-- <link href ="../../plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet"> -->
	<!-- Bootstrap -->
	<link rel="stylesheet" href="../../plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="../../plugins/bootstrap/css/bootstrap-slider.css">
	<!-- Font Awesome -->
	<link href ="../../plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!-- Owl Carousel -->
	<link href ="../../plugins/slick-carousel/slick/slick.css" rel="stylesheet">
	<link href ="../../plugins/slick-carousel/slick/slick-theme.css" rel="stylesheet">
	<!-- Fancy Box -->
	<link href ="../../plugins/fancybox/jquery.fancybox.pack.css" rel="stylesheet">
	<link href ="../../plugins/jquery-nice-select/css/nice-select.css" rel="stylesheet">
	<!-- CUSTOM CSS -->
	<link href ="../../css/style.css" rel="stylesheet">


	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>
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
							<jsp:param value="follow" name="thisPage"/>
						</jsp:include>
						<!-- MyPage SideNav -->
	
						<!-- delete-account modal -->
						<jsp:include page="../../modal/goodBye.jsp"></jsp:include>
						<!-- delete-account modal -->
					</div>
				</div>
				<div class="col-md-10 offset-md-1 col-lg-8 offset-lg-0">
					<!-- Recently Favorited -->
					<div class="widget dashboard-container my-adslist">
						<table class="table table-responsive product-dashboard-table">
							<thead>
								<tr>
									<th></th>
									<th></th>
									<th class="text-center">Category</th>
									<th class="text-center">Action</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="product-thumb">
										<img width="80px" height="80px" src="../../images/1.jpg" alt="profile-img">
									</td>
									<td class="product-details">
										<h3 class="title">닉네임 또는 아이디</h3>
										<span class="add-id">@idid</span>
									</td>
									<td class="product-category"><span class="categories">87일</span></td>
									<td class="action" data-title="Action">
										<div class="">
											<ul class="list-inline justify-content-center">
												<li class="list-inline-item">
													<a data-toggle="tooltip" data-placement="top" title="Delete"
														class="delete" href="">
														<i class="fa fa-handshake-o"></i>
													</a>
												</li>
											</ul>
										</div>
									</td>
								</tr>
								<tr>

									<td class="product-thumb">
										<img width="80px" height="80px" src="../../images/1.jpg" alt="profile-img">
									</td>
									<td class="product-details">
										<h3 class="title">닉네임 또는 아이디</h3>
										<span class="add-id">@idid</span>
									</td>
									<td class="product-category"><span class="categories">87일</span></td>
									<td class="action" data-title="Action">
										<div class="">
											<ul class="list-inline justify-content-center">
												<li class="list-inline-item">
													<a data-toggle="tooltip" data-placement="top" title="Delete"
														class="delete" href="">
														<i class="fa fa-handshake-o"></i>
													</a>
												</li>
											</ul>
										</div>
									</td>
								</tr>
								<tr>

									<td class="product-thumb">
										<img width="80px" height="80px" src="../../images/1.jpg" alt="profile-img">
									</td>
									<td class="product-details">
										<h3 class="title">닉네임 또는 아이디</h3>
										<span class="add-id">@idid</span>
									</td>
									<td class="product-category"><span class="categories">87일</span></td>
									<td class="action" data-title="Action">
										<div class="">
											<ul class="list-inline justify-content-center">
												<li class="list-inline-item">
													<a data-toggle="tooltip" data-placement="top" title="Delete"
														class="delete" href="">
														<i class="fa fa-handshake-o"></i>
													</a>
												</li>
											</ul>
										</div>
									</td>
								</tr>
								<tr>

									<td class="product-thumb">
										<img width="80px" height="80px" src="../../images/1.jpg" alt="profile-img">
									</td>
									<td class="product-details">
										<h3 class="title">닉네임 또는 아이디</h3>
										<span class="add-id">@idid</span>
									</td>
									<td class="product-category"><span class="categories">87일</span></td>
									<td class="action" data-title="Action">
										<div class="">
											<ul class="list-inline justify-content-center">
												<li class="list-inline-item">
													<a data-toggle="tooltip" data-placement="top" title="Delete"
														class="delete" href="">
														<i class="fa fa-handshake-o"></i>
													</a>
												</li>
											</ul>
										</div>
									</td>
								</tr>
								<tr>

									<td class="product-thumb">
										<img width="80px" height="80px" src="../../images/1.jpg" alt="profile-img">
									</td>
									<td class="product-details">
										<h3 class="title">닉네임 또는 아이디</h3>
										<span class="add-id">@idid</span>
									</td>
									<td class="product-category"><span class="categories">87일</span></td>
									<td class="action" data-title="Action">
										<div class="">
											<ul class="list-inline justify-content-center">
												<li class="list-inline-item">
													<a data-toggle="tooltip" data-placement="top" title="Delete"
														class="delete" href="">
														<i class="fa fa-handshake-o"></i>
													</a>
												</li>
											</ul>
										</div>
									</td>
								</tr>
							</tbody>
						</table>

					</div>

					<!-- pagination -->
					<div class="pagination justify-content-center">
						<nav aria-label="Page navigation example">
							<ul class="pagination">
								<li class="page-item">
									<a class="page-link" href="#" aria-label="Previous">
										<span aria-hidden="true">&laquo;</span>
										<span class="sr-only">Previous</span>
									</a>
								</li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item active"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item">
									<a class="page-link" href="#" aria-label="Next">
										<span aria-hidden="true">&raquo;</span>
										<span class="sr-only">Next</span>
									</a>
								</li>
							</ul>
						</nav>
					</div>
					<!-- pagination -->

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