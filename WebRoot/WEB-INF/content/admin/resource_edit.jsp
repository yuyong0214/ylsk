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
    <form action="resource!update.action" method="post">
    <s:hidden name="resource.id"/>
    <s:hidden name="resource.type"/>
    <s:hidden name="resource.class_id"/>
    <s:hidden name="resource.academy_id"/>
    <s:hidden name="resource.url"/>
    <s:hidden name="resource.size"/>
    <s:hidden name="resource.create_time"/>
    <s:hidden name="resource.class_name"/>
    <table class="list_table c3">
        <caption class="caption_title">资源修改</caption>
        <tbody class="c5 f14">
        <tr>
            <td width="280px">资源名称</td>
            <td><input class="input_2" name="resource.title" value="${resource.title}"/></td>
        </tr>
        <tr>
            <td>班级</td>
            <td>
                <c:if test="${resource.class_id==0}">公共资源</c:if>
                <c:if test="${resource.class_id!=0}">${resource.class_name}</c:if>
            </td>
        </tr>
        <tr>
            <td>资源分类</td>
            <td>
                <c:set var="moduleList" value="${moduleList}" scope="request"/>
                <s:select name="resource.module_no" list="#request.moduleList" 
                listKey="module_no" listValue="module_name" headerKey="" headerValue="全部"/>
            </td>
        </tr>
        <tr>
            <td>资源类型</td>
            <td>
                ${ta:dictValue('resource_type',resource.type)}
            </td>
        </tr>
        <tr>
            <td>资源路径</td>
            <td>${resource.url}</td>
        </tr>
        <tr>
            <td>文件大小</td>
            <td>${resource.size}</td>
        </tr>
        <tr>
            <td>主讲人</td>
            <td>
                <input class="input_2" name="resource.lecturer" value="${resource.lecturer}"/>
            </td>
        </tr>
        <tr>
            <td>主讲人简介</td>
            <td>
                <textarea rows="5" cols="25" name="resource.introduction" 
                style="resize:none;"">${gfn:br(resource.introduction)}</textarea>
            </td>
        </tr>
        <tr>
            <td>上传时间</td>
            <td>${gfn:date(resource.create_time,'yyyy-MM-dd HH:mm:ss')}</td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="submit" class="button_2 cf" value="保存"/>
                <input type="button" class="button_2 cf" value="取消" onclick="history.back()"/>
            </td>
        </tr>
        </tbody>
    </table>
    </form>
    </div>
</div>
</body>
</html>
