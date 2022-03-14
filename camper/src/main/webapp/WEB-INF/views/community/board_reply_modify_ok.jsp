<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--  댓글 글수정 MVC Model2 구조 -->
<%
	int flag = (Integer)request.getAttribute( "flag" );
	
	out.println( "<script type ='text/javascript'>" );
	if( flag == 0 ) {
		out.println( "alert('글수정에 성공했습니다.')" );
		out.println( "location.href='/community/view.do?pseq=" + pseq + "'" );
	} else {
		out.println( "alert('글수정에 실패했습니다.')" );
		out.println( "history.back();" );
	}
	out.println( "</script>" );
	
%>