<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

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
				    <img src="../images/dontleave.jpeg" class="img-fluid mb-2" alt="">
					<h6 class="py-2">정말 떠날건가요?</h6>
					<p>캠린이 두고 가지마요 ㅜㅜ</p>
					<form name="" method="">
						<!-- id -->
						<div class="form-group">
							<label for="form-id">아이디</label> <input type="text" class="form-control" id="form-id" readonly value="${sessionScope.id}">
						</div>
						<!-- Email -->
						<label for="form-mail">E-mail</label>
						<div class="form-group d-inline-flex">
							<input type="text" class="form-control" id="form-mail1" value="email1">
							<span style="font-size: 23px; text-align: center; padding-top: 5px; margin: 0 5px;">@</span>
							<input type="text" class="form-control" id="form-mail2" value="email2">
						</div>
					</form>
				</div>
				<div class="modal-footer border-top-0 m-auto justify-content-lg-between justify-content-center">
					<button class="btn btn-transparent">비밀번호 찾기</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>