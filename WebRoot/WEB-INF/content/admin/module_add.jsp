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
<body style="background-color:#efeff8;">
<div class="content_box">
    <div class="content_tb">
    <s:form action="module!%{#attr.type}" method="post" enctype="multipart/form-data">
    <s:hidden name="module.id"></s:hidden>
    <s:hidden name="module.module_no"></s:hidden>
    <table class="list_table c3">
         <caption class="caption_title">${type eq 'save' ? '添加' : '修改'}模块</caption>
         <tbody class="c5 f14">
         <tr>
            <td width="280x">模块名称</td>
            <td><input name="module.name" value="${module.name }" class="input_2"/><span style="color: red">*</span></td>
        </tr>
        <tr>
        	<td>模块图标</td>
        	<td><input type="file" class="input_2" name="upload"/><span style="color: red">*</span></td>
        	
        </tr>
         <tr>
            <td>模块类型</td>
            <td>
                <c:set var="typeList" value="${ta:dictList('module_type')}" scope="request"/>
                <s:select name="module.type" list="#request.typeList"
                listKey="dict_key" listValue="dict_value"  headerKey="0" headerValue="--请选择--"/>
                <span style="color: red"> *</span>
            </td>
        </tr>
        <tr>
            <td>模块url</td>
            <td><input name="module.url" value="${module.url}" class="input_2"/></td>
        </tr>
        <c:if test="${type != 'update' }">
			<tr>
	            <td>模块编号</td>
	            <td><input name="module.module_no" value="${module.module_no }" class="input_2"/><span style="color: red">*</span></td>
	        </tr>
        </c:if>
        <tr>
            <td></td>
            <td>
                <s:submit name="baocun" type="submit" cssClass="button_2 cf" value="保存"></s:submit>
            </td>
        </tr>
    </table>
        <s:token/>    
    </s:form>
</div>
</div>
</body>
</html>