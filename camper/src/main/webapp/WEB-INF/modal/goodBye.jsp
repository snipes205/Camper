<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		$('#leaveBtn').click(function(){
			const pwd = $('#pwd').val().trim();
			const msg = $('#msg').val().trim();
			
			if(pwd == '' || pwd == null) {
				alert('비밀번호를 입력해주세요!');
				$('#pwd').focus();
				return false;
			} 
			
			document.leaveForm.action = '/leave.do';
			document.leaveForm.submit();
		})
	}
</script>
</head>
<body>
	<div class="modal fade" id="deleteaccount" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header border-bottom-0">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body text-center">
					<img src="../images/dontleave.jpeg" class="img-fluid mb-2" alt="">
					<h6 class="py-2">정말 떠날건가요?</h6>
					<p>캠린이 두고 가지마요 ㅜㅜ</p>
					<form name="leaveForm" method="POST">
						<textarea name="msg" id="msg" cols="40" rows="4" class="w-100 rounded"></textarea>
					    <input type="password" placeholder="Password" class="border p-3 w-100 my-2" id="pwd" name="pwd">
				    </form>
				</div>
				<div class="modal-footer border-top-0 mb-3 mx-5 justify-content-lg-between justify-content-center">
					<button type="button" class="btn btn-primary" data-dismiss="modal">머무르기</button>
					<button type="button" class="btn btn-danger" name="leaveBtn" id="leaveBtn">진짜떠나기</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>