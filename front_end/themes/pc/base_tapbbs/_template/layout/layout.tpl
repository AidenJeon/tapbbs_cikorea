<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="CodeIgniter 한국사용자포럼, PHP Framework"/>
    <meta name="keywords" content="CodeIgniter, 한국사용자포럼"/>
    <meta name="author" content="">
    {@ meta }
    <meta name="{.name}" type="{.type}" content="{.content}" />
    {/}
    <title>{browser_title}</title>
	
	<!-- core CSS -->
    <link href="{FRONTEND}css/bootstrap.min.css" rel="stylesheet">
    <link href="{FRONTEND}css/font-awesome.min.css" rel="stylesheet">
    <link href="{FRONTEND}css/animate.min.css" rel="stylesheet">
    <link href="{FRONTEND}css/prettyPhoto.css" rel="stylesheet">
    <link href="{FRONTEND}css/main.css" rel="stylesheet">
    <link href="{FRONTEND}css/responsive.css" rel="stylesheet">
    <link href="{FRONTEND_COMMON}css/jquery.alerts.tapbbs.css" rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]>
    <script src="{FRONTEND}js/html5shiv.js"></script>
    <script src="{FRONTEND}js/respond.min.js"></script>
    <![endif]-->
    <link rel="icon" href="{BASE_URL}{SETTING_favicon_path}" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="{FRONTEND}images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="{FRONTEND}images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="{FRONTEND}images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="{FRONTEND}images/ico/apple-touch-icon-57-precomposed.png">

    {FRONTEND_JS_VARIABLES}
    <script type="text/javascript" src="{BASE_URL}js/lang_js"></script>
    <script type="text/javascript" src="{BASE_URL}js/base_url_js"></script>

    <!--script src="{FRONTEND}js/jquery.js"></script-->
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}modernizr.2.6.2.min.js"></script>
    <script type="text/javascript" src="{FRONTEND_COMMON}js/jquery.alerts.tapbbs.js"></script>
</head><!--/head-->

<body class="">

    <header id="header">
        <div class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-4">
                        <div class="top-number"><p></p></div>
                    </div>
                    <div class="col-sm-6 col-xs-8">
                       <div class="social">
                           <ul class="social-share">
                               {? USER_INFO_idx //로그인되어있으면}
                                   <li><a href="{BASE_URL}user/logout"><i class="fa fa-user-plus">{lang.btn_logout}</i></a></li>
                               {:}
                                   <li><a href="{BASE_URL}user/join"><i class="fa fa-user-plus">회원가입</i></a></li>
                                   <li><a href="{BASE_URL}user/find_password"><i class="fa fa-user-plus">비밀번호 찾기</i></a></li>
                                   <li><a href="{BASE_URL}user/login"><i class="fa fa-user-plus">로그인</i></a></li>
                               {/}
                           </ul>
                            <div class="search">
                                <form method="get" name="search_form" id="search_form" action="{BASE_URL}search" class="form-search" onsubmit="return form_null_check('search_form', 'search_word^{lang.search_word}');">
                                    <input type="text" class="search-form" autocomplete="off" name="search_word" id="search_word" placeholder="{lang.search_word}" value="{__GET.search_word}">
                                    <i class="fa fa-search"></i>
                                </form>
                           </div>
                       </div>
                    </div>
                </div>
            </div><!--/.container-->
        </div><!--/.top-bar-->

        <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="{BASE_URL}"><span class="logo-highliter">C</span>odeigniter 한국 포럼</a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Codeigniter <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="{BASE_URL}bbs/lists/news">CI 뉴스 및 다운로드</a></li>
                                <li><a href="pricing.html">CI 한글메뉴얼(3.0)</a></li>
                                <li><a href="404.html">CI 한글메뉴얼(2.1.0)</a></li>
                                <li><a href="shortcodes.html">CI 한글메뉴얼(1.7.3)</a></li>
                            </ul>
                        </li>

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">포럼 <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="{BASE_URL}bbs/lists/notice">공지사항</a></li>
                                <li><a href="{BASE_URL}bbs/lists/community">자유게시판</a></li>
                                <li><a href="{BASE_URL}bbs/lists/tip">TIP</a></li>
                                <li><a href="{BASE_URL}bbs/lists/lecture">강좌</a></li>
                                <li><a href="{BASE_URL}bbs/lists/qna">CI 질문</a></li>
                                <li><a href="{BASE_URL}bbs/lists/etcqna">CI외 질문</a></li>
                                <li><a href="{BASE_URL}bbs/lists/recruit">구인구직</a></li>
                                <li><a href="{BASE_URL}bbs/lists/usedci">CI 사이트 소개</a></li>
                                <li><a href="{BASE_URL}bbs/lists/marketing">광고, 홍보</a></li>
                            </ul>
                        </li>

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">자료실 <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="{BASE_URL}bbs/lists/pds_normal">일반자료</a></li>
                                <li><a href="{BASE_URL}bbs/lists/news">포럼소스 다운</a></li>
                                <li><a href="{BASE_URL}bbs/lists/news">TapBBS 다운</a></li>
                                <li><a href="{BASE_URL}bbs/lists/news">마냐님 공개보드 다운</a></li>
                                <li><a href="{BASE_URL}bbs/lists/news">CIBOARD</a></li>
                            </ul>
                        </li>

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">포럼참여 <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="blog-item.html">포럼개발자</a></li>
                                <li><a href="blog-item.html">운영자 게시판</a></li>
                            </ul>
                        </li>

                        {? USER_INFO_idx //로그인되어있으면}
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">{lang.mypage} <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu">
                                    <li><a href="{BASE_URL}user/point">{lang.menu_user_point}</a></li>
                                    <li><a href="{BASE_URL}user/friend">{lang.menu_user_friend}</a></li>
                                    <li><a href="{BASE_URL}user/scrap">{lang.menu_user_scrap}</a></li>
                                    <li><a href="{BASE_URL}user/message">{lang.menu_user_message}</a></li>
                                    <li><a href="{BASE_URL}user/modify">{lang.menu_user_modify}</a></li>
                                </ul>
                            </li>
                        {/}
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
		
    </header><!--/header-->

    <div id="contents_wrapper">

        {#contents}

        <footer id="footer" class="midnight-blue">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 text-right">
                        2009-2015 &copy; Codeigniter 한국 사용자 포럼. All Rights Reserved.
                    </div>
                    <div class="col-sm-12 text-right">
                        Created by 배강민, 전상민 / Powered by <a href="http://tapbbs.com" target="_blank">TapBBS</a>
                    </div>
                </div>
            </div>
        </footer><!--/#footer-->
    </div>

    <div id="message_count_div" style="display:none">
        <i class="fa fa-envelope"></i>&nbsp;
        <a href = "{BASE_URL}user/message">{lang.new_message} : <span id = "message_count">0</span></a>
    </div>

    <div id="goTop" style="">
        <i class="fa fa-caret-square-o-up fa-2x"></i>
    </div>

    {tapbbs_profiler}

    <script src="{FRONTEND_THIRD_PARTY}jquery.cookie.js"></script>
    <script src="{FRONTEND}js/jquery.prettyPhoto.js"></script>
    <script src="{FRONTEND}js/jquery.isotope.min.js"></script>
    <script src="{FRONTEND}js/main.js"></script>
    <!--script src="{FRONTEND}js/wow.min.js"></script-->

    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}jquery-loadmask-0.4/jquery.loadmask.min.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="{BASE_URL}front_end/common/js/tapbbs.js"></script>
    <script type="text/javascript" src="{BASE_URL}front_end/common/js/fileuploader.tapbbs.js"></script>
    <script type="text/javascript" src="{BASE_URL}front_end/common/js/global.action.js"></script>

    <link rel="stylesheet" href="{FRONTEND_THIRD_PARTY}syntaxhighlighter/styles/shCore.css">
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shCore.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shBrushAppleScript.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shBrushAS3.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shBrushBash.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shBrushColdFusion.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shBrushCpp.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shBrushCSharp.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shBrushCss.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shBrushDelphi.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shBrushDiff.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shBrushErlang.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shBrushGroovy.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shBrushJavaFX.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shBrushJava.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shBrushJScript.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shBrushPerl.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shBrushPhp.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shBrushPlain.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shBrushPowerShell.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shBrushPython.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shBrushRuby.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shBrushSass.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shBrushScala.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shBrushSql.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shBrushVb.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shBrushXml.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shCore.js"></script>
    <script type="text/javascript" src="{FRONTEND_THIRD_PARTY}syntaxhighlighter/scripts/shLegacy.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            <!--{? IS_USER_LOGIN === TRUE}-->
            set_message_count('message_count_div', 'message_count', <!--{SETTING_ajax_timeout}-->);
            setInterval(function() {
                set_message_count('message_count_div', 'message_count', <!--{SETTING_ajax_timeout}-->);
            }, 30 * 1000); //30초에 한번 //반복하고자 하면 이부분을 추가한다. 하지만 부하가 발생할 수 있다. 설정으로 빼진 않는다.
            <!--{/}-->

            SyntaxHighlighter.all();
            SyntaxHighlighter.config.stripBrs = true;

            var $goTop = $('#goTop');
            $goTop.click(function() {
                $('body').animate({scrollTop:0});
            });
            $(window).scroll(function(){
                var t = $(window).scrollTop();
                if (t > 10) {
                    $goTop.fadeIn();
                }
                if (t < 1) {
                    $goTop.fadeOut();
                }
            });
        });
    </script>
</body>
</html>