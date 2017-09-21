<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http//www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title> </title>
<style type="text/css">
	li{
		height: 40px;
		line-height: 40px;
	}
</style>

<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color:#efeff8;">
<div class="content_box">
    <div class="content_tb">
    <table class="list_table c3">
        <caption class="caption_title">错误信息</caption>
        <tbody class="c5 f14">
        <tr >
            <td>
                <s:fielderror/>
                <br />
            </td>
        </tr>
        <tr>
        	<td><input type="button" onclick="history.back();" class="button_2 cf" value="返回" /></td>
        </tr>
        </tbody>
    </table>
    </div>
</div>
</body>
</html>