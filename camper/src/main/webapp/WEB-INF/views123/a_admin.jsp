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
                      <h4 class="page-title">관리자 설정</h4>
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
                                            <input name="id" type="text" value="admin" class="input" readonly>
                                                                            </td>
                                        <td width="15%" height="30" align="left" class="t_name">비밀번호 <font color=red>*</font></td>
                                        <td width="35%" class="t_value"><input name="passwd" type="text" value="" class="input"></td>
                                      </tr>
                                      <tr>
                                        <td height="30" align="left" class="t_name">이름 <font color=red>*</font></td>
                                        <td class="t_value"><input name="name" type="text" value="관리자" class="input"></td>
                                        <td height="30" align="left" class="t_name">이메일 <font color=red>*</font></td>
                                        <td class="t_value"><input name="email" type="text" value="test@test.com" class="input"></td>
                                      </tr>
                                      <tr>
                                        <td height="30" align="left" class="t_name">주민번호</td>
                                        <td class="t_value">
                                                            <input type="text" name="resno" value="761001" size="9" class="input"> -
                                          <input type="text" name="resno2" value="1000004" size="9" class="input">
                                        </td>
                                        <td height="30" align="left" class="t_name">전화번호</td>
                                        <td class="t_value">
                                                            <input type="text" name="tphone" value="000" size="5" class="input"> -
                                          <input type="text" name="tphone2" value="0000" size="5" class="input"> -
                                          <input type="text" name="tphone3" value="0000" size="5" class="input">
                                        </td>
                                      </tr>
                                      <tr>
                                        <td height="30" align="left" class="t_name">휴대폰</td>
                                        <td class="t_value">
                                                            <input type="text" name="hphone" value="000"  size="5" class="input"> -
                                          <input type="text" name="hphone2" value="0000"  size="5" class="input"> -
                                          <input type="text" name="hphone3" value="0000"  size="5" class="input">
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
                                                            <input name="post1" type="text" value="000" size="5" class="input"> -
                                          <input name="post2" type="text" value="000" size="5" class="input">
                                          
                                            <button type="submit">
                                            <i class="fa fa-search" aria-hidden="true"></i>
                                        </button>
                                       
                                        </td>
                                      </tr>
                                      <tr>
                                        <td height="30" align="left" class="t_name">주소</td>
                                        <td class="t_value" colspan="3">
                                        <input name="address1" type="text" value="서울 서초구 서초동" size="60" class="input"><br>
                                        <input name="address2" type="text" value="000-0번지 000호" size="60" class="input">
                                        </td>
                                      </tr>
                                      <!--
                                      <tr>
                                        <td height="25" align="left" class="t_name">접근권한</td>
                                        <td class="t_value" colspan="3">
                                                            <table border="0" cellpadding="5" width="100%">
                                            <tr>
                                              <td width="33%" bgcolor="#efefef" valign="top">
                                                <input type="checkbox" size="20" name="permi[]" value="00-00" checked disabled><b>관리자(인트라넷)접근</b><br><br>
                                                <input type="checkbox" size="20" name="permi[]" value="01-00" ><b>환경설정</b><br><br>
                                                <input type="checkbox" size="20" name="permi[]" value="06-00" ><b>폼메일</b>
                                              </td>
                                              <td width="33%" bgcolor="#efefef" valign="top">
                                                <input type="checkbox" size="20" name="permi[]" id="02-00" value="02-00" onClick="checkBasic();" ><b>기본정보</b><br>
                                                <input type="checkbox" size="20" name="permi[]" id="02-01" value="02-01" onClick="checkBasic2(this);" >기본정보설정<br>
                                                <input type="checkbox" size="20" name="permi[]" id="02-02" value="02-02" onClick="checkBasic2(this);" >관리자설정<br>
                                                <input type="checkbox" size="20" name="permi[]" id="02-03" value="02-03" onClick="checkBasic2(this);" >팝업관리<br>
                                                <input type="checkbox" size="20" name="permi[]" id="02-04" value="02-04" onClick="checkBasic2(this);" >SMS관리/충전
                                              </td>
                                              <td width="33%" bgcolor="#efefef" valign="top">
                                                <input type="checkbox" size="20" name="permi[]" id="03-00" onClick="checkWork();" value="03-00" ><b>사내업무</b><br>
                                                <input type="checkbox" size="20" name="permi[]" id="03-01" onClick="checkWork2(this);" value="03-01" >스케쥴관리<br>
                                                <input type="checkbox" size="20" name="permi[]" id="03-02" onClick="checkWork2(this);" value="03-02" >사내웹하드<br>
                                                <input type="checkbox" size="20" name="permi[]" id="03-03" onClick="checkWork2(this);" value="03-03" >거래처관리
                                              </td>
                                            </tr>
                                            <tr>
                                              <td bgcolor="#efefef" valign="top">
                                                <input type="checkbox" size="20" name="permi[]" id="04-00" onClick="checkMember();" value="04-00" ><b>회원관리</b><br>
                                                <input type="checkbox" size="20" name="permi[]" id="04-01" onClick="checkMember2(this);" value="04-01" >회원목록<br>
                                                <input type="checkbox" size="20" name="permi[]" id="04-02" onClick="checkMember2(this);" value="04-02" >회원등록<br>
                                                <input type="checkbox" size="20" name="permi[]" id="04-03" onClick="checkMember2(this);" value="04-03" >등급관리<br>
                                                <input type="checkbox" size="20" name="permi[]" id="04-04" onClick="checkMember2(this);" value="04-04" >탈퇴회원<br>
                                                <input type="checkbox" size="20" name="permi[]" id="04-05" onClick="checkMember2(this);" value="04-05" >메일발송<br>
                                                <input type="checkbox" size="20" name="permi[]" id="04-06" onClick="checkMember2(this);" value="04-06" >SMS발송<br>
                                              </td>
                                              <td bgcolor="#efefef" valign="top">
                                                <input type="checkbox" size="20" name="permi[]" id="05-00" onClick="checkBbs();" value="05-00" ><b>게시판관리</b><br>
                                                <input type="checkbox" size="20" name="permi[]" id="05-01" onClick="checkBbs2(this);" value="05-01" >게시판목록<br>
                                                <input type="checkbox" size="20" name="permi[]" id="05-02" onClick="checkBbs2(this);" value="05-02" >게시물관리<br>
                                              </td>
                                              <td bgcolor="#efefef" valign="top">
                                                <input type="checkbox" size="20" name="permi[]" id="07-00" onClick="checkMarketing();" value="07-00" ><b>마케팅분석</b><br>
                                                <input type="checkbox" size="20" name="permi[]" id="07-01" onClick="checkMarketing2(this);" value="07-01" >접속자분석<br>
                                                <input type="checkbox" size="20" name="permi[]" id="07-02" onClick="checkMarketing2(this);" value="07-02" >접속경로분석<br>
                                                <input type="checkbox" size="20" name="permi[]" id="07-03" onClick="checkMarketing2(this);" value="07-03" >회원통계<br>
                                              </td>
                                            </tr>
                                          </table>
                                        </td>
                                      </tr>
                                      -->
                                      <tr>
                                        <td height="25" align="left" class="t_name">메모</td>
                                        <td class="t_value" colspan="3">
                                        <textarea name="descript" rows="5" cols="90" class="textarea">메모</textarea>
                                        </td>
                                      </tr>
                                    </table></td>
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

                              <!-- 확인 버튼 끝-->


                                </td>
                                <td width="25"></td>
                              </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td height="50">&nbsp;</td>
                          </tr>
                         
                          <tr>
                            <td height="5"></td>
                          </tr>
                        </table>
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
</body>

</html>