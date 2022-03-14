<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--  캠핑톡톡 글쓰기 MVC Model2 구조 -->
<%
	int flag = (Integer)request.getAttribute( "flag" );

	out.println( "<script type ='text/javascript'>" );
	if( flag == 0 ) {
		out.println( "alert('글쓰기에 성공했습니다.')" );
		out.println( "location.href='/community/camptip.do';" );
	} else if ( flag == 1 ) {
		out.println( "alert('글쓰기에 실패했습니다.')" );
		out.println( "history.back();" );
	}
	out.println( "</script>" );
%>
