<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--  캠핑톡톡 글삭제 MVC Model2 구조 -->

<%
	int flag = (Integer)request.getAttribute( "flag" );

	out.println( "<script type ='text/javascript'>" );
	if( flag == 0 ) {
		out.println( "alert( '글삭제에 성공했습니다.' )" );
		out.println( "location.href='/community/main.do'" );
	} else if ( flag == 1 ) {
		out.println( "alert( '비밀번호가 틀립니다.' )" );
		out.println( "history.back();" );
	}  else if ( flag == 2 ) {
		out.println( "alert( '글삭제에 실패했습니다.' )" );
		out.println( "history.back();" );
	}
	out.println( "</script>" );
	
%>
>>>>>>> origin/ljh
