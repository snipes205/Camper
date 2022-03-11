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
    <link rel="icon" type="../../image/png" sizes="16x16" href="../../iamges/favicon.png">
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
                                <img src="../../plugins_a/images/users/varun.jpg" alt="user-img" width="36"
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

              <table width="100%" border="0" cellspacing="0" cellpadding="2">
                <tr>
                  <td class="tit_sub"><i class="fa fa-genderless" aria-hidden="true"></i> 기본정보</td>
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
                          <td align="left" class="t_name">사이트명</td>
                          <td class="t_value" colspan="3"><input name="site_name" value="홈페이지" type="text"
                              class="input"></td>
                        </tr>
                        <tr>
                          <td align="left" class="t_name">사이트 URL</td>
                          <td class="t_value" colspan="3"><input name="site_url" type="text" value="http://test.com"
                              size="60" class="input"></td>
                        </tr>
                        <tr>
                          <td align="left" class="t_name">관리자 이메일</td>
                          <td class="t_value" colspan="3"><input name="site_email" type="text" value="test@test.com"
                              size="60" class="input"></td>
                        </tr>
                        <tr>
                          <td width="15%" align="left" class="t_name">관리자 전화번호</td>
                          <td width="35%" class="t_value"><input name="site_tel" type="text" value="00-0000-0000"
                              size="28" class="input"></td>
                          <td width="15%" align="left" class="t_name">관리자 휴대폰</td>
                          <td width="35%" class="t_value"><input name="site_hand" type="text" value="000-0000-0000"
                              class="input"></td>
                        </tr>
                      </table>
                    </td>
                  </tr>
              </table>
              <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="30">
                    <font color=red>- 관리자 이메일,휴대폰번호로 회원가입,탈퇴,폼메일 등 사이트에서 일어나는 상황을 알려줍니다.</font>
                  </td>
                </tr>
              </table>

              <br>
              <table width="100%" border="0" cellspacing="0" cellpadding="2">
                <tr>
                  <td class="tit_sub"><i class="fa fa-genderless" aria-hidden="true"></i> 메타테그 관리</td>
                </tr>
              </table>
              <table width="100%" border="0" cellspacing="1" cellpadding="5" class="t_style">
                <tr>
                  <td width="15%" class="t_name">사이트 Title</td>
                  <td width="85%" class="t_value"><input name="site_title" value="" size="30" type="text"
                      class="input"></td>
                </tr>
                <tr>
                  <td class="t_name">검색키워드</td>
                  <td class="t_value"><input name="site_keyword" type="text"
                      value="" size="90" class="input"></td>
                </tr>
                <tr>
                  <td class="t_name">소개글</td>
                  <td class="t_value"><input name="site_intro" type="text"
                      value="" size="90" class="input"></td>
                </tr>
              </table>


              <br>
              <table width="100%" border="0" cellspacing="0" cellpadding="2">
                <tr>
                  <td class="tit_sub"><i class="fa fa-genderless" aria-hidden="true"></i> FTP정보</td>
                </tr>
              </table>
              <table width="100%" border="0" cellspacing="1" cellpadding="3" class="t_style">
                <tr>
                  <td align="left" class="t_name">접속주소(ip,도메인)</td>
                  <td class="t_value" colspan="3"><input name="ftp_host" value="abc.com" type="text" class="input"></td>
                </tr>
                <tr>
                  <td width="15%" align="left" class="t_name">아이디</td>
                  <td width="35%" class="t_value"><input name="ftp_id" type="text" value="abc" size="28" class="input">
                  </td>
                  <td width="15%" align="left" class="t_name">비밀번호</td>
                  <td width="35%" class="t_value">
                    <input name="ftp_pw" type="text" value="" class="input"> 12**
                  </td>
                </tr>
              </table>

              <br>
              <table width="100%" border="0" cellspacing="0" cellpadding="2">
                <tr>
                  <td class="tit_sub"><i class="fa fa-genderless" aria-hidden="true"></i> 도메인 정보</td>
                </tr>
              </table>
              <table width="100%" border=0 cellspacing="1" cellpadding="3" class="t_style">
                <tr align="center" class="t_name">
                  <td width="5%">No</td>
                  <td width="20%">도메인</td>
                  <td width="20%">구입사이트</td>
                  <td width="12%">아이디</td>
                  <td width="13%">비밀번호</td>
                  <td width="15%">만료일</td>
                </tr>
                <tr align="center" class="t_value">
                  <td>1</td>
                  <td>test.com</td>
                  <td>test.com</td>
                  <td>test</td>
                  <td>te**</td>
                  <td>2007-10-01</td>

                </tr>
              </table>

              <br>
              <table width="100%" border="0" cellspacing="0" cellpadding="2">
                <tr>
                  <td class="tit_sub"><i class="fa fa-genderless" aria-hidden="true"></i> 이메일 정보</td>
                </tr>
              </table>
              <table width="100%" border=0 cellspacing="1" cellpadding="3" class="t_style">
                <tr align="center" class="t_name">
                  <td width="5%">No</td>
                  <td width="20%">이메일</td>
                  <td width="20%">사용자명</td>
                  <td width="20%">아이디</td>
                  <td width="20%">비밀번호</td>
                </tr>
                <tr align="center" class="t_value">
                  <td>1</td>
                  <td>test@test.com</td>
                  <td>test</td>
                  <td>test</td>
                  <td>te**</td>

                </tr>
              </table>

              <br>
              <table width="100%" border="0" cellspacing="0" cellpadding="2">
                <tr>
                  <td class="tit_sub"><i class="fa fa-genderless" aria-hidden="true"></i> 사업자정보</td>
                </tr>
              </table>

              <table width="100%" border="0" cellspacing="1" cellpadding="3" class="t_style">
                <tr>
                  <td align="left" class="t_name">사업자등록번호</td>
                  <td class="t_value" colspan="3"><input name="com_num" type="text" value="000-00-00000" class="input">
                  </td>
                </tr>
                <tr>
                  <td width="120" align="left" class="t_name">상호</td>
                  <td class="t_value"><input name="com_name" type="text" value="테스트" class="input"></td>
                  <td width="120" align="left" class="t_name">대표자명</td>
                  <td class="t_value"><input name="com_owner" type="text" value="테스트" class="input"></td>
                </tr>
                <tr>
                  <td align="left" class="t_name">우편번호</td>
                  <td class="t_value" colspan="3">
                    <input name="com_post1" type="text" value="000" size="5" class="input"> -
                    <input name="com_post2" type="text" value="000" size="5" class="input">
                    <i class="fa fa-search" aria-hidden="true" onClick="searchZip();" style="cursor:hand"
                      align="absmiddle"></i>

                  </td>
                </tr>
                <tr>
                  <td align="left" class="t_name">주소</td>
                  <td class="t_value" colspan="3"><input name="com_address1" type="text"
                      value="서울 서초구 서초동  000-0번지 000호" size="50" class="input"></td>
                </tr>
                <tr>
                  <td align="left" class="t_name">업태</td>
                  <td class="t_value"><input name="com_kind" type="text" value="서비스" class="input"></td>
                  <td align="left" class="t_name">종목</td>
                  <td class="t_value"><input name="com_class" type="text" value="홈페이지제작" class="input"></td>
                </tr>
                <tr>
                  <td align="left" class="t_name">전화번호</td>
                  <td class="t_value"><input name="com_tel" type="text" value="00-0000-0000" class="input"></td>
                  <td align="left" class="t_name">팩스번호</td>
                  <td class="t_value"><input name="com_fax" type="text" value="00-0000-0000" class="input"></td>
                </tr>
              </table>

              <br><br><br><br><br>

              <!-- 버튼 -->
              <table align="center" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td>
                    <div class="form-group mb-4">
                      <div class="col-sm-12">
                        <input type="button" value="확인" class="btn_write btn_txt01" style="cursor: pointer;" onclick="location.href='write-c.html'" />
                      </div>
                </tr>
                </form>
              </table>

              <br>



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