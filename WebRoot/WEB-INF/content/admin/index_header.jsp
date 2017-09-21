<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>学习秘书后台管理</title>
<link rel="stylesheet" type="text/css" href="${base }/css/ht_web.css">
<script type="text/javascript" src="${base}/js/jquery.js"></script>
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
<script type="text/javascript">
	function logout(){
		parent.mainFrame.window.location="${base}/portal/login!logout.action";
	}
</script>
</head>

<body>
<div class="top_box">
    <div class="logo_02"><img src="${base }/images/logo_02.png" /></div>
    <div class="top_text c5">${username }，您好！欢迎使用学习秘书管理平台</div>
    <div class="top-icon"><i title="退出登录" style="cursor: pointer;" onclick="logout()" class="iconfont c5">&#xe693;</i></div>
</div>
</body>
</html>