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


	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>

<body class="body-wrapper">
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
							<jsp:param value="message" name="thisPage"/>
						</jsp:include>
						<!-- MyPage SideNav -->
	
						<!-- delete-account modal -->
						<jsp:include page="../../modal/goodBye.jsp"></jsp:include>
						<!-- delete-account modal -->
					</div>
				</div>
				<div class="col-md-10 offset-md-1 col-lg-8 offset-lg-0">

					<!-- Recently Favorited -->
					<div class="row rounded-lg overflow-hidden shadow">
						<!-- Users box-->
						<div class="col-5 px-0">
							<div class="bg-white">

								<div class="bg-gray px-4 py-2 bg-light">
									<p class="h5 mb-0 py-1">Recent</p>
								</div>

								<div class="messages-box">
									<div class="list-group rounded-0">
										<a class="list-group-item list-group-item-action active text-white rounded-0">
											<div class="media"><img
													src="https://bootstrapious.com/i/snippets/sn-chat/avatar.svg"
													alt="user" width="50" class="rounded-circle">
												<div class="media-body ml-4">
													<div class="d-flex align-items-center justify-content-between mb-1">
														<h6 class="mb-0">Jason Doe</h6><small
															class="small font-weight-bold">25 Dec</small>
													</div>
													<p class="font-italic mb-0 text-small">Lorem ipsum dolor sit amet,
														consectetur adipisicing elit, sed do eiusmod tempor incididunt
														ut labore.</p>
												</div>
											</div>
										</a>

										<a href="#"
											class="list-group-item list-group-item-action list-group-item-light rounded-0">
											<div class="media"><img
													src="https://bootstrapious.com/i/snippets/sn-chat/avatar.svg"
													alt="user" width="50" class="rounded-circle">
												<div class="media-body ml-4">
													<div class="d-flex align-items-center justify-content-between mb-1">
														<h6 class="mb-0">Jason Doe</h6><small
															class="small font-weight-bold">14 Dec</small>
													</div>
													<p class="font-italic text-muted mb-0 text-small">Lorem ipsum dolor
														sit amet, consectetur. incididunt ut labore.</p>
												</div>
											</div>
										</a>

										<a href="#"
											class="list-group-item list-group-item-action list-group-item-light rounded-0">
											<div class="media"><img
													src="https://bootstrapious.com/i/snippets/sn-chat/avatar.svg"
													alt="user" width="50" class="rounded-circle">
												<div class="media-body ml-4">
													<div class="d-flex align-items-center justify-content-between mb-1">
														<h6 class="mb-0">Jason Doe</h6><small
															class="small font-weight-bold">9 Nov</small>
													</div>
													<p class="font-italic text-muted mb-0 text-small">consectetur
														adipisicing elit, sed do eiusmod tempor incididunt ut labore.
													</p>
												</div>
											</div>
										</a>

										<a href="#"
											class="list-group-item list-group-item-action list-group-item-light rounded-0">
											<div class="media"><img
													src="https://bootstrapious.com/i/snippets/sn-chat/avatar.svg"
													alt="user" width="50" class="rounded-circle">
												<div class="media-body ml-4">
													<div class="d-flex align-items-center justify-content-between mb-1">
														<h6 class="mb-0">Jason Doe</h6><small
															class="small font-weight-bold">18 Oct</small>
													</div>
													<p class="font-italic text-muted mb-0 text-small">Lorem ipsum dolor
														sit amet, consectetur adipisicing elit, sed do eiusmod tempor
														incididunt ut labore.</p>
												</div>
											</div>
										</a>

										<a href="#"
											class="list-group-item list-group-item-action list-group-item-light rounded-0">
											<div class="media"><img
													src="https://bootstrapious.com/i/snippets/sn-chat/avatar.svg"
													alt="user" width="50" class="rounded-circle">
												<div class="media-body ml-4">
													<div class="d-flex align-items-center justify-content-between mb-1">
														<h6 class="mb-0">Jason Doe</h6><small
															class="small font-weight-bold">17 Oct</small>
													</div>
													<p class="font-italic text-muted mb-0 text-small">consectetur
														adipisicing elit, sed do eiusmod tempor incididunt ut labore.
													</p>
												</div>
											</div>
										</a>

										<a href="#"
											class="list-group-item list-group-item-action list-group-item-light rounded-0">
											<div class="media"><img
													src="https://bootstrapious.com/i/snippets/sn-chat/avatar.svg"
													alt="user" width="50" class="rounded-circle">
												<div class="media-body ml-4">
													<div class="d-flex align-items-center justify-content-between mb-1">
														<h6 class="mb-0">Jason Doe</h6><small
															class="small font-weight-bold">2 Sep</small>
													</div>
													<p class="font-italic text-muted mb-0 text-small">Quis nostrud
														exercitation ullamco laboris nisi ut aliquip ex ea commodo
														consequat.</p>
												</div>
											</div>
										</a>

										<a href="#"
											class="list-group-item list-group-item-action list-group-item-light rounded-0">
											<div class="media"><img
													src="https://bootstrapious.com/i/snippets/sn-chat/avatar.svg"
													alt="user" width="50" class="rounded-circle">
												<div class="media-body ml-4">
													<div class="d-flex align-items-center justify-content-between mb-1">
														<h6 class="mb-0">Jason Doe</h6><small
															class="small font-weight-bold">30 Aug</small>
													</div>
													<p class="font-italic text-muted mb-0 text-small">Lorem ipsum dolor
														sit amet, consectetur adipisicing elit, sed do eiusmod tempor
														incididunt ut labore.</p>
												</div>
											</div>
										</a>

										<a href="#"
											class="list-group-item list-group-item-action list-group-item-light rounded-0">
											<div class="media"><img
													src="https://bootstrapious.com/i/snippets/sn-chat/avatar.svg"
													alt="user" width="50" class="rounded-circle">
												<div class="media-body ml-4">
													<div class="d-flex align-items-center justify-content-between mb-3">
														<h6 class="mb-0">Jason Doe</h6><small
															class="small font-weight-bold">21 Aug</small>
													</div>
													<p class="font-italic text-muted mb-0 text-small">Lorem ipsum dolor
														sit amet, consectetur adipisicing elit, sed do eiusmod tempor
														incididunt ut labore.</p>
												</div>
											</div>
										</a>

									</div>
								</div>
							</div>
						</div>
						<!-- Chat Box-->
						<div class="col-7 px-0">
							<div class="px-4 py-5 chat-box bg-white">
								<!-- Sender Message-->
								<div class="media w-50 mb-3"><img
										src="https://bootstrapious.com/i/snippets/sn-chat/avatar.svg" alt="user"
										width="50" class="rounded-circle">
									<div class="media-body ml-3">
										<div class="bg-light rounded py-2 px-3 mb-2">
											<p class="text-small mb-0 text-muted">Test which is a new approach all
												solutions</p>
										</div>
										<p class="small text-muted">12:00 PM | Aug 13</p>
									</div>
								</div>

								<!-- Reciever Message-->
								<div class="media w-50 ml-auto mb-3">
									<div class="media-body">
										<div class="bg-primary rounded py-2 px-3 mb-2">
											<p class="text-small mb-0 text-white">Test which is a new approach to have
												all solutions</p>
										</div>
										<p class="small text-muted">12:00 PM | Aug 13</p>
									</div>
								</div>

								<!-- Sender Message-->
								<div class="media w-50 mb-3"><img
										src="https://bootstrapious.com/i/snippets/sn-chat/avatar.svg" alt="user"
										width="50" class="rounded-circle">
									<div class="media-body ml-3">
										<div class="bg-light rounded py-2 px-3 mb-2">
											<p class="text-small mb-0 text-muted">Test, which is a new approach to have
											</p>
										</div>
										<p class="small text-muted">12:00 PM | Aug 13</p>
									</div>
								</div>

								<!-- Reciever Message-->
								<div class="media w-50 ml-auto mb-3">
									<div class="media-body">
										<div class="bg-primary rounded py-2 px-3 mb-2">
											<p class="text-small mb-0 text-white">Apollo University, Delhi, India Test
											</p>
										</div>
										<p class="small text-muted">12:00 PM | Aug 13</p>
									</div>
								</div>

								<!-- Sender Message-->
								<div class="media w-50 mb-3"><img
										src="https://bootstrapious.com/i/snippets/sn-chat/avatar.svg" alt="user"
										width="50" class="rounded-circle">
									<div class="media-body ml-3">
										<div class="bg-light rounded py-2 px-3 mb-2">
											<p class="text-small mb-0 text-muted">Test, which is a new approach</p>
										</div>
										<p class="small text-muted">12:00 PM | Aug 13</p>
									</div>
								</div>

								<!-- Reciever Message-->
								<div class="media w-50 ml-auto mb-3">
									<div class="media-body">
										<div class="bg-primary rounded py-2 px-3 mb-2">
											<p class="text-small mb-0 text-white">Apollo University, Delhi, India Test
											</p>
										</div>
										<p class="small text-muted">12:00 PM | Aug 13</p>
									</div>
								</div>

							</div>

							<!-- Typing area -->
							<form action="#" class="bg-light">
								<div class="input-group">
									<input type="text" placeholder="Type a message" aria-describedby="button-addon2"
										class="form-control rounded-0 border-0 py-4 bg-light">
									<div class="input-group-append">
										<button id="button-addon2" type="submit" class="btn btn-link"> <i
												class="fa fa-paper-plane"></i></button>
									</div>
								</div>
							</form>

						</div>
					</div>
				</div>
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
	<!-- <script src="../../plugins/smoothscroll/SmoothScroll.min.js"></script> -->
	<!-- google map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"></script>
	<script src="../../plugins/google-map/gmap.js"></script>
	<script src="../../js/script.js"></script>

</body>

</html>