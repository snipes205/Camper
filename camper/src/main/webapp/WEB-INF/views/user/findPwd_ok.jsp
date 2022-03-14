<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int flag = (Integer)request.getAttribute( "flag" );
	out.println( " <script type='text/javascript'> " );
	if( flag == 1 ) {	
		out.println( " alert('임시비밀번호를 메일로 발송했습니다.'); " );
		out.println( " location.href='/login/login.do'" );
	} else {	
		out.println( " alert('메일 발송에 실패했습니다!'); " );
		out.println( " history.back(); " );
	} 
	out.println( " </script> " );
%>