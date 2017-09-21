<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@include file="/WEB-INF/content/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" style="background-color:#efeff8;">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>学习秘书管理平台</title>
</head>
<frameset id="parentFrameset" name="parentFrameset" rows="50,*" cols="*" frameborder="no" border="0" framespacing="0">
	<frame id="headerFrame" name="headerFrame" src="${base}/student/index!header.action" frameborder="no" scrolling="no" noresize="noresize" />
	<frameset id="mainFrameset" name="mainFrameset" cols="180,15,*" frameborder="no" border="0" framespacing="0">
		<frame id="menuFrame" name="menuFrame" src="${base}/student/index!menu.action" frameborder="no" scrolling="auto" noresize="noresize" />
		<frame id="middleFrame" name="middleFrame" src="about:blank" frameborder="no" scrolling="no" noresize="noresize"/>
		<frame id="mainFrame" name="mainFrame" src="${base}/student/index!index.action" frameborder="no" noresize="noresize" />
	</frameset>
</frameset>
</html>