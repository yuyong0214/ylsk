<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link href="${base}/css/admin.css" rel="stylesheet" type="text/css" />
</head>
<body class="admin">
<div class="body">
    <table class="listTable">
        <caption>问卷题目详情</caption>
        <tr>
            <td width="280px">题目名称</td>
            <td>${survey.title}</td>
        </tr>
        <tr>
            <td>所属班级</td>
            <td>${clazz.class_name}</td>
        </tr>
        <tr>
            <td>题目类型</td>
            <td>${tytle_type}</td>
        </tr>
        <tr>
            <td>题目内容</td>
            <td>
            ${survey.content}
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="button" class="btn" value="返回" onclick="history.back();"/>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
