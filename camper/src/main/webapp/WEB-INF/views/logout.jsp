<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	out.println( " <script type='text/javascript'> " );
	out.println( "alert('다음에 또 만나요!')" );	
	out.println( "location.href='/login/login.do'" );	
	out.println( " </script> " );
%>