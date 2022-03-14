<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int flag = (Integer)request.getAttribute( "result" );
	out.println( " <script type='text/javascript'> " );
	if( flag == 2 ) {	
		out.println( " alert('현재 비밀번호가 틀렸습니다!'); " );
		out.println( " history.back(); " );
	} else if( flag == 1) {	
		out.println( " alert('비밀 번호가 변경되었습니다! 다시 로그인 해주세요'); " );
		out.println( " location.href='/login/login.do'" );
		session.invalidate();
	} else {
		out.println( " alert('비밀번호 변경에 실패했습니다'); " );
		out.println( " history.back(); " );
	}
	out.println( " </script> " );
%>