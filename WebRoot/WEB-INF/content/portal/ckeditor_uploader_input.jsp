<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http//www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http//www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<%@ include file="/WEB-INF/content/common/nocache.jsp" %>
<script>
alert("文件过大或文件类型错误");
window.parent.CKEDITOR.tools.callFunction(${CKEditorFuncNum}, '');
</script>
</head>
<body>
</body>
</html>