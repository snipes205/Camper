<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int flag = (Integer)request.getAttribute( "flag" );
	out.println( " <script type='text/javascript'> " );
	if( flag == 0 ) {	
		out.println( " alert('잘가요!'); " );
		out.println( " location.href='/login/login.do'" );
		session.invalidate();
	} else if( flag == 1 ) {	
		// 비밀번호 일치하지 않음
		out.println( " alert('비밀번호가 틀렸습니다!'); " );
		out.println( " history.back(); " );
	} 
	out.println( " </script> " );
%>