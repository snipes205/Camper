<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD
	pageEncoding="UTF-8"%>
	
	  
<%@ page import="com.camper.model.PtableTO"%>
<%@ page import="java.util.ArrayList"%>

<%
	request.setCharacterEncoding("utf-8");

	ArrayList<PtableTO> boardLists = (ArrayList)request.getAttribute( "boardLists" );
	
	StringBuffer sbHtml = new StringBuffer();

	for( PtableTO to : boardLists ) {
		String pseq = to.getPseq();
		String title = to.getTitle();
		String nick = to.getNick();
		String wdate = to.getWdate();
		
		
		sbHtml.append( " <tr style=''> " );
		sbHtml.append( " <td height='30'> " );
		sbHtml.append( " <form style='margin: 0;'> " );
		sbHtml.append( "<input type='hidden' name='idx' value='5279'>" ); 
		sbHtml.append( "<input type='checkbox' name='select_checkbox'>" );
		sbHtml.append( "</form>" );
		sbHtml.append( "</td>" );
		sbHtml.append( "<td>&nbsp;</td>" );
		sbHtml.append( "<td>&nbsp;&nbsp;&nbsp;" + pseq + "</td>" );
		sbHtml.append( "<td align='left' style='padding-left: 10px; word-break: break-all;'>" );
		sbHtml.append(  "<a href='view_p.do?pseq=" + pseq + "'>" + title + "</a>"  );
		sbHtml.append( "</td>" );
		sbHtml.append( "<td>" + nick + "</td>" );
		sbHtml.append( "<td>" + wdate + "</td>" );
		sbHtml.append( "<td>&nbsp;&nbsp;&nbsp;&nbsp;2</td>" );
		sbHtml.append( "<td>&nbsp;</td>" );
		sbHtml.append( "</tr>" );
	
	

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
<link rel="canonical"
	href="https://www.wrappixel.com/templates/ample-admin-lite/" />
<!-- Favicon icon -->
<link rel="icon" type="../image/png" sizes="16x16"
	href="../iamges/favicon.png">
<!-- Custom CSS -->
<link href="../css_a/style.min.css" rel="stylesheet">
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
	<div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5"
		data-sidebartype="full" data-sidebar-position="absolute"
		data-header-position="absolute" data-boxed-layout="full">
		<!-- ============================================================== -->
		<!-- Topbar header - style you can find in pages.scss -->
		<!-- ============================================================== -->
		<header class="topbar" data-navbarbg="skin5">
			<nav class="navbar top-navbar navbar-expand-md navbar-dark">
				<div class="navbar-header" data-logobg="skin6">
					<!-- ============================================================== -->
					<!-- Logo -->
					<!-- ============================================================== -->
					<a class="navbar-brand" href="../admin/main.do"> <!-- Logo icon -->
						<b class="logo-icon"> <!-- Dark Logo icon camper앞에 로고 추가시 여기사용-->
					</b> <!--End Logo icon --> <!-- Logo text --> <span class="logo-text">
							<!-- dark Logo text --> <img src="../plugins_a/images/camper.png"
							alt="homepage" />
					</span>
					</a>
					<!-- ============================================================== -->
					<!-- End Logo -->
					<!-- ============================================================== -->
					<!-- ============================================================== -->
					<!-- toggle and nav items -->
					<!-- ============================================================== -->
					<a
						class="nav-toggler waves-effect waves-light text-dark d-block d-md-none"
						href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
				</div>
				<!-- ============================================================== -->
				<!-- End Logo -->
				<!-- ============================================================== -->
				<div class="navbar-collapse collapse" id="navbarSupportedContent"
					data-navbarbg="skin5">

					<!-- ============================================================== -->
					<!-- Right side toggle and nav items -->
					<!-- ============================================================== -->
					<ul class="navbar-nav ms-auto d-flex align-items-center">

						<!-- ============================================================== -->
						<!-- Search -->
						<!-- ============================================================== -->
						<li class=" in">
							<form role="search" class="app-search d-none d-md-block me-3">
								<input type="text" placeholder="Search..."
									class="form-control mt-0"> <a href="" class="active">
									<i class="fa fa-search"></i>
								</a>
							</form>
						</li>
						<!-- ============================================================== -->
						<!-- User profile and search -->
						<!-- ============================================================== -->
						<li><a class="profile-pic" href="#"> <img
								src="../plugins_a/images/users/varun.jpg" alt="user-img"
								width="36" class="img-circle"><span
								class="text-white font-medium">Admin</span></a></li>
						<!-- ============================================================== -->
						<!-- User profile and search -->
						<!-- ============================================================== -->
					</ul>
				</div>
			</nav>
		</header>
		<!-- ============================================================== -->
		<!-- End Topbar header -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<aside class="left-sidebar" data-sidebarbg="skin6">
			<!-- Sidebar scroll-->
			<div class="scroll-sidebar">
				<!-- Sidebar navigation-->
				<nav class="sidebar-nav">
					<ul id="sidebarnav">
						<!-- User Profile-->
						<li class="sidebar-item pt-2"><a
							class="sidebar-link waves-effect waves-dark sidebar-link"
							href="../admin/main.do" aria-expanded="false"> <i
								class="fas fa-chart-area" aria-hidden="true"></i> <span
								class="hide-menu">관리자메인</span>
						</a></li>
						<li class="sidebar-item"><a
							class="sidebar-link waves-effect waves-dark sidebar-link"
							href="../admin/member.do" aria-expanded="false"> <i
								class="fas fa-id-badge" aria-hidden="true"></i> <span
								class="hide-menu">회원관리</span>
						</a></li>
						<li class="sidebar-item"><a
							class="sidebar-link waves-effect waves-dark sidebar-link"
							href="../admin/comm.do" aria-expanded="false"> <i
								class="fa fa-globe" aria-hidden="true"></i> <span
								class="hide-menu">커뮤니티</span>
						</a></li>
						<li class="sidebar-item"><a
							class="sidebar-link waves-effect waves-dark sidebar-link"
							href="../admin/notice.do" aria-expanded="false"> <i
								class="fa fa-info" aria-hidden="true"></i> <span
								class="hide-menu">고객지원</span>
						</a></li>
						<li class="sidebar-item"><a
							class="sidebar-link waves-effect waves-dark sidebar-link"
							href="../admin/ask.do" aria-expanded="false"> <i
								class="fa fa-comment-dots" aria-hidden="true"></i> <span
								class="hide-menu">1:1문의</span>
						</a></li>
						<li class="sidebar-item"><a
							class="sidebar-link waves-effect waves-dark sidebar-link"
							href="../admin/site.do" aria-expanded="false"> <i
								class="fa fa-font" aria-hidden="true"></i> <span
								class="hide-menu">사이트정보</span>
						</a></li>
						<li class="sidebar-item">
						<a class="sidebar-link waves-effect waves-dark sidebar-link"
							href="../admin/admin.do" aria-expanded="false"> 
							<i class="fas fa-cog" aria-hidden="true"></i> 
							<span class="hide-menu">관리자설정</span>
						</a>
						</li>
						<li class="sidebar-item">
						<a class="sidebar-link waves-effect waves-dark sidebar-link"
							href="../admin/terms.do" aria-expanded="false"> 
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
						<h4 class="page-title">커뮤니티관리</h4>
					</div>
					<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
						<div class="d-md-flex">
							<ol class="breadcrumb ms-auto">
								<li><a href="#" class="fw-normal">로그아웃</a></li>
							</ol>
							<a href="https://www.wrappixel.com/templates/ampleadmin/"
								target="_blank"
								class="btn btn-danger  d-none d-md-block pull-right ms-3 hidden-xs hidden-sm waves-effect waves-light text-white">홈페이지
								바로가기 </a>
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
				<div class="row">
					<div class="col-md-12">
						<div class="white-box">
							<body marginwidth="0" marginheight="0">
								<table width="100%" border="0" cellpadding="0" cellspacing="0"
									class="top15">
									<tbody>
										<tr>
											<td style="padding: 0px 10px 10px 10px"><script
													language="JavaScript" src="/adm/js/lib.js"></script>
												<link href="/adm/bbs/skin/bbsBasic/style.css"
													rel="stylesheet" type="text/css"> <!-- 카테고리 -->
												<div class="category_pd">
													<a
														href="/adm/manage/bbs/bbs.php?ptype=list&amp;code=bbsBasic"><b>전체</b></a>
													<font style="color: #ddd;"> | </font> <a
														href="/adm/manage/bbs/bbs.php?ptype=list&amp;code=bbsBasic&amp;category=65"><b>캠핑로그</b></a>
													<font style="color: #ddd;"> | </font> <a
														href="/adm/manage/bbs/bbs.php?ptype=list&amp;code=bbsBasic&amp;category=66"><b>캠핑꿀팁</b></a>
													<font style="color: #ddd;"> | </font> <a
														href="/adm/manage/bbs/bbs.php?ptype=list&amp;code=bbsBasic&amp;category=67"><b>캠핑가자</b></a>
												</div> <!-- 카테고리 끝--> <!-- 게시물 시작 -->
												<table width="100%" border="0" cellpadding="0"
													cellspacing="0" style="border-top: 1px solid #333;">
													<tbody>
														<tr style="background: #fdfcfc;">
															<td width="1%">
																<form style="margin: 0;">
																	<input type="checkbox" name="select_tmp"
																		onclick="selectReverseBbs(this.form)">
																</form>
															</td>
															<th width="3%">&nbsp;</th>
															<th width="8%" height="38">번호</th>
															<th>제목</th>
															<th width="15%">작성자</th>
															<th width="15%">작성일</th>
															<th width="8%">좋아요</th>
															<th width="3%">&nbsp;</th>
														</tr>
														<tr>
															<td colspan="10" height="1" bgcolor="#d7d7d7"></td>
														</tr>



								<tr style="">
                                <form style="margin:0;">
                                <input type="hidden" name="idx" value="">
                                <%= sbHtml.toString() %>
                                </form>
                                </tr>
                                
                               			

														<tr>
															<td colspan="10" height="1" bgcolor="#d7d7d7"></td>
														</tr>
													</tbody>
												</table> <!-- 게시물 끝 --> <!-- 페이지 번호 -->
												<table width="100%" border="0" cellpadding="0"
													cellspacing="0">
													<tbody>
														<tr>
															<td height="50" align="center" class="Paging_Num">
																<table width="100%" border="0" cellspacing="0"
																	cellpadding="0">
																	<tbody>
																		<tr>
																			<td align="center">
																				<table border="0" cellspacing="0" cellpadding="0">
																					<tbody>
																						<tr>
																							<td width="22" height="50"><a
																								href="?ptype=&amp;page=1&amp;code=bbsBasic">
																									<i class="fas fa-chevron-left"
																									aria-hidden="true" align="absmiddle"
																									border="0'"></i>
																							</a></td>

																							<td align="center">&nbsp; <b>1</b> &nbsp;
																							</td>
																							<td width="22" align="right"><a
																								href="?ptype=&amp;page=1&amp;code=bbsBasic">
																									<i class="fas fa-chevron-right"
																									aria-hidden="true" align="absmiddle" border="0"></i>
																							</a></td>
																						</tr>
																					</tbody>
																				</table>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</td>
														</tr>
													</tbody>
												</table> <!-- 페이지 번호끝 --> <!-- 검색 -->
												<div class="AWbbs_f_search">
													<table width="0%" border="0" cellpadding="0"
														cellspacing="0" align="center">
														<form name="sfrm" action="/adm/manage/bbs/bbs.php"></form>
														<input type="hidden" name="code" value="bbsBasic">
														<input type="hidden" name="category" value="">
														<tbody>
															<tr>
																<td><select name="searchopt">
																		<option value="">--검색--</option>
																		<option value="subject">제 목</option>
																		<option value="content">내 용</option>
																		<option value="subcon">제목 + 내용</option>
																		<option value="name">작성자</option>
																		<option value="memid">아이디</option>
																</select> <script language="javascript">
                                            
                                            searchopt = document.sfrm.searchopt;
                                            for(ii=0; ii<searchopt.length; ii++){
                                            if(searchopt.options[ii].value == "")
                                            searchopt.options[ii].selected = true;
                                            }
                                            
                                            </script></td>
																<td><input name="searchkey" type="text" value=""></td>
																<td>
																	<button type="submit">
																		<i class="fa fa-search" aria-hidden="true"></i>
																	</button>
																</td>
															</tr>
														</tbody>
													</table>
												</div> <!-- 검색 끝 --> <!-- 버튼 -->
												<div style="margin: 10px 0 0;">
													<table width="100%" border="0" cellpadding="0"
														cellspacing="0">
														<tbody>
															<tr>
																<td width="20%">
																	<div class="col-sm-12">
																		<input type="button" value="삭제"
																			class="btn_write btn_txt01" style="cursor: pointer;"
																			onclick="location.href='write.html'" />
																	</div>
																</td>

																<table width="100%" border="0" cellpadding="0"
																	cellspacing="0">
																	<tbody>
																		<tr>
																			<td align="right">
																			<td width="7%">
																				<div class="align_right">
																					<input type="button" value="쓰기"
																						class="btn_write btn_txt01"
																						style="cursor: pointer;"
																						onclick="location.href='write-c.html'" />
																				</div>
																			</td>
																		</tr>
																	</tbody>
																</table>
																</div>
																<!-- 버튼 끝 -->
							</body>
						</div>
					</div>
				</div>
				<!-- ============================================================== -->
				<!-- End PAge Content -->
				<!-- ============================================================== -->
				<!-- ============================================================== -->
				<!-- Right sidebar -->
				<!-- ============================================================== -->
				<!-- .right-sidebar -->
				<!-- ============================================================== -->
				<!-- End Right sidebar -->
				<!-- ============================================================== -->
			</div>
			<!-- ============================================================== -->
			<!-- End Container fluid  -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- footer -->
			<!-- ============================================================== -->
			<footer class="footer text-center">
				2021 © Ample Admin brought to you by <a
					href="https://www.wrappixel.com/">wrappixel.com</a>
			</footer>
			<!-- ============================================================== -->
			<!-- End footer -->
			<!-- ============================================================== -->
		</div>
		<!-- ============================================================== -->
		<!-- End Page wrapper  -->
		<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- End Wrapper -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- All Jquery -->
	<!-- ============================================================== -->
	<script src="../plugins_a/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script src="../bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="../js/app-style-switcher.js"></script>
	<!--Wave Effects -->
	<script src="../js/waves.js"></script>
	<!--Menu sidebar -->
	<script src="../js/sidebarmenu.js"></script>
	<!--Custom JavaScript -->
	<script src="../js/custom.js"></script>
=======
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Ample lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Ample admin lite dashboard bootstrap 5 dashboard template">
    <meta name="description" content="Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>CAMPER</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/ample-admin-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="../image/png" sizes="16x16" href="../iamges/favicon.png">
    <!-- Custom CSS -->
   <link href="../css_a/style.min.css" rel="stylesheet">
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
                    <a class="navbar-brand" href="../admin/main.do">
                        <!-- Logo icon -->
                        <b class="logo-icon">
                            <!-- Dark Logo icon camper앞에 로고 추가시 여기사용-->
                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text -->
                        <span class="logo-text">
                            <!-- dark Logo text -->
                            <img src="../plugins_a/images/camper.png" alt="homepage" />
                        </span>
                    </a>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <a class="nav-toggler waves-effect waves-light text-dark d-block d-md-none"
                        href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">

                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav ms-auto d-flex align-items-center">

                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->
                        <li class=" in">
                            <form role="search" class="app-search d-none d-md-block me-3">
                                <input type="text" placeholder="Search..." class="form-control mt-0">
                                <a href="" class="active">
                                    <i class="fa fa-search"></i>
                                </a>
                            </form>
                        </li>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <li>
                            <a class="profile-pic" href="#">
                                <img src="../plugins_a/images/users/varun.jpg" alt="user-img" width="36"
                                    class="img-circle"><span class="text-white font-medium">Admin</span></a>
                        </li>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar" data-sidebarbg="skin6">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <!-- User Profile-->
                        <li class="sidebar-item pt-2">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="../admin/main.do" aria-expanded="false">
                                <i class="fas fa-chart-area" aria-hidden="true"></i>
                                <span class="hide-menu">관리자메인</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="../admin/member.do" aria-expanded="false">
                                <i class="fas fa-id-badge" aria-hidden="true"></i>
                                <span class="hide-menu">회원관리</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="../admin/comm.do" aria-expanded="false">
                                <i class="fa fa-globe" aria-hidden="true"></i>
                                <span class="hide-menu">커뮤니티</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="../admin/notice.do" aria-expanded="false">
                                <i class="fa fa-info" aria-hidden="true"></i>
                                <span class="hide-menu">고객지원</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="../admin/ask.do" aria-expanded="false">
                                <i class="fa fa-comment-dots" aria-hidden="true"></i>
                                <span class="hide-menu">1:1문의</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="../admin/site.do" aria-expanded="false">
                                <i class="fa fa-font" aria-hidden="true"></i>
                                <span class="hide-menu">사이트정보</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="../admin/admin.do" aria-expanded="false">
                                <i class="fas fa-cog" aria-hidden="true"></i>
                                <span class="hide-menu">관리자설정</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="../admin/terms.do" aria-expanded="false">
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
                        <h4 class="page-title">커뮤니티관리</h4>
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <div class="d-md-flex">
                            <ol class="breadcrumb ms-auto">
                                <li><a href="#" class="fw-normal">로그아웃</a></li>
                            </ol>
                            <a href="https://www.wrappixel.com/templates/ampleadmin/" target="_blank"
                                class="btn btn-danger  d-none d-md-block pull-right ms-3 hidden-xs hidden-sm waves-effect waves-light text-white">홈페이지 바로가기
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
                <div class="row">
                    <div class="col-md-12">
                        <div class="white-box">
                            <body marginwidth="0" marginheight="0">
                                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="top15">
                                    <tbody>
                                        <tr>
                                        <td style="padding:0px 10px 10px 10px">
                                            <script language="JavaScript" src="/adm/js/lib.js"></script>
                                            <link href="/adm/bbs/skin/bbsBasic/style.css" rel="stylesheet" type="text/css">
                                            
                        <!-- 카테고리 -->
                            <div class="category_pd">
                                <a href="/adm/manage/bbs/bbs.php?ptype=list&amp;code=bbsBasic"><b>전체</b></a>
                                <font style="color:#ddd;"> | </font>
                                <a href="/adm/manage/bbs/bbs.php?ptype=list&amp;code=bbsBasic&amp;category=65"><b>캠핑로그</b></a>
                                <font style="color:#ddd;"> | </font>
                            <a href="/adm/manage/bbs/bbs.php?ptype=list&amp;code=bbsBasic&amp;category=66"><b>캠핑꿀팁</b></a>
                            <font style="color:#ddd;"> | </font>
                            <a href="/adm/manage/bbs/bbs.php?ptype=list&amp;code=bbsBasic&amp;category=67"><b>캠핑가자</b></a>
                            </div>
                        <!-- 카테고리 끝-->
                            
                            
                            <!-- 게시물 시작 -->
                            <table width="100%" border="0" cellpadding="0" cellspacing="0" style="border-top:1px solid #333;">
                                <tbody>
                                <tr style="background:#fdfcfc;">
                                    <td width="1%">
                                        <form style="margin:0;">
                                            <input type="checkbox" name="select_tmp" onclick="selectReverseBbs(this.form)">
                                        </form>
                                    </td>
                                    <th width="3%">&nbsp;</th>
                                    <th width="8%" height="38">번호</th>
                                    <th>제목</th>
                                    <th width="15%">작성자</th>
                                    <th width="15%">작성일</th>
                                    <th width="8%">좋아요</th>
                                    <th width="3%">&nbsp;</th>
                                </tr>  
                                <tr>
                                    <td colspan="10" height="1" bgcolor="#d7d7d7"></td>
                                </tr>  

                                <tr style="">
                                    <td height="30">
                                        <form style="margin:0;"><input type="hidden" name="idx" value="5279">
                                            <input type="checkbox" name="select_checkbox">
                                        </form>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;&nbsp;&nbsp;5</td>
                                    <td align="left" style="padding-left:10px; word-break:break-all;">
                                        [캠핑로그] <a href="./view.do">포천캠핑다녀왔어요</a>
                                    </td>
                                    <td >캠짱</td>
                                    <td >2022/01/11</td>
                                    <td >&nbsp;&nbsp;&nbsp;&nbsp;2</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr style="">
                                    <td height="30">
                                        <form style="margin:0;"><input type="hidden" name="idx" value="5279">
                                            <input type="checkbox" name="select_checkbox">
                                        </form>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;&nbsp;&nbsp;4</td>
                                    <td align="left" style="padding-left:10px; word-break:break-all;">
                                        [캠핑로그] <a href="./view.do">가평 감성가득 캠핑장</a>             
                                    </td>
                                    <td >캠핑좋아</td>
                                    <td >2022/01/10</td>
                                    <td >&nbsp;&nbsp;&nbsp;&nbsp;1</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr style="">
                                    <td height="30">
                                        <form style="margin:0;"><input type="hidden" name="idx" value="5279">
                                            <input type="checkbox" name="select_checkbox">
                                        </form>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;&nbsp;&nbsp;3</td>
                                    <td align="left" style="padding-left:10px; word-break:break-all;">
                                        [캠핑가자] <a href="./view.do">캠핑 같이 가실분!</a>
                                    </td>
                                    <td >룰루랄라</td>
                                    <td >2022/01/08</td>
                                    <td >&nbsp;&nbsp;&nbsp;&nbsp;3</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr style="">
                                    <td height="30">
                                        <form style="margin:0;"><input type="hidden" name="idx" value="5279">
                                            <input type="checkbox" name="select_checkbox">
                                        </form>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;&nbsp;&nbsp;2</td>
                                    <td align="left" style="padding-left:10px; word-break:break-all;">
                                        [캠핑꿀띱] <a href="./view.do">캠핑 초보 꿀팁공유해용</a>
                                    </td>
                                    <td >캠린이</td>
                                    <td >2022/01/05</td>
                                    <td >&nbsp;&nbsp;&nbsp;&nbsp;1</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr style="">
                                    <td height="30">
                                        <form style="margin:0;"><input type="hidden" name="idx" value="5279">
                                            <input type="checkbox" name="select_checkbox">
                                        </form>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;&nbsp;&nbsp;1</td>
                                    <td align="left" style="padding-left:10px; word-break:break-all;">
                                        [캠핑꿀팁] <a href="./view.do">캠핑용품 후기</a>
                                    </td>
                                    <td >나는야</td>
                                    <td >2022/01/02</td>
                                    <td >&nbsp;&nbsp;&nbsp;&nbsp;5</td>
                                    <td>&nbsp;</td>
                                </tr>
                                
                                <tr>
                                    <td colspan="10" height="1" bgcolor="#d7d7d7"></td>
                                </tr>
                            </tbody>
                        </table>
                            <!-- 게시물 끝 -->   
                              
                            <!-- 페이지 번호 -->
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tbody>
                                    <tr>
                                        <td height="50" align="center" class="Paging_Num">
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tbody>
                                                    <tr>
                                                        <td align="center">
                                                            <table border="0" cellspacing="0" cellpadding="0">
                                                                <tbody>
                                                                    <tr>
                                                                        <td width="22" height="50">
                                                                            <a href="?ptype=&amp;page=1&amp;code=bbsBasic">
                                                                                <i class="fas fa-chevron-left" aria-hidden="true" align="absmiddle" border="0'"></i>
                                                                            </a>
                                                                        </td>

                                                                        <td align="center">
                                                                            &nbsp; <b>1</b>
                                                                            &nbsp; </td>
                                                                        <td width="22" align="right">
                                                                            <a href="?ptype=&amp;page=1&amp;code=bbsBasic">
                                                                            <i class="fas fa-chevron-right" aria-hidden="true" align="absmiddle" border="0"></i>
                                                                            </a>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>                           
                            <!-- 페이지 번호끝 -->
                            
                            <!-- 검색 -->
                            <div class="AWbbs_f_search">
                                <table width="0%" border="0" cellpadding="0" cellspacing="0" align="center">
                                    <form name="sfrm" action="/adm/manage/bbs/bbs.php"></form>
                                    <input type="hidden" name="code" value="bbsBasic">
                                    <input type="hidden" name="category" value="">
                                    <tbody><tr>
                                        <td>
                                            <select name="searchopt">
                                            <option value="">--검색--</option>
                                            <option value="subject">제 목</option>
                                            <option value="content">내 용</option>
                                            <option value="subcon">제목 + 내용</option>
                                            <option value="name">작성자</option>
                                            <option value="memid">아이디</option>
                                            </select>	
                                            <script language="javascript">
                                            
                                            searchopt = document.sfrm.searchopt;
                                            for(ii=0; ii<searchopt.length; ii++){
                                            if(searchopt.options[ii].value == "")
                                            searchopt.options[ii].selected = true;
                                            }
                                            
                                            </script>
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
                            <!-- 검색 끝 -->                                                 
                            
                            <!-- 버튼 -->
                            <div style="margin:10px 0 0;">
                                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td width="20%">
                                                <div class="col-sm-12">
                                                    <input type="button" value="삭제" class="btn_write btn_txt01" style="cursor: pointer;" onclick="location.href='write.html'" />
                                                </div>
                                            </td>
                                            
                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                <tbody>
                                                    <tr>
                                            <td align="right">
                                            <td width="7%">
                                                <div class="align_right">
                                                    <input type="button" value="쓰기" class="btn_write btn_txt01" style="cursor: pointer;" onclick="location.href='write-c.html'" />
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!-- 버튼 끝 -->
                            
                            
                            </body>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center"> 2021 © Ample Admin brought to you by <a
                    href="https://www.wrappixel.com/">wrappixel.com</a>
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="../plugins_a/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="../bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../js/app-style-switcher.js"></script>
    <!--Wave Effects -->
    <script src="../js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="../js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="../js/custom.js"></script>

>>>>>>> refs/heads/main
</html>