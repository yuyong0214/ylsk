<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<title></title>
		<link href="${base}/css/admin.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${base}/js/jquery.js"></script>
		<script>
		$(function(){
			parent.mainFrame.window.location = $("a:first").attr("href");
		    parent.middleFrame.window.location = "${base}/student/index!middle.action";
		 });
		</script>
	</head>
	<body class="menu">
		<div class="menuContent">
			<dl>
				<dt>
					<span>个人信息</span>
				</dt>
				<dd><a href="${base}/student/information!detail.action?init" target="mainFrame">个人详情</a></dd>
				<dd><a href="${base}/student/information!edit.action" target="mainFrame">信息修改</a></dd>
				<dd><a href="${base}/student/information!pwdedit.action" target="mainFrame">密码修改</a></dd>
			</dl>
		</div>
	</body>
</html>