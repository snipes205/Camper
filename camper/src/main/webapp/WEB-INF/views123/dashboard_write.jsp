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
	<link href ="../images/favicon.png" rel="shortcut icon">
	<!-- PLUGINS CSS STYLE -->
	<!-- <link href ="../plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet"> -->
	<!-- Bootstrap -->
	<link rel="stylesheet" href="../plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="../plugins/bootstrap/css/bootstrap-slider.css">
	<!-- Font Awesome -->
	<link href ="../plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!-- Owl Carousel -->
	<link href ="../plugins/slick-carousel/slick/slick.css" rel="stylesheet">
	<link href ="../plugins/slick-carousel/slick/slick-theme.css" rel="stylesheet">
	<!-- Fancy Box -->
	<link href ="../plugins/fancybox/jquery.fancybox.pack.css" rel="stylesheet">
	<link href ="../plugins/jquery-nice-select/css/nice-select.css" rel="stylesheet">
	<!-- CUSTOM CSS -->
	<link href ="../css/style.css" rel="stylesheet">


	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>

<body class="body-wrapper">
  	<jsp:include page="../component/header.jsp"></jsp:include>

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
						<!-- User Widget -->
						<div class="widget user-dashboard-profile">
							<!-- User Image -->
							<div class="profile-thumb">
								<img src="../images/1.jpg" alt="" class="rounded-circle">
							</div>
							<!-- User Name -->
							<h5 class="text-center">이름이름</h5>
							<p>나이(성별)</p>
						</div>
						<!-- Dashboard Links -->
						<div class="widget user-dashboard-menu">
							<ul>
								<li><a href="/dashboard/myads.do"><i class="fa fa-user"></i> 내 정보 수정 </a></li>
								<li><a href="/dashboard/jjim.do"><i class="fa fa-bookmark"></i> 찜한 갬핑장<span>5</span></a></li>
								<li class="active"><a href="/dashboard/write.do"><i class="fa fa-pencil"></i> 내가 쓴 글<span>5</span></a></li>
								<li><a href="/dashboard/like.do"><i class="fa fa-heart"></i> 좋아요 <span>12</span></a></li>
								<li><a href="/dashboard/follow.do"><i class="fa fa-handshake-o"></i> 팔로우<span>23</span></a></li>
								<li><a href="/dashboard/message.do"><i class="fa fa-comments"></i>메세지함<span>23</span></a></li>
								<li><a href="/dashboard/question.do"><i class="fa fa-question-circle"></i> 1:1 문의<span>23</span></a></li>
								<li><a href="" data-toggle="modal" data-target="#deleteaccount"><i class="fa fa-trash"></i>탈퇴하기</a></li>
							</ul>
						</div>


						<!-- delete-account modal -->
						<!-- delete account popup modal start-->
						<!-- Modal -->
						<div class="modal fade" id="deleteaccount" tabindex="-1" role="dialog"
							aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered" role="document">
								<div class="modal-content">
									<div class="modal-header border-bottom-0">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body text-center">
										<img src="../images/dontleave.jpeg" class="img-fluid mb-2" alt="">
										<h6 class="py-2">정말 탈퇴하시겠습니까?</h6>
										<p>캠린이 두고 가지마요 ㅜㅜ
										</p>
										<textarea name="message" id="" cols="40" rows="4"
											class="w-100 rounded"></textarea>
									</div>
									<div
										class="modal-footer border-top-0 mb-3 mx-5 justify-content-lg-between justify-content-center">
										<button type="button" class="btn btn-primary" data-dismiss="modal">머무르기</button>
										<button type="button" class="btn btn-danger">진짜떠나기</button>
									</div>
								</div>
							</div>
						</div>
						<!-- delete account popup modal end-->
						<!-- delete-account modal -->

					</div>
				</div>
				<div class="col-md-10 offset-md-1 col-lg-8 offset-lg-0">
					<!-- Recently Favorited -->
					<div class="widget dashboard-container my-adslist">
						<table class="table table-responsive product-dashboard-table">
							<thead>
								<tr>
									<th>Image</th>
									<th>Product Title</th>
									<th class="text-center">Category</th>
									<th class="text-center">Action</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="product-thumb">
										<img width="80px" height="80px" src="../images/like.png" alt="like_thumb">
									</td>
									<td class="product-details">
										<h3 class="title">감바스 맛있게 만드는 꿀팁</h3>
										<span class="add-id">캠핑꿀팁</span>
										<span style="margin-top: 15px;">나는야 내용 블라블라블라블라블라 어느정도 내용차면 read more
											적용...</span>

									</td>
									<td class="product-category"><span class="categories"><time>2022.02.24</time></td>
									<td class="action" data-title="Action">
										<div class="">
											<ul class="list-inline justify-content-center">
												<li class="list-inline-item">
													<a data-toggle="tooltip" data-placement="top" title="View"
														class="view" href="category.html">
														<i class="fa fa-eye"></i>
													</a>
												</li>
												<li class="list-inline-item">
													<a data-toggle="tooltip" data-placement="top" title="Edit"
														class="edit" href="">
														<i class="fa fa-pencil"></i>
													</a>
												</li>
												<li class="list-inline-item">
													<a data-toggle="tooltip" data-placement="top" title="Delete"
														class="delete" href="">
														<i class="fa fa-trash"></i>
													</a>
												</li>
											</ul>
										</div>
									</td>
								</tr>

								<tr>
									<td class="product-thumb">
										<img width="80px" height="80px" src="../images/camping.jpeg" alt="camping_thumb">
									</td>
									<td class="product-details">
										<h3 class="title">청도 참나무숲 캠핑장 다녀온 후기</h3>
										<span class="add-id">캠핑로그</span>
										<span style="margin-top: 15px;">나는야 내용 블라블라블라블라블라 어느정도 내용차면 read more
											적용...</span>

									</td>
									<td class="product-category"><span class="categories"><time>2022.02.24</time></td>
									<td class="action" data-title="Action">
										<div class="">
											<ul class="list-inline justify-content-center">
												<li class="list-inline-item">
													<a data-toggle="tooltip" data-placement="top" title="View"
														class="view" href="category.html">
														<i class="fa fa-eye"></i>
													</a>
												</li>
												<li class="list-inline-item">
													<a data-toggle="tooltip" data-placement="top" title="Edit"
														class="edit" href="">
														<i class="fa fa-pencil"></i>
													</a>
												</li>
												<li class="list-inline-item">
													<a data-toggle="tooltip" data-placement="top" title="Delete"
														class="delete" href="">
														<i class="fa fa-trash"></i>
													</a>
												</li>
											</ul>
										</div>
									</td>
								</tr>

								<tr>
									<td class="product-thumb">
										<img width="80px" height="80px" src="../images/like.png" alt="like_thumb">
									</td>
									<td class="product-details">
										<h3 class="title">감바스 맛있게 만드는 꿀팁</h3>
										<span class="add-id">캠핑꿀팁</span>
										<span style="margin-top: 15px;">나는야 내용 블라블라블라블라블라 어느정도 내용차면 read more
											적용...</span>

									</td>
									<td class="product-category"><span class="categories"><time>2022.02.24</time></td>
									<td class="action" data-title="Action">
										<div class="">
											<ul class="list-inline justify-content-center">
												<li class="list-inline-item">
													<a data-toggle="tooltip" data-placement="top" title="View"
														class="view" href="category.html">
														<i class="fa fa-eye"></i>
													</a>
												</li>
												<li class="list-inline-item">
													<a data-toggle="tooltip" data-placement="top" title="Edit"
														class="edit" href="">
														<i class="fa fa-pencil"></i>
													</a>
												</li>
												<li class="list-inline-item">
													<a data-toggle="tooltip" data-placement="top" title="Delete"
														class="delete" href="">
														<i class="fa fa-trash"></i>
													</a>
												</li>
											</ul>
										</div>
									</td>
								</tr>

								<tr>
									<td class="product-thumb">
										<img width="80px" height="80px" src="../images/camping.jpeg" alt="camping_thumb">
									</td>
									<td class="product-details">
										<h3 class="title">청도 참나무숲 캠핑장 다녀온 후기</h3>
										<span class="add-id">캠핑로그</span>
										<span style="margin-top: 15px;">나는야 내용 블라블라블라블라블라 어느정도 내용차면 read more
											적용...</span>

									</td>
									<td class="product-category"><span class="categories"><time>2022.02.24</time></td>
									<td class="action" data-title="Action">
										<div class="">
											<ul class="list-inline justify-content-center">
												<li class="list-inline-item">
													<a data-toggle="tooltip" data-placement="top" title="View"
														class="view" href="category.html">
														<i class="fa fa-eye"></i>
													</a>
												</li>
												<li class="list-inline-item">
													<a data-toggle="tooltip" data-placement="top" title="Edit"
														class="edit" href="">
														<i class="fa fa-pencil"></i>
													</a>
												</li>
												<li class="list-inline-item">
													<a data-toggle="tooltip" data-placement="top" title="Delete"
														class="delete" href="">
														<i class="fa fa-trash"></i>
													</a>
												</li>
											</ul>
										</div>
									</td>
								</tr>

								<tr>
									<td class="product-thumb">
										<img width="80px" height="80px" src="../images/like.png" alt="like_thumb">
									</td>
									<td class="product-details">
										<h3 class="title">감바스 맛있게 만드는 꿀팁</h3>
										<span class="add-id">캠핑꿀팁</span>
										<span style="margin-top: 15px;">나는야 내용 블라블라블라블라블라 어느정도 내용차면 read more
											적용...</span>

									</td>
									<td class="product-category"><span class="categories"><time>2022.02.24</time></td>
									<td class="action" data-title="Action">
										<div class="">
											<ul class="list-inline justify-content-center">
												<li class="list-inline-item">
													<a data-toggle="tooltip" data-placement="top" title="View"
														class="view" href="category.html">
														<i class="fa fa-eye"></i>
													</a>
												</li>
												<li class="list-inline-item">
													<a data-toggle="tooltip" data-placement="top" title="Edit"
														class="edit" href="">
														<i class="fa fa-pencil"></i>
													</a>
												</li>
												<li class="list-inline-item">
													<a data-toggle="tooltip" data-placement="top" title="Delete"
														class="delete" href="">
														<i class="fa fa-trash"></i>
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