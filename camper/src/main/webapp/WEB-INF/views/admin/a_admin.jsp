<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="ko">

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
                        <b class="logo-icon"></b>
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
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper" style="min-height: 250px;">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb bg-white">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">&nbsp;관리자설정</h4>
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <div class="d-md-flex">
                            <ol class="breadcrumb ms-auto">
                                <li><a href="#" class="fw-normal">로그아웃</a></li>
                            </ol>
                            <a href="http://localhost:8080/search/theme.do" target="_blank"
                                class="btn btn-danger d-none d-md-block pull-right ms-3 hidden-xs hidden-sm waves-effect waves-light text-white">
                                홈페이지 바로가기
                            </a>
                        </div>
                    </div>
                </div>
            </div>        
            
            
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
                              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <form name="frm" action="admin_save.php" method="post" onSubmit="return inputCheck(this);" enctype="multipart/form-data">
                              <input type="hidden" name="tmp">
                              <input type="hidden" name="mode" value="update">
                              <input type="hidden" name="page" value="1">
                                <tr>
                                  <td>
                                    <table width="100%" border="0" cellspacing="1" cellpadding="6" class="t_style">
                                      <tr>
                                        <td width="15%" height="30" align="left" class="t_name">아이디 <font color=red>*</font></td>
                                        <td width="35%" class="t_value">
                                            <input name="id" type="text" value="admin" class="input" readonly></td>
                                        <td width="15%" height="30" align="left" class="t_name">비밀번호 <font color=red>*</font></td>
                                        <td width="35%" class="t_value"><input name="passwd" type="text" value="**********" class="input"></td>
                                      </tr>
                                      <tr>
                                        <td height="30" align="left" class="t_name">이름 <font color=red>*</font></td>
                                        <td class="t_value"><input name="name" type="text" value="관리자" class="input"></td>
                                        <td height="30" align="left" class="t_name">이메일 <font color=red>*</font></td>
                                        <td class="t_value"><input name="email" type="text" value="camper@naver.com" class="input"></td>
                                      </tr>
                                      <tr>
                                        <td height="30" align="left" class="t_name">주민번호</td>
                                        <td class="t_value">
                                                            <input type="text" name="resno" value="960408" size="9" class="input"> -
                                          <input type="text" name="resno2" value="2000004" size="9" class="input">
                                        </td>
                                        <td height="30" align="left" class="t_name">전화번호</td>
                                        <td class="t_value">
                                                            <input type="text" name="tphone" value="010" size="5" class="input"> -
                                          <input type="text" name="tphone2" value="5710" size="5" class="input"> -
                                          <input type="text" name="tphone3" value="9105" size="5" class="input">
                                        </td>
                                      </tr>
                                      <tr>
                                        <td height="30" align="left" class="t_name">휴대폰</td>
                                        <td class="t_value">
                                                            <input type="text" name="hphone" value="010"  size="5" class="input"> -
                                          <input type="text" name="hphone2" value="5710"  size="5" class="input"> -
                                          <input type="text" name="hphone3" value="9105"  size="5" class="input">
                                          </td>
                                        <td height="30" align="left" class="t_name">회원등급</td>
                                        <td class="t_value">관리자</td>
                                      </tr>
                                      <tr>
                                        <td height="30" align="left" class="t_name">관리자아이콘</td>
                                        <td class="t_value" colspan="3">
                                        	<input name="icon" type="file" class="input">
                                        </td>
                                      </tr>
                                      <tr>
                                        <td height="30" align="left" class="t_name">우편번호</td>
                                        <td class="t_value" colspan="3">
                                                            <input name="post1" type="text" value="10" size="5" class="input"> -
                                          <input name="post2" type="text" value="306" size="5" class="input">
                                          
                                            <button type="submit">
                                            <i class="fa fa-search" aria-hidden="true"></i>
                                        </button>
                                       
                                        </td>
                                      </tr>
                                      <tr>
                                        <td height="30" align="left" class="t_name">주소</td>
                                        <td class="t_value" colspan="3">
                                        <input name="address1" type="text" value="서울 서초구 서초동" size="60" class="input"><br>
                                        <input name="address2" type="text" value="135-8번지 903호" size="60" class="input">
                                        </td>
                                      </tr>
                                      <tr>
                                        <td height="25" align="left" class="t_name">메모</td>
                                        <td class="t_value" colspan="3">
                                        <textarea name="descript" rows="5" cols="90" class="textarea">관리자는...힘들다 .....ㅁ...ㅔ..모....</textarea>
                                        </td>
                                      </tr>
                                    </table>
                                    </td>
                                </tr>
                              </table>
                              
                              <br>

                            <!-- 확인 버튼 -->
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