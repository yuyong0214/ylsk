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
        <caption class="caption_title">模块详情</caption>
        <tbody class="c5 f14">
        <tr>
            <td width="280px">模块名称</td>
            <td>${gfn:br(academyModule.module_name)}</td>
        </tr>
        <tr>
            <td>模块图标</td>
            <td>${gfn:br(academyModule.module_icon)}</td>
        </tr>
        <tr>
            <td>模块类型</td>
            <td>${ta:dictValue('module_type',academyModule.module_type)}</td>
        </tr>
        <tr>
            <td>模块url</td>
            <td>${gfn:br(academyModule.module_url)}</td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="button" class="button_2 cf" value="返回" onclick="history.back();"/>
            </td>
        </tr>
        </tbody>
    </table>
</div>
</div>
</body>
</html>
