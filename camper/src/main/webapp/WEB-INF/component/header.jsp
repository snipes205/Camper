<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

</script>
</head>
<body>
	<section class="header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<nav class="navbar navbar-expand-lg navbar-light navigation">
						<a class="navbar-brand" href="../"> <img src="../images/logo.png" alt="로고"></a>
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav ml-auto main-nav ">
								<li class="nav-item dropdown dropdown-slide">
									<a class="nav-link dropdown-toggle" href="../search/theme.do"
									aria-haspopup="true" aria-expanded="false"> 캠핑어때 </a>
								</li>
								<li class="nav-item dropdown dropdown-slide">
									<a class="nav-link dropdown-toggle" href="../community/main.do"
									aria-haspopup="true" aria-expanded="false"> 캠핑톡톡 </a>
								</li>
								<li class="nav-item dropdown dropdown-slide">
									<a class="nav-link dropdown-toggle" href="#"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> 고객센터 </a>
									
									<!-- Dropdown list -->
									<div class="dropdown-menu">
										<a class="dropdown-item" href="../ask/notice.do">공지사항</a>
										<a class="dropdown-item" href="../ask/faq.do">FAQ</a>
									</div>
								</li>
							</ul>
							
							<ul class="navbar-nav ml-auto mt-10">
								<li class="nav-item dropdown dropdown-slide">
							<c:choose>
								<c:when test="${null eq sessionScope.profile or empty sessionScope.profile}">
									<a class="nav-link" href="" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false">
										<img class="profile-img" src="../images/default_profile.png">
									</a>
								</c:when>
								<c:otherwise>
									<a class="nav-link" href="" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false">
										<img class="profile-img" src="${sessionScope.profile}">
									</a>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${sessionScope.authority eq 'admin'}">
									<!-- Dropdown list -->
									<div class="dropdown-menu">
										<a class="nav-link myPage-button" href="../admin/main.do"><i class="fa fa-wrench" aria-hidden="true"></i>
										관리자 페이지</a>
										<a class="nav-link myPage-button" href="../logout.do"><i class="fa fa-sign-out" aria-hidden="true"></i>
										Log Out</a>
									</div>
								</c:when>
								<c:when test="${!empty sessionScope.id or !empty sessionScope.kakaoid}">
									<!-- Dropdown list -->
									<div class="dropdown-menu">
										<a class="nav-link myPage-button" href="../dashboard/myads.do"><i class="fa fa-user" aria-hidden="true"></i>
										MyPage</a>
										<a class="nav-link myPage-button" href="../logout.do"><i class="fa fa-sign-out" aria-hidden="true"></i>
										Log Out</a>
									</div>
								</c:when>
								<c:otherwise>
									<div class="dropdown-menu">
										<a class="nav-link login-button" href="../login/login.do">로그인</a>
										<a class="nav-link add-button" href="../login/register.do">회원가입</a>
								    </div>
								</c:otherwise>
							</c:choose>
								</li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</section>
</body>
</html>