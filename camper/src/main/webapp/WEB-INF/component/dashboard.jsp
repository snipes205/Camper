<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- User Widget -->
	<div class="widget user-dashboard-profile">
		<!-- User Image -->
		<div class="profile-thumb">
			<c:choose>
				<c:when test="${null eq sessionScope.profile or empty sessionScope.profile}">
					<img src="../images/default_profile.png" alt="" class="rounded-circle">
				</c:when>
				<c:otherwise>
					<img src="${sessionScope.profile}" alt="" class="rounded-circle">
				</c:otherwise>
			</c:choose>
		</div>
		<!-- User Name -->
		<h5 class="text-center">${sessionScope.name}</h5>
		<p>${sessionScope.birth}</p>
	</div>
	<!-- Dashboard Links -->
	<div class="widget user-dashboard-menu">
		<ul>
			<li class="${param.thisPage eq 'myads' ? 'active' : '' }"><a href="/dashboard/myads.do"><i class="fa fa-user"></i> 내 정보 수정 </a></li>
			<li class="${param.thisPage eq 'jjim' ? 'active' : '' }"><a href="/dashboard/jjim.do"><i class="fa fa-bookmark"></i> 찜한 갬핑장 <span>5</span></a></li>
			<li class="${param.thisPage eq 'write' ? 'active' : '' }"><a href="/dashboard/write.do"><i class="fa fa-pencil"></i> 내가 쓴 글 <span>5</span></a></li>
			<li class="${param.thisPage eq 'like' ? 'active' : '' }"><a href="/dashboard/like.do"><i class="fa fa-heart"></i> 좋아요 <span>12</span></a></li>
			<li class="${param.thisPage eq 'follow' ? 'active' : '' }"><a href="/dashboard/follow.do"><i class="fa fa-handshake-o"></i> 팔로우<span>23</span></a></li>
			<li class="${param.thisPage eq 'message' ? 'active' : '' }"><a href="/dashboard/message.do"><i class="fa fa-comments"></i>메세지함<span>23</span></a></li>
			<li class="${param.thisPage eq 'question' ? 'active' : '' }"><a href="/dashboard/question.do"><i class="fa fa-question-circle"></i> 1:1 문의<span>23</span></a></li>
			<li><a href="" data-toggle="modal" data-target="#deleteaccount"><i class="fa fa-trash"></i>탈퇴하기</a></li>
		</ul>
	</div>
</body>
</html>