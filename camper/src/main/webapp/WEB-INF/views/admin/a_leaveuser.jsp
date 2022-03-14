
<%@page import="com.camper.model.LeaveUserTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("utf-8");

ArrayList<LeaveUserTO> boardLists = (ArrayList)request.getAttribute( "boardLists" );

StringBuffer sbHtml = new StringBuffer();

for( LeaveUserTO to : boardLists ) {
	String id = to.getId();
	String msg = to.getMsg();
	String wdate = to.getWdate();

	sbHtml.append( "<tr>" );
	sbHtml.append( "<td height='30'>" );
	sbHtml.append( "</td> " );
	sbHtml.append( "<td>&nbsp;</td> " );
	sbHtml.append( "<td>" + id + "</td> " );
	sbHtml.append( "<td>" + msg + "</td> " );
	sbHtml.append( "<td>" + wdate + "</td> " );
	sbHtml.append( "<td>&nbsp;</td> " );
	sbHtml.append( "</tr> " );
	
}

%>
<!DOCTYPE html>
<html dir="ltr" lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
        content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Ample lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Ample admin lite dashboard bootstrap 5 dashboard template">
    <meta name="description"
        content="Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>CAMPER</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/ample-admin-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../../images/favicon.png">
    <!-- Custom CSS -->
   <link href="../../css_a/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
        data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin5">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header" data-logobg="skin6">
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <a class="navbar-brand" href="../../admin/main.do">
                        <!-- Logo icon -->
                        <b class="logo-icon">
                            <!-- Dark Logo icon camper앞에 로고 추가시 여기사용-->
                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text -->
                        <span class="logo-text">
                            <!-- dark Logo text -->
                            <img src="../../plugins_a/images/camper.png" alt="homepage" />
                        </span>
                    </a>
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <a class="nav-toggler waves-effect waves-light text-dark d-block d-md-none"
                        href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                </div>

                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav ms-auto d-flex align-items-center">
                        <!-- admin -->
                        <li>
                            <a class="profile-pic" href="#">
                                <img src="../../plugins_a/images/users/1.jpg" alt="user-img" width="36" class="img-circle">
                                <span class="text-white font-medium">Admin</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ------------------ 왼쪽 전체 카테고리 ----------------  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar" data-sidebarbg="skin6">
        <!-- Sidebar scroll-->
        <div class="scroll-sidebar">
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav">
        <ul id="sidebarnav">
        <!-- 카테고리 -->
        <li class="sidebar-item pt-2">
        	<a class="sidebar-link waves-effect waves-dark sidebar-link" href="../../admin/main.do" aria-expanded="false">
            <i class="fas fa-chart-area" aria-hidden="true"></i>
            <span class="hide-menu">관리자메인</span>
            </a>
        </li>
        <li class="sidebar-item">
        	<a class="sidebar-link waves-effect waves-dark sidebar-link" href="../../admin/member.do" aria-expanded="false">
            <i class="fas fa-id-badge" aria-hidden="true"></i>
            <span class="hide-menu">회원관리</span>
            </a>
        </li>
        <li class="sidebar-item">
        	<a class="sidebar-link waves-effect waves-dark sidebar-link" href="../../admin/leaveuser.do" aria-expanded="false">
            <i class="fas fa-male" aria-hidden="true"></i>
            <span class="hide-menu">탈퇴회원</span>
            </a>
        </li>
        <li class="sidebar-item">
        	<a class="sidebar-link waves-effect waves-dark sidebar-link" href="../../admin/comm.do" aria-expanded="false">
      		<i class="fa fa-globe" aria-hidden="true"></i>
         	<span class="hide-menu">커뮤니티</span>
         	</a>
       	</li>
        <li class="sidebar-item">
        	<a class="sidebar-link waves-effect waves-dark sidebar-link" href="../../admin/notice.do" aria-expanded="false">
            <i class="fa fa-info" aria-hidden="true"></i>
            <span class="hide-menu">고객지원</span>
            </a>
        </li>
        <li class="sidebar-item">
        	<a class="sidebar-link waves-effect waves-dark sidebar-link" href="../../admin/ask.do" aria-expanded="false">
            <i class="fa fa-comment-dots" aria-hidden="true"></i>
            <span class="hide-menu">1:1문의</span>
            </a>
        </li>
        <li class="sidebar-item">
        	<a class="sidebar-link waves-effect waves-dark sidebar-link" href="../../admin/site.do" aria-expanded="false">
            <i class="fa fa-font" aria-hidden="true"></i>
            <span class="hide-menu">사이트정보</span>
            </a>
        </li>
        <li class="sidebar-item">
        	<a class="sidebar-link waves-effect waves-dark sidebar-link" href="../../admin/admin.do" aria-expanded="false">
            <i class="fas fa-cog" aria-hidden="true"></i>
            <span class="hide-menu">관리자설정</span>
            </a>
        </li>
        <li class="sidebar-item">
        	<a class="sidebar-link waves-effect waves-dark sidebar-link" href="../../admin/terms.do" aria-expanded="false">
            <i class="fas fa-clipboard-list" aria-hidden="true"></i>
            <span class="hide-menu">가입약관</span>
            </a>
        </li>
        </ul>
		</nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper" style="min-height: 250px;">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb bg-white">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">&nbsp;&nbsp;탈퇴회원</h4>
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <div class="d-md-flex">
                            <ol class="breadcrumb ms-auto">
                                <li><a href="#" class="fw-normal">로그아웃</a></li>
                            </ol>
                            <a href="http://localhost:8080/search/theme.do" target="_blank"
                                class="btn btn-danger  d-none d-md-block pull-right ms-3 hidden-xs hidden-sm waves-effect waves-light text-white">홈페이지
                                바로가기
                            </a>
                        </div>
                    </div>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->               
               	<div class="row"> <div class="col-md-12"><div class="white-box">
				<table width="100%" border="0" cellspacing="1" cellpadding="3" class="t_style">
               
				<!-- 게시판 시작 -->
                <table width="100%" border="0" cellpadding="0" cellspacing="0" style="border-top:1px solid #333;">
                	<tbody>
                    	<tr style="background:#f7f7f7;">
                        	<td width="1%">
								<th width="2%" height="38">&nbsp;</th>
                                <th width="4%">아이디</th>
                                <th width="20%">탈퇴사유</th>
                                <th width="4%">탈퇴일</th>
                                <th width="3%">&nbsp;</th>                  
                        	</td>
                        </tr>
						<tr>
                        	<td colspan="10" height="1" bgcolor="#d7d7d7"></td>
                        </tr>
						<tr style="">
							<form style="margin: 0;">
							<input type="hidden" name="idx" value="">		
								<%= sbHtml.toString() %>
							</form>
						</tr>
							<td colspan="10" height="1" bgcolor="#d7d7d7"></td>
                </table>
                
                <br><br><Br>
                <!-- 검색 -->
				<div class="Search">
					<table width="0%" border="0" cellpadding="0" cellspacing="0" align="center">
						<form name="sfrm" action=" "></form>
						<input type="hidden" name="" value=" ">
						<input type="hidden" name="" value="">
						<tbody>
							<tr>
								<td><select name="">
									<option value="title">제 목</option>
									<option value="content">내 용</option>
									<option value="nick">작성자</option>
									</select> 
								</td>
								<td><input name="searchkey" type="text" value=""></td>
								<td>
									<button type="submit">
										<i class="fa fa-search" aria-hidden="true"></i>
									</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
                                                           
    <!-- ============================================================== -->
    <script src="../../plugins_a/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="../../bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../../js/app-style-switcher.js"></script>
    <!--Wave Effects -->
    <script src="../../js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="../../js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="../../js/custom.js"></script>
</body>

</html>