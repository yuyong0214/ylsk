<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="content_box">
	    <div class="content_tb">
		    <table class="list_table c3">
		        <caption>${clazz.class_name} - 学员导入结果</caption>
		        <tbody class="c5 f14">
		        <tr>
		            <td colspan="2" class="left">导入成功</td>
		        </tr>
		        <tr>
		            <td colspan="2" class="left"><input type="button" class="button_2 cf" value="返回" onclick="window.location = 'student!list.action?student.class_id=${clazz.id}';"/></td>
		        </tr>
		        </tbody>
		    </table>
	    </div>
	</div>
</body>
</html>
