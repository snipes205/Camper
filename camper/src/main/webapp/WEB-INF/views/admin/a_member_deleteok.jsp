<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int flag = (Integer)request.getAttribute( "flag" );

	out.println( "<script type ='text/javascript'>" );
	if( flag == 0 ) {
		out.println( "alert( '회원삭제를 성공했습니다.' )" );
		out.println( "location.href='/admin/member.do'" );
	} else if ( flag == 1 ) {
		out.println( "alert( '회원삭제를 실패했습니다.' )" );
		out.println( "history.back();" );
	} 
	out.println( "</script>" );
%>
