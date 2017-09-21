<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
	<script src="${base}/widget/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
<div class="content_box">
<div class="content_tb">
    <s:form action="notice!%{#attr.type}" method="post">
    <s:hidden name="notice.id"></s:hidden>
    <s:hidden name="notice.class_id"></s:hidden>
    <table class="list_table c3">
         <caption class="caption_title">${type eq 'save' ? '添加' : '重新发送'}通知</caption>
         <tbody class="c5 f14">
        <tr>
            <td width="280px">通知主题</td>
            <td><s:textarea cssClass="input_2" name="notice.title" cols="100" rows="7"/> <span style="color: red">*</span></td>
        </tr>
        <tr>
            <td>通知内容</td>
            <td><s:textarea cssClass="input_2" name="notice.content" cols="100" rows="7"/> <span style="color: red">*</span></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <s:submit cssClass="button_2 cf" value="保存"/>
            </td>
        </tr>
        </tbody>
    </table>
        <s:token/>    
    </s:form>
</div>
</div>
</body>
</html>