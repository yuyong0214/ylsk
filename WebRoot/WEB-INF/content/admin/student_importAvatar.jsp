<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link href="${base}/css/admin.css" rel="stylesheet" type="text/css" />
	<script src="${base}/widget/My97DatePicker/WdatePicker.js"></script>
</head>
<body class="admin">
<div class="body">
    <s:form action="student!unzip" enctype="multipart/form-data">
    <s:hidden name="student.class_id"/>
    <table class="listTable">
        <caption>${clazz.class_name} - 导入学员头像</caption>
        <tr>
            <td width="100px">导入文件</td>
            <td class="left">
	            <input name="avatarfiles" type="file" size="50"/>
	            <span class="prompt">&nbsp;&nbsp;&nbsp;只支持.Zip文件</span>&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="left" colspan="2">
                <p>注意事项：批量上传学员头像前，请将文件夹打包成.Zip格式的压缩包。</p>
                <p>且学员头像命名为该学员的手机号，避免重复。</p>
            </td>
        </tr>
        <tr>
            <td class="left" colspan="2">
                <s:submit cssClass="btn" value="导入"/>
                <input type="button" class="btn" value="返回" onclick="javascript:history.back();" />
            </td>
        </tr>
    </table>
    </s:form>
</div>
</body>
</html>
