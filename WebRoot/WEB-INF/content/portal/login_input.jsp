<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=0.5,maximum-scale=0.5,maximum-scale=0.5"/>
<meta name="format-detection" content="telephone=no" />
<title>学习秘书后台管理</title>
<link rel="stylesheet" type="text/css" href="${base }/css/ht_web.css">

<script>
if (self != top) {
    top.location = self.location;
};
function refreshImg()
{
    document.getElementById("codeImg").src='${base}/portal/login/verify_code.action?r='+new Date().getTime()
}


window.onload = function() {
    var u = navigator.userAgent;
    if (u.indexOf('Android') > -1 || u.indexOf('Linux') > -1) {
        window.location.href = "${base}/app/CloudClassRoom.apk";
    } else if (u.indexOf('iPhone') > -1) {
    	alert("小明正在打包中~");
        //window.location.href = "";
    } else if (u.indexOf('Windows Phone') > -1) {
        alert("WindowsPhone暂未推出。");
    }
};
$(window).on("load", function() {
    var winHeight = $(window).height();
    function is_weixin() {
        var ua = navigator.userAgent.toLowerCase();
        if (ua.match(/MicroMessenger/i) == "micromessenger") {
            return true;
        } else {
            return false;
        }
    }
    var isWeixin = is_weixin();
    if (isWeixin) {
        $(".weixin-tip").css("height", winHeight);
        $(".weixin-tip").show();
    }
});
</script>
</head>

<body>
<div class="index_box">
	<!--头部-->
	<div class="header">
    	<div class="logo"><img src="${base }/images/logo.png" /></div>
        <div class="header_hy f12 c5">您好！欢迎使用学习秘书管理系统</div>
    </div>
    <!--内容-->
    <div class="content" style="background-image:url(${base }/images/ht_bj.jpg);">
    	<div class="content_mid">
        	<!--功能区-->
        	<div class="login_welcome">
            	<div class="cf f32">
                培训会议身边的秘书<br/>
                <span class="f18">智能 · 高效 · 环保 · 便捷</span>
                </div>
                <div class="saoma"><img src="${base }/images/xiazai.png" /></div>
            </div>
            <!--登录区-->
            <div class="login_pannel">
            	<div class="login_pannel_bj"></div>
                <div class="login_title f14 cf">登录管理系统</div>
                <form id="form1" method="post" name="form1" action="${base}/portal/login/login.action">
					<div class="login_section c5">
	                	<div class="login_username">
	                    	<input name="username" type="text" class="input_1" placeholder="用户名" autofocus="autofocus"/>
	              		</div>
	                    <div class="login_username">
	                    	<input name="password" type="password" class="input_1" placeholder="密码" />
	       				</div>
	                    <div class="login_username">
							<input type="text" name="verifyCode" class="input_1" id="imgcode" maxlength="4" style="width: 150px;" value="验证码" onFocus="if(value==defaultValue){value='';this.style.color='#000'}" onBlur="if(!value){value=defaultValue;this.style.color='#999'}">
	                    	<span style="right:0px; position:absolute;"><img src="${base }/images/yzm.png" title="点击刷新验证码" id="codeImg" onclick="refreshImg();" style="cursor: hand; display: inline;"/></span>
							<!-- &nbsp;&nbsp;<img src="${base}/images/yanzhma_03.png" title="点击刷新验证码" id="codeImg" onclick="refreshImg();" style="cursor: hand; display: inline; border: 1px solid #979797;"/> -->
							<script>refreshImg();</script>
						</div>
	                    <div class="login_button">
	                    	<input name="login" type="button" onclick="submit()" class="button_1 cf" value="立即登录" />
	              		</div>
	                </div>
                </form>
            </div>
        </div>
    </div>
    <!--尾部-->
    <div class="footer">
    	<div class="banquan c8 f12">©2015 　 国家行政学院 　　版权所有</div>
        <div class="banquan c8 f12">国家行政学院音像出版社　　技术支持</div>
    </div>
</div>
</body>
</html>
