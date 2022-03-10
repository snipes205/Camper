<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
	function btnClick(){
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
		
		document.findForm.action = '/findpwd.do';
		document.findForm.submit();
	}
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
						</div>
						<!-- Email -->
						<div class="form-group d-inline-flex">
							<input type="text" class="form-control" name="mail1" id="mail1" placeholder="email1">
							<span style="font-size: 23px; text-align: center; padding-top: 5px; margin: 0 5px;">@</span>
							<input type="text" class="form-control" name="mail2" id="mail2" placeholder="email2">
						</div>
					</form>
				</div>
				<div class="modal-footer border-top-0 m-auto justify-content-lg-between justify-content-center">
					<button class="btn btn-transparent" type="button" name="findBtn" id="findBtn" onclick="btnClick();">비밀번호 찾기</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>