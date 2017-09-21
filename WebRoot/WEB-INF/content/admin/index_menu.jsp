<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>学习秘书后台管理</title>
<link rel="stylesheet" type="text/css" href="${base }/css/ht_web.css">
<style type="text/css">

	@font-face {font-family: "iconfont";
	  src: url('${base}/font/iconfont.eot'); /* IE9*/
	  src: url('${base}/font/iconfont.eot#iefix') format('embedded-opentype'), /* IE6-IE8 */
	  url('${base}/font/iconfont.woff') format('woff'), /* chrome, firefox */
	  url('${base}/font/iconfont.ttf') format('truetype'), /* chrome, firefox, opera, Safari, Android, iOS 4.2+*/
	  url('${base}/font/iconfont.svg#iconfont') format('svg'); /* iOS 4.1- */
	}

	.iconfont {
	  font-family:"iconfont" !important;
	  font-size:16px;
	  font-style:normal;
	  -webkit-font-smoothing: antialiased;
	  -webkit-text-stroke-width: 0.2px;
	  -moz-osx-font-smoothing: grayscale;
	}
	
</style>
<script src="${base }/js/iconfont.js"></script>
<script type="text/javascript" src="${base}/js/jquery.js"></script>
<script src="${base }/js/min.js"></script>
<script type="text/javascript">
    $(function(){
       $(".menu_nav .nav_titel_inner").click(function(event) {
             $(this).find(".nav_titel_icon").removeClass('dot-right').addClass('dot-bottom'); 
             $(this).parents(".menu_nav").siblings().find(".nav_titel_icon").removeClass('dot-bottom').addClass('dot-right'); 

             $(this).parents(".menu_nav").find(".nav_fenlei").show(500); 
             $(this).parents(".menu_nav").siblings().find(".nav_fenlei").hide(500);
             
             //$(this).next("ul").children().children().href();
             parent.mainFrame.window.location=$(this).next("ul").children().children().attr("href");
       });
    })
    $(function(){
	var cotrs = $(".nav_titel .fenlei_xf");
		cotrs.click(function(event){
		 	$(this).addClass("fenlei_xf_a").siblings().removeClass("fenlei_xf_a");
		});
	});
</script>

</head>

<body>
<div class="menu_box">
	<div class="menu cf">
        <!-- 用户管理 -->
    	<div class="menu_nav">
        	<div class="nav_titel">
            	<div class="nav_titel_inner">
                <a href="javascript:;">
                <div style="width:40px; height:40px; float:left;">
                <span class="nav_titel_icon dot-right"></span>
                </div>
                <span class="nav_titel_bt cf">用户管理</span>
                </a>
                </div>
                <ul class="nav_fenlei" id="nav_a" style="display:none;">
                	<li class="fenlei_xf">
                    <a target="mainFrame" href="${base}/admin/user!list.action?init">
                    <div class="nav-icon"><i class="iconfont cf">&#xe634;</i></div>
                    <span class="nav_titel_tb cf">用户列表</span>
                    </a>
                    </li>
                    <li class="fenlei_xf">
                    <a target="mainFrame" href="${base}/admin/user!add.action">
                    <div class="nav-icon"><i class="iconfont cf">&#xe634;</i></div>
                    <span class="nav_titel_tb cf">新建用户</span>
                    </a>
                    </li>
                    <%--
                    <li class="fenlei_xf">
                    <a href="${base}/admin/user!importUsers.action" target="mainFrame">
                    <div class="nav-icon"><i class="iconfont cf">&#xe634;</i></div>
                    <span class="nav_titel_tb cf">用户批量导入</span>
                    </a>
                    </li>
                     --%>
                </ul>
            </div>
        </div>
        <!--班级管理-->
        <div class="menu_nav">
        	<div class="nav_titel">
            	<div class="nav_titel_inner">
                <a href="javascript:;">
                <div style="width:40px; height:40px; float:left;">
                <span class="nav_titel_icon dot-right"></span>
                </div>
                <span class="nav_titel_bt cf">班级管理</span>
                </a>
                </div>
                <ul class="nav_fenlei" id="nav_b" style="display:none;">
                	<li class="fenlei_xf">
                    <a href="${base}/admin/clazz!list.action?init" target="mainFrame">
                    <div class="nav-icon"><i class="iconfont cf">&#xe634;</i></div>
                    <span class="nav_titel_tb cf">班级列表</span>
                    </a>
                    </li>
                    <li class="fenlei_xf">
                    <a href="${base}/admin/clazz!add.action" target="mainFrame">
                    <div class="nav-icon"><i class="iconfont cf">&#xe634;</i></div>
                    <span class="nav_titel_tb cf">新建班级</span>
                    </a>
                    </li>
                </ul>
            </div>
        </div>
        <!--资源管理开始-->
        <div class="menu_nav">
        	<div class="nav_titel">
            	<div class="nav_titel_inner">
                <a href="javascript:;">
                <div style="width:40px; height:40px; float:left;">
                <span class="nav_titel_icon dot-right"></span>
                </div>
                <span class="nav_titel_bt cf">资源管理</span>
                </a>
                </div>
                <ul class="nav_fenlei" id="nav_c" style="display:none;">
                	<li class="fenlei_xf">
                    <a href="${base}/admin/resource!list.action?init" target="mainFrame">
                    <div class="nav-icon"><i class="iconfont cf">&#xe634;</i></div>
                    <span class="nav_titel_tb cf">资源列表</span>
                    </a>
                    </li>
                </ul>
            </div>
        </div>
        <!--信息管理-->
        <div class="menu_nav">
        	<div class="nav_titel">
            	<div class="nav_titel_inner">
                <a href="javascript:;">
                <div style="width:40px; height:40px; float:left;">
                <span class="nav_titel_icon dot-right"></span>
                </div>
                <span class="nav_titel_bt cf">信息管理</span>
                </a>
                </div>
                <ul class="nav_fenlei" id="nav_resource" style="display:none;">
                	<li class="fenlei_xf">
                    <a href="${base}/admin/info!list.action?init" target="mainFrame">
                    <div class="nav-icon"><i class="iconfont cf">&#xe634;</i></div>
                    <span class="nav_titel_tb cf">信息列表</span>
                    </a>
                    </li>
                    <li class="fenlei_xf">
                    <a href="${base}/admin/info!add.action" target="mainFrame">
                    <div class="nav-icon"><i class="iconfont cf">&#xe634;</i></div>
                    <span class="nav_titel_tb cf">新建信息</span>
                    </a>
                    </li>
                </ul>
            </div>
        </div>
        <!--问卷调查-->
        <div class="menu_nav">
        	<div class="nav_titel">
            	<div class="nav_titel_inner">
                <a href="javascript:;">
                <div style="width:40px; height:40px; float:left;">
                <span class="nav_titel_icon dot-right"></span>
                </div>
                <span class="nav_titel_bt cf">问卷管理</span>
                </a>
                </div>
                <ul class="nav_fenlei" id="nav_resource" style="display:none;">
                	<li class="fenlei_xf">
                    <a href="${base}/admin/survey!list.action?init" target="mainFrame">
                    <div class="nav-icon"><i class="iconfont cf">&#xe634;</i></div>
                    <span class="nav_titel_tb cf">问卷列表</span>
                    </a>
                    </li>
                    <li class="fenlei_xf">
                    <a href="${base}/admin/survey!add.action" target="mainFrame">
                    <div class="nav-icon"><i class="iconfont cf">&#xe634;</i></div>
                    <span class="nav_titel_tb cf">新建问卷</span>
                    </a>
                    </li>
                </ul>
            </div>
        </div>
        <!--教学评估-->
        <div class="menu_nav">
        	<div class="nav_titel">
            	<div class="nav_titel_inner">
                <a href="javascript:;">
                <div style="width:40px; height:40px; float:left;">
                <span class="nav_titel_icon dot-right"></span>
                </div>
                <span class="nav_titel_bt cf">教学评估</span>
                </a>
                </div>
                <ul class="nav_fenlei" id="nav_resource" style="display:none;">
                	<li class="fenlei_xf">
                    <a href="${base}/admin/paper!list.action?init" target="mainFrame">
                    <div class="nav-icon"><i class="iconfont cf">&#xe634;</i></div>
                    <span class="nav_titel_tb cf">试卷列表</span>
                    </a>
                    </li>
                    <li class="fenlei_xf">
                    <a href="${base}/admin/paper!add.action" target="mainFrame">
                    <div class="nav-icon"><i class="iconfont cf">&#xe634;</i></div>
                    <span class="nav_titel_tb cf">新建试卷</span>
                    </a>
                    </li>
                    <li class="fenlei_xf">
                    <a href="${base}/admin/question!list.action?init" target="mainFrame">
                    <div class="nav-icon"><i class="iconfont cf">&#xe634;</i></div>
                    <span class="nav_titel_tb cf">试题列表</span>
                    </a>
                    </li>
                    <li class="fenlei_xf">
                    <a href="${base}/admin/question!add.action" target="mainFrame">
                    <div class="nav-icon"><i class="iconfont cf">&#xe634;</i></div>
                    <span class="nav_titel_tb cf">新建试题</span>
                    </a>
                    </li>
                    <li class="fenlei_xf">
                    <a href="${base}/admin/question!importQuestion.action" target="mainFrame">
                    <div class="nav-icon"><i class="iconfont cf">&#xe634;</i></div>
                    <span class="nav_titel_tb cf">批量导入试题</span>
                    </a>
                    </li>
                </ul>
            </div>
        </div>
        <!--通知管理-->
        <div class="menu_nav">
        	<div class="nav_titel">
            	<div class="nav_titel_inner">
                <a href="javascript:;">
                <div style="width:40px; height:40px; float:left;">
                <span class="nav_titel_icon dot-right"></span>
                </div>
                <span class="nav_titel_bt cf">通知管理</span>
                </a>
                </div>
                <ul class="nav_fenlei" id="nav_resource" style="display:none;">
                	<li class="fenlei_xf">
                    <a href="${base}/admin/notice!noticeList.action?init" target="mainFrame">
                    <div class="nav-icon"><i class="iconfont cf">&#xe634;</i></div>
                    <span class="nav_titel_tb cf">通知列表</span>
                    </a>
                    </li>
                    <li class="fenlei_xf">
                    <a href="${base}/admin/notice!noticeAdd.action" target="mainFrame">
                    <div class="nav-icon"><i class="iconfont cf">&#xe634;</i></div>
                    <span class="nav_titel_tb cf">新建通知</span>
                    </a>
                    </li>
                </ul>
            </div>
        </div>
        <!--投票管理-->
        <div class="menu_nav">
        	<div class="nav_titel">
            	<div class="nav_titel_inner">
                <a href="javascript:;">
                <div style="width:40px; height:40px; float:left;">
                <span class="nav_titel_icon dot-right"></span>
                </div>
                <span class="nav_titel_bt cf">投票管理</span>
                </a>
                </div>
                <ul class="nav_fenlei" id="nav_resource" style="display:none;">
                	<li class="fenlei_xf">
                    <a href="${base}/admin/vote!voteList.action?init" target="mainFrame">
                    <div class="nav-icon"><i class="iconfont cf">&#xe634;</i></div>
                    <span class="nav_titel_tb cf">投票列表</span>
                    </a>
                    </li>
                    <li class="fenlei_xf">
                    <a href="${base}/admin/vote!voteAdd.action" target="mainFrame">
                    <div class="nav-icon"><i class="iconfont cf">&#xe634;</i></div>
                    <span class="nav_titel_tb cf">新建投票</span>
                    </a>
                    </li>
                </ul>
            </div>
        </div>
        <!--模块管理-->
        <div class="menu_nav">
        	<div class="nav_titel">
            	<div class="nav_titel_inner">
                <a href="javascript:;">
                <div style="width:40px; height:40px; float:left;">
                <span class="nav_titel_icon dot-right"></span>
                </div>
                <span class="nav_titel_bt cf">模块管理</span>
                </a>
                </div>
                <ul class="nav_fenlei" id="nav_resource" style="display:none;">
                	<li class="fenlei_xf">
                    <a href="${base}/admin/academy_module!academyList.action?init" target="mainFrame">
                    <div class="nav-icon"><i class="iconfont cf">&#xe634;</i></div>
                    <span class="nav_titel_tb cf">模块列表</span>
                    </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
</html>
