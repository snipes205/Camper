<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>디비디비딥 연결 테스트</title>
</head>
<body>
	<c:forEach var="item" items="${list}" varStatus="idx"> 회원넘버: ${idx.index} <br> 회원 이름 : ${item.name} <br> 회원아이디: ${item.id } <br />
	</c:forEach>
</body>
</html>