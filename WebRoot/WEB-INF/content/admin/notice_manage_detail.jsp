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
        <caption class="caption_title">通知详情</caption>
        <tbody class="c5 f14">
        <tr>
            <td>通知主题</td>
            <td>${gfn:br(noticeDetail.title)}</td>
        </tr>
        <tr>
            <td>通知内容</td>
            <td>${gfn:br(noticeDetail.content)}</td>
        </tr>
        <tr>
            <td>发送人</td>
            <td>${gfn:br(noticeDetail.username)}</td>
        </tr>
        <tr>
            <td>创建时间</td>
            <td>${gfn:date(noticeDetail.create_time, "yyyy-MM-dd HH:mm:ss")}</td>
        </tr>
        <tr>
            <td></td>
            <td colspan="2">
                <input type="button" class="button_2 cf" value="返回" onclick="history.back();"/>
            </td>
        </tr>
        </tbody>
    </table>
</div>
</div>
</body>
</html>
