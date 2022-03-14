<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.camper.model.ReviewTO" %>

<!DOCTYPE html>



<html lang="en">
<head>

<!-- SITE TITTLE -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CAMPER</title>

<!-- FAVICON -->
<link href="../../images/favicon.png" rel="shortcut icon">
<!-- PLUGINS CSS STYLE -->
<link href="../../plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
<!-- Bootstrap -->
<link rel="stylesheet" href="../../plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../../plugins/bootstrap/css/bootstrap-slider.css">
<!-- Font Awesome -->
<link href="../../plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- Fancy Box -->
<link href="../../plugins/fancybox/jquery.fancybox.pack.css"
	rel="stylesheet">
<link href="../../plugins/jquery-nice-select/css/nice-select.css"
	rel="stylesheet">
<!-- CUSTOM CSS -->
<link href="../../css/style.css" rel="stylesheet">

<style type="text/css">
img .img-fluid {
	width: 600px;
	height: 400px;
}

.slider {
	padding-top: 30px;
	padding-bottom: 30px;
}

.tbutton {
	border: 1px;
	border-color: white;
	background-color: transparent;
	outline: none;
	color: white;
	width: 100px;
	height: 70px;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script src="../../plugins/bootstrap/js/popper.min.js"></script>
<script src="../../plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="../../plugins/bootstrap/js/bootstrap-slider.js"></script>

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=44d54500db491a25378cc4604dd20efc&libraries=services"></script>
<script type="text/javascript">
	
	

	window.onload=()=>{
		let urls = location.href;
		let strParams = urls.toString().split("?");
		let params= strParams[1].split("&");
		let smapX=params[0].substring(6);
		let smapY=params[1].substring(6);
		let contentId=params[2].substring(10);
		const getReview = function (){
			$.ajax({
				url:"./getReview.do",
				data:{
					'contentId':contentId
				},
				dataType:'json',
				type:"POST",
				success:function(datas){
					$(".review-content").remove();
					let html ="";
					for(let i in datas){
						
						html+="<div class='review-content media-body container-float'>";
						html+="<div class='name'>";
						html+="<h5>"+datas[i].nick+"</h5>";
						html+="</div>";
						html+="<div class='date'>";
						html+="<p>"+datas[i].wdate+"</p>";
						html+="</div>";
						html+="<div class='review-comment'>";
						html+="<p 'class=rcontent''>"+datas[i].content+"</p>";
						html+="<input type='hidden' class='rvseq' value="+datas[i].rvseq+"></input>";
						html+="<button class='btn btn-warning modbtn'  data-bs-toggle='modal' data-bs-target='#modModal'>수정</button>";
						html+="<button class='btn btn-danger delbtn'  data-bs-toggle='modal' data-bs-target='#delModal'>삭제</button>";
						html+="</div>";
						html+="</div>";
					}
					
					$("#reviews").append(html); 								
					$(".modbtn").on('click',function(){
						$("#modModal").modal();
						$("#modContent").val($(this).prev().prev().text());  
						$("#modRvseq").val($(this).prev().val())
					})
					$("#modBtn").on('click',function(){						
							$.ajax({
								url:"./modifyReview.do",
								data:{
									"nick":$("#modNick").val(),
									//"password":$("#modPassword").val(),
									"rvseq":$("#modRvseq").val(),
									"content":$('#modContent').val()
								},
								dataType:"json",
								type:'POST',
								success:function(flag){
									if(flag==0){
									alert("리뷰가 수정되었습니다");
									$("#modModal").modal("hide");
									}else{
										alert("수정에 실패했습니다");
									}
									getReview();
								},
								error:function(){
								}
							})
						})	
					
					$(".delbtn").on('click',function(){	
						$("#delModal").modal();
						$("#delContent").val($(this).prev().prev().prev().text());  
						$("#delRvseq").val($(this).prev().prev().val())
					})
					$("#delBtn").on('click',function(){
							$.ajax({
								url:"./deleteReview.do",
								data:{
									"nick":$("#delNick").val(),
									"password":$("#delPassword").val(),
									"rvseq":$("#delRvseq").val()
								},
								dataType:"json",
								type:'POST',
								success:function(flag){
									
									if(flag==0){
									alert("리뷰가 삭제되었습니다");
									$("#delModal").modal("hide");
									}else{
									alert("삭제에 실패했습니다");
									}
									getReview();
								},
								error:function(){
								}
							})
						})
				},
				error:function(err){
					console.log("리뷰를 불러올수 없습니다.");
				}
			})
		}
		getReview();
		
		$("#rvSub").on("click",function(){
			let nick = $("#nick").val();
			let password = $("#password").val();
			let content = $("#content").val();
			$.ajax({
				url:"./writeReview.do",
				data:{
					"nick":nick,
					"password":password,
					"contentId":contentId,
					"content":content
				},
				dataType:"json",
				type:'POST',
				success:function(flag){
					if(flag==0){
					alert("리뷰가 작성되었습니다");
					}
					getReview();
				},
				error:function(){
					
				}
			})	
		})
			
		function nvl(item){
			if(typeof item==="undefined"|| item===null|| item==""){
				return "";
			}
	            return item.textContent;
			}
	
		const request = new XMLHttpRequest();
		request.onreadystatechange = function() {
			if(request.readyState==4){
				if(request.status==200){
					let xmlData =request.responseXML;
					
					const induty = xmlData.getElementsByTagName('induty')[0];
					const contentId = xmlData.getElementsByTagName('contentId')[0];
					const facltNm = xmlData.getElementsByTagName('facltNm')[0];
					const addr1 = xmlData.getElementsByTagName('addr1')[0];
					const glampInnerFclty = xmlData.getElementsByTagName('glampInnerFclty')[0];
					const animalCmgCl = xmlData.getElementsByTagName('animalCmgCl')[0];
					const sbrsCl = xmlData.getElementsByTagName('sbrsCl')[0];
					const lineIntro = xmlData.getElementsByTagName('lineIntro')[0];
					const firstImageUrl = xmlData.getElementsByTagName('firstImageUrl')[0];
					const doNm =  xmlData.getElementsByTagName('doNm')[0];
					const hompage = xmlData.getElementsByTagName('homepage')[0];
					// 예약링크 추가로 파싱 
					const resveUrl = xmlData.getElementsByTagName('resveUrl')[0];
					
					let div = function(){
						
						document.getElementById("induty").innerText=nvl(induty);
						document.getElementById("facltNm").innerText =nvl(facltNm);
						document.getElementById("addr1").innerText =nvl(addr1);
						document.getElementById("glampInnerFclty").innerText =nvl(glampInnerFclty);
						document.getElementById("animalCmgCl").innerText =nvl(animalCmgCl);
						document.getElementById("sbrsCl").innerText =nvl(sbrsCl);
						// 한줄 소개 분기문 처리 했습니다. 위에 만들어 놓으신 nvl 함수를 사용할 경우 공란이 되어버려서...
						if(lineIntro == '' || lineIntro == null) {
							document.getElementById("lineIntro").innerText = "한줄소개가 없습니다!";
						} else {
							document.getElementById("lineIntro").innerText = lineIntro;
						}
						document.getElementById("doNm").innerText =nvl(doNm);
						document.getElementById("homepage").innerText=nvl(hompage);
						document.getElementById("homepage").setAttribute("href",nvl(hompage));	
						// 예약링크 추가
						document.getElementById("resveUrl").innerText=nvl(resveUrl);
						document.getElementById("resveUrl").setAttribute("href",nvl(resveUrl));	
						document.getElementById("contentId").innerText=nvl(contentId) ; 
						document.getElementById("mainImg").setAttribute("src",nvl(firstImageUrl));	
						
					}
					div();
					const request2 = new XMLHttpRequest();
					request.onreadystatechange = function() {
						if(request.readyState==4){
							if(request.status==200){
								let xmlImageData =request.responseXML;
								let images=xmlImageData.getElementsByTagName("imageUrl");
								for(let i=0 ; i<images.length; i++){
								$.ajax({
									url:nvl(images[i]),
									type:'HEAD',
									error: function(){
									},
									success: function(){

											let html="";
											html+="<div class='product-slider-item my-4' id='dsub"+i+"\'";
											html+="data-image="+nvl(images[i])+">";
											html+="</div>";
											
											$("#slider").append(html);	
										}
								});
								}
								
							}
						}
							
					}
					request.open("GET","http://api.visitkorea.or.kr/openapi/service/rest/GoCamping/"
							+"imageList"
							+"?ServiceKey=02RP9yCl0%2BWeb7VZ9RjglX%2FY7k%2Bp%2FoHbLo2WDTgd2JVPrM7LjxoFNkAesm7JPgQZ6BSxAa23m2Oe6c%2F8BANHVw%3D%3D"
							+"&MobileOS=ETC&MobileApp=AppTest&contentId="+nvl(contentId)
							,true)
					
					request.send("GET","",true);
					
				}else{
					alert("페이지 에러");
				}
				
			}
		};
		//요청방식 / 요청 url// 동기
		request.open('GET',' http://api.visitkorea.or.kr/openapi/service/rest/GoCamping/'
				+"locationBasedList"
				+"?ServiceKey=02RP9yCl0%2BWeb7VZ9RjglX%2FY7k%2Bp%2FoHbLo2WDTgd2JVPrM7LjxoFNkAesm7JPgQZ6BSxAa23m2Oe6c%2F8BANHVw%3D%3D"
				+"&numOfRows=1"
				+"&pageNo=1"
				+"&MobileOS=ETC&MobileApp=TestApp&_type=xml"
				+"&mapX="+smapX
				+"&mapY="+smapY
				+"&radius=1"
				,true);
		request.send();
		
		let mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new kakao.maps.LatLng(smapY, smapX), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };

		let map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// 마커가 표시될 위치입니다 
		let markerPosition  = new kakao.maps.LatLng(smapY, smapX); 

		// 마커를 생성합니다
		let marker = new kakao.maps.Marker({
	    	position: markerPosition
		});
		marker.setMap(map);
		}

	function needLogin(){
		alert('로그인이 필요한 서비스입니다!')
	}
	
		

</script>

</head>

<body class="body-wrapper">
	<jsp:include page="../../component/header.jsp"></jsp:include>

	<!--===================================
=            Store Section            =
====================================-->
	<section class="section bg-gray">
		<!-- Container Start -->
		<div class="container">
			<div class="row">
				<div class="col-lg">
					<div class="row">
						<div
							class="container-fluid p-5 my-5 bg-light border col-lg-7 shadow-sm pt-3">
							<div class="product-details"  data-auto-refresh="true">
								<div id='facltNm' class="h1"></div>
								<div id="contentId" style="display:none;"></div>
								<div class="product-meta">
									<ul class="list-inline">

										<li class="list-inline-item"><i
											class="fa fa-location-arrow"></i>
											<div id="doNm"></div></li>
									</ul>
								</div>
								<div class="product-slider" id="slider" data-auto-refresh="true">
									<div class="product-slider-item my-4" id="dMain">
										<img class="img-fluid w-100" alt="product-img" style="height: 500px; "id="mainImg">
									</div>
								</div>
							</div>
						</div>

						<div class="container-fluid col-lg-5 shadow-sm p-3 my-5 border bg-light pt-3">
							<p></p>
							<table class="table table-sm mt-10" style="margin-top:30px">
								<tbody>
									<tr>
										<th>주소</th>
										<td><div id="addr1">주소1</div></td>
									</tr>
									<tr>
										<th>홈페이지</th>
										<td><a id="homepage" href=""></a></td>
									</tr>
									<tr>
										<th>예약링크</th>
										<td><a id="resveUrl" href=""></a></td>
									</tr>
									<tr>
										<th>기본 제공</th>
										<td><div id="sbrsCl"></div></td>
									</tr>
									<tr>
										<th>캠프 시설</th>
										<td><div id="glampInnerFclty"></div></td>
									</tr>
									<tr>
										<th>캠핑 형태</th>
										<td><div id="induty"></div></td>
									</tr>

									<tr>
										<th>애완동물출입</th>
										<td><div id="animalCmgCl"></div></td>
									</tr>

								</tbody>
							</table>
							<h4>한줄소개</h4>
							<div id="lineIntro"></div>
						</div>
					</div>

					<div id="map"
						class="container-lg-12 shadow-sm content pt-5 border bg-light">
						<h3 class="text-center">지도찾기</h3>
						<div class=" d-flex justify-content-center">
							<div id='map' style="width:300px; height:400px"></div>
						</div>
					</div>


					<div class="container-block shadow-sm content mt-5 pt-5 mb-5 border bg-light">
						<h1 class=" text-center"><img src="../../images/review.png" style="margin-right:10px; width:45px; height:45px">캠핑 리뷰</h1>
						<div class="container product-review" id="reviews">
					</div>
					<c:choose>
						<c:when test="${null eq sessionScope.nick or empty sessionScope.nick}">
							<div class="container review-submission bg-light mt-5">
								<div class="review-submit contianer-float">
									<div class="col-lg-6">
										<input type="text" name="nick" id="nick" class="form-control mb-2"
											placeholder="닉네임">
									</div>
									<!-- 이미 로그인 되어 있는 상태인데 비밀번호를 또 입력받으면 번거로울 듯?  
											이런 폼은 비회원도 글 쓰기가 가능할 때 사용하는 폼인거 같습니다 
									<div class="col-lg-6">
										<input type="password" name="password" id="password"
											class="form-control mb-2" placeholder="비밀번호">
									</div>
									 -->
									<div class="col-12">
										<textarea name="content" id="content" rows="10"
										class="form-control" placeholder="리뷰를 작성하세요"></textarea>
									</div>
									<div class="col-12">
										<button type="submit" class="btn btn-main btn-sm mt-4 mb-4 text-align-right" style="text-align:right" onclick="needLogin();">작성</button>
									</div>
							</div>
						</div>
						</c:when>
						<c:otherwise>
							<div class="container review-submission bg-light mt-5">
								<div class="review-submit contianer-float">
									<div class="col-lg-6">
										<input type="text" name="nick" id="nick" class="form-control mb-2"
											value="${sessionScope.nick}" readonly>
									</div>
									<!-- 이미 로그인 되어 있는 상태인데 비밀번호를 또 입력받으면 번거로울 듯?  
									<div class="col-lg-6">
										<input type="password" name="password" id="password"
											class="form-control mb-2" placeholder="비밀번호">
									</div>
									 -->
									 <div class="col-12">
										<textarea name="content" id="content" rows="10"
										class="form-control" placeholder="리뷰를 작성하세요"></textarea>
									</div>
									<div class="col-12">
										<button type="submit" class="btn btn-main btn-sm mt-4 mb-4 text-align-right" style="text-align:right" id="rvSub">작성</button>
									</div>
							</div>
						</div>
						</c:otherwise>
					</c:choose>	
					</div>
				</div>
			</div>
		</div>
		<!-- Container End -->
	</section>
	<!-- modal -->
	<div class="modal fade" id="modModal" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="modModalLabel">내용수정</h3>
					<button class="close" type='button' data-dismiss="modal" aria-label="Close"></button>
	
					</div>
					<div class="modal-body">
						<input type="hidden" id="modRvseq"/>
						<div class="del-submit contianer-float">
							<div class="col-lg-6">
								<input type="text" name="modNick" id="modNick" class="form-control disable">
							</div>
							<div class="col-lg-6">
								<input type="password" name="modPassword" id="modPassword"
									class="form-control" placeholder="비밀번호">
							</div>
							<div class="col-12">
								<textarea name="content" id="modContent" rows="10"
									class="form-control" ></textarea>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button class="btn" type="button" data-dismiss="modal" id="modBtn">예</button>
						<button class="btn" type="button" data-dismiss="modal">아니요</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="delModal" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" >
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="delModalLabel">내용삭제</h3>
					<button class="close" type='button' data-dismiss="modal" aria-label="Close"></button>
	
				
					</div>
					<div class="modal-body">
						<div class="del-submit contianer-float">
							<input type="hidden" id="delRvseq"/>
							<div class="col-lg-6">
								<input type="text" name="delNick" id="delNick" class="form-control disable">
							</div>
							<div class="col-lg-6">
								<input type="password" name="delPassword" id="delPassword"
									class="form-control" placeholder="비밀번호">
							</div>
							<div class="col-12">
								<textarea name="content" id="delContent" rows="10"
									class="form-control" readonly ></textarea>
							</div>
						</div>
					</div>			
					<div class="modal-footer">
						<button class="btn" type="button" data-dismiss="modal" id="delBtn">예</button>
						<button class="btn" type="button" data-dismiss="modal">아니요</button>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../../component/footer.jsp"></jsp:include>
	<!-- JAVASCRIPTS -->
	<script src="../../plugins/jQuery/jquery.min.js"></script>
	<script src="../../plugins/bootstrap/js/popper.min.js"></script>
	<script src="../../plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="../../plugins/bootstrap/js/bootstrap-slider.js"></script>
	<!-- tether js -->
	<script src="../../plugins/tether/js/tether.min.js"></script>
	<script src="../../plugins/raty/jquery.raty-fa.js"></script>
	<script
		src="../../plugins/jquery-nice-select/js/jquery.nice-select.min.js"></script>
	<script src="../../plugins/fancybox/jquery.fancybox.pack.js"></script>
	<script src="../../plugins/smoothscroll/SmoothScroll.min.js"></script>
	<!-- google map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"></script>
	<script src="../../plugins/google-map/gmap.js"></script>
	<script src="../../js/script.js"></script>

</body>

</html>