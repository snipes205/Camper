<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

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
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <li>
                            <a class="profile-pic" href="#">
                                <img src="../../plugins_a/images/users/1.jpg" alt="user-img" width="36" class="img-circle">
                                <span class="text-white font-medium">Admin</span>
                            </a>
                        </li>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
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
            <h4 class="page-title">사이트정보</h4>
          </div>
          <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
            <div class="d-md-flex">
                <ol class="breadcrumb ms-auto">
                    <li><a href="#" class="fw-normal">로그아웃</a></li>
                </ol>
                <a href="http://localhost:8080/search/theme.do" target="_blank"
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

              <table width="100%" border="0" cellspacing="0" cellpadding="2">
                <tr>
                  <td class="tit_sub"><i class="fa fa-genderless" aria-hidden="true"></i><b>기본정보</b></td>
                </tr>
              </table>
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <form name="frm" action="site_save.php" method="post" onSubmit="return inputCheck(this);">
                  <input type="hidden" name="tmp">
                  <input type="hidden" name="mode" value="site_info">
                  <tr>
                    <td>
                      <table width="100%" border="0" cellspacing="1" cellpadding="3" class="t_style">
                        <tr>
                          <td align="left" class="t_name" >사이트명</td>
                          <td class="t_value" colspan="3"><input name="site_name" value="CAMPER" type="text"
                              class="input"  size="28"></td>
                        </tr>
                        <tr>
                          <td align="left" class="t_name">사이트 URL</td>
                          <td class="t_value" colspan="3"><input name="site_url" type="text" value="http://camper.com"
                              size="28" class="input"></td>
                        </tr>
                        <tr>
                          <td align="left" class="t_name">관리자 이메일</td>
                          <td class="t_value" colspan="3"><input name="site_email" type="text" value="camper@naver.com"
                              size="28" class="input"></td>
                        </tr>
                        <tr>
                          <td width="15%" align="left" class="t_name">관리자 전화번호</td>
                          <td width="35%" class="t_value"><input name="site_tel" type="text" value="02-1234-5678"
                              size="28" class="input"></td>
                          <td width="15%" align="left" class="t_name">
                          <td width="35%" class="t_value">
                        </tr>
                      </table>
                    </td>
                  </tr>
              </table>
             <br><br>
              <table width="100%" border="0" cellspacing="0" cellpadding="2">
                <tr>
                  <td class="tit_sub"><i class="fa fa-genderless" aria-hidden="true"></i><b>메타테그 관리</b></td>
                </tr>
              </table>
              <table width="100%" border="0" cellspacing="1" cellpadding="5" class="t_style">
                <tr>
                  <td width="15%" class="t_name">사이트 Title</td>
                  <td width="85%" class="t_value"><input name="site_title" value="CAMPER :: 캠핑족들을 위한 커뮤니티" size="90" type="text"
                      class="input"></td>
                </tr>
                <tr>
                  <td class="t_name">검색키워드</td>
                  <td class="t_value"><input name="site_keyword" type="text"
                      value="캠핑, 캠핑커뮤니티, 캠핑족, 캠핑정보, 캠핑꿀팁, 캠핑장정보" size="90" class="input"></td>
                </tr>
                <tr>
                  <td class="t_name">소개글</td>
                  <td class="t_value"><input name="site_intro" type="text"
                      value="캠핑족들을 위한 커뮤니티" size="90" class="input"></td>
                </tr>
              </table>
              
              <br><br>
              <table width="100%" border="0" cellspacing="0" cellpadding="2">
                <tr>
                  <td class="tit_sub"><i class="fa fa-genderless" aria-hidden="true"></i><b>사업자정보</b></td>
                </tr>
              </table>

              <table width="100%" border="0" cellspacing="1" cellpadding="3" class="t_style">
                <tr>
                  <td align="left" class="t_name">사업자등록번호</td>
                  <td class="t_value" colspan="3"><input name="com_num" type="text" value="202-33-15151" class="input">
                  </td>
                </tr>
                <tr>
                  <td width="120" align="left" class="t_name">상호</td>
                  <td class="t_value"><input name="com_name" type="text" value="CAMPER" class="input"></td>
                  <td width="120" align="left" class="t_name">대표자명</td>
                  <td class="t_value"><input name="com_owner" type="text" value="캠퍼" class="input"></td>
                </tr>
                <tr>
                  <td align="left" class="t_name">우편번호</td>
                  <td class="t_value" colspan="3">
                    <input name="com_post1" type="text" value="013" size="5" class="input"> -
                    <input name="com_post2" type="text" value="27" size="5" class="input">
                    <i class="fa fa-search" aria-hidden="true" onClick="searchZip();" style="cursor:hand"
                      align="absmiddle"></i>

                  </td>
                </tr>
                <tr>
                  <td align="left" class="t_name">주소</td>
                  <td class="t_value" colspan="3"><input name="com_address1" type="text"
                      value="서울 서초구 서초동  135-8번지 903호" size="50" class="input"></td>
                </tr>
                <tr>
                  <td align="left" class="t_name">업태</td>
                  <td class="t_value"><input name="com_kind" type="text" value="서비스" class="input"></td>
                  <td align="left" class="t_name">종목</td>
                  <td class="t_value"><input name="com_class" type="text" value="커뮤니티" class="input"></td>
                </tr>
                <tr>
                  <td align="left" class="t_name">전화번호</td>
                  <td class="t_value"><input name="com_tel" type="text" value="02-1234-5678" class="input"></td>
                  <td align="left" class="t_name">팩스번호</td>
                  <td class="t_value"><input name="com_fax" type="text" value="02-1243-9876" class="input"></td>
                </tr>
              </table>

              <br><br><br><br><br>

              <!-- 버튼 -->
              <table align="center" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td>
                    <div class="form-group mb-4">
                      <div class="col-sm-12">
                        <input type="button" value="확인" class="btn_write btn_txt01" style="cursor: pointer;" onclick="location.href=''" />
                      </div>
                </tr>
                </form>
              </table>
              <tr>
                <td height="50">&nbsp;</td>
              </tr>
              <tr>
                <td valign="bottom" align="right" class="s11" style="padding-right:25px;">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="f6f6f6">

                  </table>
                </td>
              </tr>
            </div>
          </div>
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