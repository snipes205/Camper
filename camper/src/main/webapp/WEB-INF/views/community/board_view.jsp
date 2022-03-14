<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  캠핑톡톡 글보기 MVC Model2 구조 -->

<%@ page import="com.camper.model.BoardTO" %>
<% 
	
	BoardTO to = (BoardTO)request.getAttribute( "to" );

	String pseq = to.getPseq();
	String title = to.getTitle();
	String nick = to.getNick();
	String content = to.getContent();
	String wdate = to.getWdate();
	String type = to.getType();
	
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
	<link href ="../../images/favicon.png" rel="shortcut icon">
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

<!--  Header part -->
<body class="body-wrapper">
	<jsp:include page="../../component/header.jsp"></jsp:include>

	<!--  글보기 페이지 -->
	<section class="blog single-blog section">
		<form id="replyForm" name="replyForm" mehtod="post" >
		<div class="container">
			<div class="row">
				<div class="col-md-10 offset-md-1 col-lg-9 offset-lg-0">
					<article class="single-post">

						<!--  상세 보기 form -->
						<h3><%=title %></h3>
						<ul class="list-inline">
							<li class="list-inline-item">by <a href=""><%=nick %></a></li>
							<li class="list-inline-item"><%=wdate %></li>
						</ul>
						<p><%=content %></p>

						<!--  좋아요 / 댓글 버튼 part -->						
							<!-- 댓글 수 증가 입력될 공간 -->
							<li class="list-inline-item text-right">
								<img src="../../images/community/writing.png">
								<span id="count_reply"><strong><!-- 여기 --></strong></span>
							</li>
						</ul>

						<!-- 댓글 입력 part -->
						<div class="block comment" style="margin-top: 10px;">
						
							<div class="reply-list" >
						<!--  댓글 List 불러오기 -->
							
							</div>
							
							<div class="form-group mb-30">
								<input type="text" class="form-control" id= "reply" name="reply" placeholder="댓글 입력..." />
							</div>
							<c:choose>
								<c:when test="${empty sessionScope.nick }">
									<button type="button" class="btn btn-transparent" onclick="javascript:alert('로그인을 하셔야합니다.')">댓글등록</button>
								</c:when>
								<c:otherwise>
									<button type="button" class="btn btn-transparent" onclick="WriteReply('<%=pseq %>');">댓글등록</button>
								</c:otherwise>
							</c:choose>
						</div>
					</article>
					</form>
					
						<!--  버튼 part -->
						<div class="container">
								<input type="button" value="목록" class="btn btn-transparent" style="float: left;" onclick="location.href='/community/main.do'" />
							<div style="float: right;">
								<c:if test="${to.nick eq sessionScope.nick }">
									<input type="button" value="수정" class="btn btn-transparent" onclick="location.href='/community/modify.do?pseq=<%=pseq %>&type=<%=type %>'" />
									<input type="button" value="삭제" class="btn btn-transparent" onclick="location.href='/community/delete.do?pseq=<%=pseq %>&type=<%=type %>'" />
								</c:if>
							</div>
						</div>
					</div>

					<!--  우측 사이드 part -->
					<div class="col-md-10 offset-md-1 col-lg-3 offset-lg-0">

						<!-- 검색 part -->
						<div class="widget search p-0">
							<div class="input-group">
								<input type="text" class="form-control" id="expire" placeholder="Search">
								<span class="input-group-addon"><i class="fa fa-search"></i></span>
							</div>
						</div>

						<!-- 카테고리 part -->
						<div class="widget category">
							<h5 class="widget-header">카테고리</h5>
							<ul class="category-list">
								<li><a href="/community/camplog.do">캠핑로그 <span class="float-right"></span></a></li>
								<li><a href="/community/camptip.do">캠핑꿀팁 <span class="float-right"></span></a></li>
								<li><a href="/community/campgo.do">캠핑가자 <span class="float-right"></span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<!-- 댓글 Ajax 함수 -->
	<script type="text/javascript">
	
	// 모댓글 작성
	const WriteReply = function( bno ) {
			
		let content = $( '#reply' ).val();
			
		content = content.trim();
			
			if( content == "" ) {
				alert( "내용을 입력해주세요" );
			} else {
				
			$.ajax({
				url: 'camp_write_reply.do',
				type: 'post',
				data: {
					bno : bno,
					content : content
				},
				success: function( rto ) {
					console.log("댓글 작성 성공", rto);
					
					$("#count_reply").text(rto.totalCount);
					
					$("#reply").val("");
					
					// 맞음
					ReplyList( bno );
				},
				error: function() {
					alert('서버에러');
				}
			});
		};
	}
	
	const ReplyList = function(rno) {
		$.ajax({
			url : 'camp_replyList.do',
			type : 'get',
			data: {
				rno : rno
			},
			success : function(data) {
				console.log("댓글리스트 가져오기 성공");
					
				let listHtml ="";
				for(const i in data) {
					let rno = data[i].rno;			// 댓글번호
					let bno = data[i].bno;			// 게시물번호
					let grp = data[i].grp;			// 모댓글no
					let grps = data[i].grps;		// 같은 모댓글 내의 대댓글 순서 (0부터 시작)
					let depth = data[i].depth;		// 모댓글인지 대댓글인지
					let nick = data[i].nick;	
					let content = data[i].content;	
					let wdate = data[i].wdate;		
					
					// 0 : 모댓글, 1 : 답글
					console.log(depth); 
						
					listHtml += "<div class='row reply" + rno + "'>";	// div 1
						
					// 삭제된 댓글일 때
					if(content == "") {	
						listHtml += "<div style='color:silver;'>";	// div 2
						listHtml += "	(삭제된 댓글입니다.)";
						listHtml += "</div>";						// div 2 닫음
					} else {
						// 모댓글일 때
						if( depth == 0 ) {	
							listHtml += "	<div class='col-10'>";				// div 4
							listHtml += "		<h6>";
							listHtml += "			<b>" + nick + "</b>";
							listHtml += "		</h6>";
							listHtml += "		<div>";							// div 4-1
							listHtml += 			content;
							listHtml += "		</div>";						// div 4-1 닫음
							listHtml += "		<div class='rereply_box'>";		// div 4-2
							listHtml += "			<span class='cdate'>" + wdate + "&nbsp;</span>";
								
							// 로그인상태일 때 답글작성 버튼이 나온다.
							if("${nick}" != "") {
								listHtml += "&nbsp;&nbsp;";
								listHtml += "		<span>";
								listHtml += "			<button type='button' class='btn_rereply' data-bs-toggle='collapse' data-bs-target='#re_reply"+ rno +"' aria-expanded='false' aria-controls='collapseExample'>답글쓰기</button>";
								listHtml += "		</span>";
									
							}
							
							// 답글일 때
							}else {	
								// row rereply 줄까말까 고민중
								listHtml += "	<div class='col-10 rereply-content" + rno + "'>";	// div 4-2-3
								listHtml += "		<h6>";
								listHtml += "			<b>" + nick + "</b>";
								listHtml += "		</h6>";
								listHtml += "		<div>";										// div 4-2-3-1
								listHtml += 			content;
								listHtml += "		</div>";									// div 4-2-3-1 닫음
								listHtml += "		<div class='rereply_box'>";					// div 4-2-3-2
								listHtml += "			<span class='cdate'>" + wdate + "&nbsp;</span>";
								
							}
						
							// 현재 로그인 상태이고
							if("${nick}" != ""){
								// 사용자 = 작성자일 때 삭제버튼 출력
								if("${nick}" == nick ){
									listHtml += "|";
									listHtml += "			<span class='rereply_box'>";
									//listHtml += "				<button type='button' no='"+no+"' grpl='"+grpl+"' bno='"+bno+"' grp='"+grp+"' class='btn_rdelete'>삭제</button>";
									listHtml += "				<button type='button' class='btn_rdelete' rno='"+ rno +"' depth='" + depth + "' bno='" + bno + "' grp='" + grp + "' data-bs-toggle='modal' data-bs-target='.bs-rdelete-modal-sm" + rno + "'>삭제</button>";
									listHtml += "			</span>";
									listHtml += "		</div>";									// div 4-2-3-2 닫음
									listHtml += "	</div>";										// div 4-2-3 닫음
									listHtml += "	<br />";
									listHtml += "	<div class='modal bs-rdelete-modal-sm" + rno + "'";//다른 댓글을 클릭해도 항상 가장 빠른 번호의 no가 넘어가지 않도록 no값 입력
									listHtml +=	"		aria-labelledby='mySmallModalLabel' aria-hidden='true'>";
									listHtml += "		<div class='modal-dialog modal-sm'>";
									listHtml += "		<div class='modal-content'>";
									listHtml += "			<br />";
									listHtml += "			<div style='height: 60px;'>&nbsp;&nbsp;정말 삭제하시겠습니까?</div>";
	
									listHtml += "			<div class='modal-footer'>";
									listHtml += "				<button type='button' class='btn btn--silver'";
									listHtml +=	"					data-bs-dismiss='modal'>취소</button>";
									listHtml += "				<button type='button' class='btn btn--blue-2 btn-rdelete-modal' rno='"+ rno +"' depth='"+ depth +"' bno='"+bno+"' grp='"+grp+"'>";
									listHtml +=	"					삭제</button>";
									listHtml += "			</div>";
									listHtml +=	"		</div>";
									listHtml += "		</div>";
									listHtml += "	</div>";
									
									
								}
								
							}
							// div 4-2 닫음
							listHtml += "	</div>";												
							
							listHtml += "	<br />";
							
							// 답글달기 답글입력란
							// div 4-3
							listHtml += "	<div class='collapse' id='re_reply" +rno + "'>";			
							listHtml += "		<table class='table'>";
							listHtml += "			<tr>";
							listHtml += "				<td>";
							listHtml += "					<textarea style='width:86%' rows='3' cols='50' id='rereply" +rno + "' class='re_comment' placeholder='&nbsp;댓글을 입력하세요'></textarea>";
							listHtml += "					<div class='row'>";
							listHtml += "						<div class='col-11'></div>";
							listHtml += "						<div id='btn_comment' class='col-1 btn_rereply'>";
							listHtml += "							<button type='button' class='btn btn--radius-2 btn--blue-2 btn-md write_rereply' rno='" + rno + "' bno='" + bno + "'>답글등록</button>";
							listHtml += "						</div>";
							listHtml += "					</div>";
							listHtml += "				</td>";
							listHtml += "			</tr>";
							listHtml += "		</table>";
							listHtml += "	</div>";
							// 답글입력란 끝
						}
						listHtml += "</div>";
							
					}
					//for 문 끝
					
					// listHtml 출력
					$(".reply-list").html(listHtml);
						
					$('button.btn.btn--radius-2.btn--blue-2.btn-md.write_rereply').unbind('click');
					$('button.btn.btn--radius-2.btn--blue-2.btn-md.write_rereply').on('click', function(){
						console.log( 'rno', $(this).attr('rno') );
						console.log( 'bno', $(this).attr('bno') );
						
						WriteReReply($(this).attr( 'bno' ), $(this).attr( 'rno' ) );
					});
					
					/* $('.btn_rdelete').unbind('click');
					$('.btn_rdelete').on('click', function(){ */
					/* $('.btn.btn--blue-2.btn-rdelete-modal').unbind('click'); */
					$('.btn.btn--blue-2.btn-rdelete-modal').on('click', function(){
						
						// 모댓글 삭제
						if($(this).attr('depth') == 0){
							DeleteReply( $(this).attr('rno'), $(this).attr('bno') );
						
						//대댓글삭제	
						} else {
							DeleteReReply( $(this).attr('rno'), $(this).attr('bno'), $(this).attr('grp') );
							
						}
						//	모달의 삭제버튼을 누르면 레이아웃이 사라지게 함 
						$('.modal-backdrop').remove();
					});
					
					
					// 댓글 작성 후 새로 불러온 댓글 리스트 html에 있는 댓글 입력창에 대한 댓글 작성 이벤트
					$('.write_reply').unbind('click');
					$('.write_reply').on('click', function(){
						let bno = $(this).attr("rno");
						WriteReply(bno);
					});
						
				},
				error : function() {
					alert('서버에러');
				}
			});
		};
		
	
		// 대댓글 작성
		const WriteReReply = function(bno, no) {
			console.log("jsp/bno : " + bno);
			console.log("jsp/rno : " + rno);
			
			console.log($("#rereply" + rno).val());
			
			let content = $("#rereply" + rno).val();
			content = content.trim();
			
			if(content == ""){
				alert("내용을 입력하세요!");
			} else {
				$("#rereply" + rno).val("");
				
				$.ajax({
					url: 'camp_write_rereply.do',
					type: 'get',
					data: {
						rno : rno,
						bno : bno,
						content : content
					},
					success : function(rto){
						console.log("답글 작성 성공");
						$("#count_reply").text(rto.reply);
						ReplyList(bno);
					},
					error: function() {
						alert('서버에러');
					}
				});
			};
		};
		
		// 모댓글 삭제
		const DeleteReply = function(rno, bno){
			// grp가 rno인 댓글이 있는 경우 content에 null을 넣고, 없으면 삭제
			$.ajax({
				url : 'camp_delete_reply.do',
				type : 'get',
				data : {
					rno: rno,
					bno: bno
				},
				success : function(rto) {
					let reply = rto.reply;
					$("#count_reply").text(rto.reply);
					ReplyList(bno);
				},
				error : function() {
					alert('서버에러');
				}
			});
		};
		
		// 답글 삭제
		const DeleteReReply = function(rno, bno, grp){
			
			$.ajax({
				url : 'camp_delete_rereply.do',
				type : 'get',
				data : {
					no: rno,
					bno: bno,
					grp: grp
				},
				success : function(rto) {
					let reply = rto.reply;
					$("#count_reply").text(rto.reply);
					ReplyList(bno);
				},
				error : function() {
					alert('서버에러');
				}
			});
		};
		
		
		$('.write_reply').on('click', function(){
			let bno = $(this).attr("rno");
			
			
			WriteReply(bno);
		});
		
		$(document).ready(function(){
			<%-- ReplyList(<%=rno%>); --%>
		});
		
	</script>
	
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