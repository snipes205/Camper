<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--  캠핑톡톡 글수정 MVC Model2 구조 -->
<%
	String pseq = (String)request.getAttribute( "pseq" );
	int flag = (Integer)request.getAttribute( "flag" );
	
	out.println( "<script type ='text/javascript'>" );
	if( flag == 0 ) {
		out.println( "alert('글수정에 성공했습니다.')" );
		out.println( "location.href='/community/view.do?pseq=" + pseq + "'" );
	} else if ( flag == 1 ) {
		out.println( "alert('비밀번호가 틀립니다.')" );
		out.println( "history.back();" );
	}  else if ( flag == 2 ) {
		out.println( "alert('글수정에 실패했습니다.')" );
		out.println( "history.back();" );
	}
	out.println( "</script>" );
	
%>