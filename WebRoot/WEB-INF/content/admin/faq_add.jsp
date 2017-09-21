<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color:#efeff8;">
<div class="content_box">
    <div class="content_tb">
    <s:form action="faq!save" enctype="multipart/form-data" method="post">
    <s:hidden name="faq.class_id"></s:hidden>
    <s:hidden name="faq.user_id"></s:hidden>
    <table class="list_table c3">
        <caption class="caption_title">新建主题帖</caption>
        <tbody class="c5 f14">
        <tr>
            <td>内容</td>
            <td>
            <s:textarea rows="10" cols="80" style="resize:none;margin-left:4px" name="faq.content" id="content"/>
		    </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input name="baocun" type="submit" class="button_2 cf" value="保存" />
                <input name="baocun" type="button" class="button_2 cf" value="返回" onclick="history.back();" />
            </td>
        </tr>
        </tbody>
    </table>
    </s:form>
</div>
</div>
</body>
</html>
