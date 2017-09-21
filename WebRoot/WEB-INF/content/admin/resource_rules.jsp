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
    <form action="resource!saveRules.action" enctype="multipart/form-data" method="post">
    <table class="listTable">
        <caption>校规校纪</caption>
        <c:if test="${isFileExists}">
        <tr>
            <td width="100px">文件</td>
            <td class="left"><a href="${base}/resource/rules.pdf">下载</a></td>
        </tr>
        <tr>
            <td width="100px">更新时间</td>
            <td class="left">${lastModified}</td>
        </tr>
        </c:if>
        <c:if test="${!isFileExists}">
        <tr>
            <td width="100px">文件</td>
            <td class="left">尚未上传</td>
        </tr>
        </c:if>
        <tr>
            <td width="100px">上传文件</td>
            <td class="left">
                <input type="file" name="uploadFile"/>（PDF格式）
            </td>
        </tr>
        <tr>
            <td class="left" colspan="2">
                <input type="submit" class="btn" value="上传"/>
            </td>
        </tr>
    </table>
    </form>
</div>
</body>
</html>
