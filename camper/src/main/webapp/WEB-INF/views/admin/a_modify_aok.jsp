<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--  캠핑톡톡 글쓰기 MVC Model2 구조 -->
<%
	String oseq = (String)request.getAttribute( "oseq" );
	int flag = (Integer)request.getAttribute( "flag" );

	out.println( "<script type ='text/javascript'>" );
	if( flag == 0 ) {
		//out.println( "정상 입력" );
		out.println( "alert('수정을 성공했습니다.')" );
		out.println( "location.href='/admin/ask.do?oseq=" + oseq + "'");
	} else if ( flag == 1 ) {
		//out.println( "비정상" );
		out.println( "alert('수정을 실패했습니다.')" );
		out.println( "history.back();" );
	}
	out.println( "</script>" );
%>
