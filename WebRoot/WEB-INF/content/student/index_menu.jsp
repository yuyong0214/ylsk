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
</script>

</head>

<body>
<div class="menu_box">
	<div class="menu cf">
    	<div class="menu_nav">
        	<div class="nav_titel">
        	
            	<div class="nav_titel_inner">
                <a href="javascript:;">
                <div style="width:40px; height:40px; float:left;">
                <span class="nav_titel_icon dot-right"></span>
                </div>
                <span class="nav_titel_bt cf">班级信息</span>
                </a>
                </div>
                <ul class="nav_fenlei" id="nav_a" style="display:none;">
                	<li class="fenlei_xf">
                    <a target="mainFrame" href="${base}/student/clazz!list.action">
                    <div class="nav-icon"><i class="iconfont cf">&#xe634;</i></div>
                    <span class="nav_titel_tb cf">班级列表</span>
                    </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="menu_nav">
        	<div class="nav_titel">
        	
            	<div class="nav_titel_inner">
                <a href="javascript:;">
                <div style="width:40px; height:40px; float:left;">
                <span class="nav_titel_icon dot-right"></span>
                </div>
                <span class="nav_titel_bt cf">个人信息</span>
                </a>
                </div>
                <ul class="nav_fenlei" id="nav_a" style="display:none;">
                    <li class="fenlei_xf">
                    <a target="mainFrame" href="${base}/student/information!detail.action?init">
                    <div class="nav-icon"><i class="iconfont cf">&#xe634;</i></div>
                    <span class="nav_titel_tb cf">个人详情</span>
                    </a>
                    </li>
                    <li class="fenlei_xf">
                    <a target="mainFrame" href="${base}/student/information!edit.action">
                    <div class="nav-icon"><i class="iconfont cf">&#xe634;</i></div>
                    <span class="nav_titel_tb cf">信息修改</span>
                    </a>
                    </li>
                    <li class="fenlei_xf">
                    <a target="mainFrame" href="${base}/student/information!pwdedit.action">
                    <div class="nav-icon"><i class="iconfont cf">&#xe634;</i></div>
                    <span class="nav_titel_tb cf">密码修改</span>
                    </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
</html>
