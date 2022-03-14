<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int flag = (Integer)request.getAttribute( "flag" );
	out.println( " <script type='text/javascript'> " );
	if( flag == 0 ) {	
		out.println( " alert('회원가입에 성공했습니다! 로그인 하십쇼'); " );
		out.println( " location.href='/login/login.do'" );
		session.invalidate();
	} else if( flag == 1 ) {	
		out.println( " alert('회원가입에 실패했습니다!'); " );
		out.println( " history.back(); " );
	} 
	out.println( " </script> " );
%>