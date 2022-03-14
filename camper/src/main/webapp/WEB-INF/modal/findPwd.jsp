<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.addEventListener('load', function() {
	
	$('#findBtn').click(function(){
		const fid = $('#fid').val();
		const email = $('#mail1').val().concat('@', $('#mail2').val()).trim();
		
		if(fid == "" || fid == null) {
			alert('아이디를 입력하세요!');
			$('#fid').focus();
			return false;
		} 
		if(email == "" || email == null) {
			alert('이메일을 입력하세요!');
			$('#mail1').focus();
			return false;
		}
		
		document.findForm.action = '/findPwd.do';
		document.findForm.submit();
	});
		
		$( "#fid" ).focusout( function() {
			const user_id = $('#fid').val();
			if( fid != '' ) {
					$.ajax({
						url: '/idcheck.do',
						type: 'POST',
						data: {
							"user_id": user_id,
						},
						success: function( data ) {
							//controller에서 return값을 int로 넘기면 에러가 난다...
							if( data == "1" ) {
								$( "#checkid" ).text( "" );
							}  else {
								$( "#checkid" ).text( "등록되지 않은 아이디 입니다." );
								$( "#checkid" ).css( "margin", "0 auto" );
								$( "#checkid" ).css( "color", "red" );
								$( "#findBtn" ).attr( "disabled", false );
							}
						},
						error: function() {
							console.log( "ajax 에러" )
						}
					})
			} 
		})
		
		
		$( "#mail2" ).focusout( function() {
			if($('#mail1') != '' && $('#mail2') != ''){
				const fid = $('#fid').val();
				const email = $('#mail1').val().concat('@', $('#mail2').val()).trim();
						$.ajax({
							url: '/findpwdcheck.do',
							type: 'POST',
							data: {
								"fid": fid,
								"email": email			
							},
							success: function( data ) {
								if( data != "2" ) {
									$( "#checkemail" ).text( "등록되지 않은 이메일입니다." );
									$( "#checkemail" ).css( "margin", "0 auto" );
									$( "#checkemail" ).css( "color", "red" );
									$( "#findBtn" ).attr( "disabled", false );
								} else {
									$( "#checkemail" ).text( "" );
								}
							},
							error: function() {
								console.log( "ajax 에러" )
							}
						})
				} else {
					$( "#checkemail" ).text( "" );
					$( "#findBtn" ).attr( "disabled", false );
				}
		})
	
	});
	
</script>
</head>
<body>
	<div class="modal fade" id="findPwd" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header border-bottom-0">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body text-center">
				    <img src="../images/find.png" width="40%" height="40%" class="img-fluid mb-2" alt="">
					<h6 class="py-2">비밀번호 찾기</h6>
					<form name="findForm" method="POST">
						<!-- id -->
						<div class="form-group">
							<input type="text" class="form-control" name="fid" id="fid" placeholder="id">
							<div id="checkid"></div>
						</div>
						<!-- Email -->
						<div class="form-group d-inline-flex">
							<input type="text" class="form-control" name="mail1" id="mail1" placeholder="test">
							<span style="font-size: 23px; text-align: center; padding-top: 5px; margin: 0 5px;">@</span>
							<input type="text" class="form-control" name="mail2" id="mail2" placeholder="example.com">
						</div>
							<div id="checkemail" style="display:block;"></div>
					</form>
				</div>
				<div class="modal-footer border-top-0 m-auto justify-content-lg-between justify-content-center">
					<button class="btn btn-transparent" type="button" name="findBtn" id="findBtn" >비밀번호 찾기</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>