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
    <s:form action="academy_module!update" method="post" enctype="multipart/form-data">
    <input type="hidden" name="academyModule.id" value="${academyModule.id }" />
    <input type="hidden" name="academyModule.academy_id" value="${academyModule.academy_id }" />
    <input type="hidden" name="academyModule.module_icon" value="${academyModule.module_icon }" />
    <input type="hidden" name="academyModule.module_id" value="${academyModule.module_id }" />
    <input type="hidden" name="academyModule.is_open" value="${academyModule.is_open }" />
    <input type="hidden" name="academyModule.sn" value="${academyModule.sn }" />
    <table class="list_table c3">
         <caption class="caption_title">修改模块</caption>
         <tbody class="c5 f14">
         <tr>
            <td width="280px">模块名称</td>
            <td><input name="academyModule.module_name" value="${academyModule.module_name }" class="input_2"/><span style="color: red">*</span></td>
        </tr>
        <tr>
        	<td>模块图标</td>
        	<td><input type="file" name="upload"/><span style="color: red">*</span></td>
        	
        </tr>
         <tr>
            <td>模块类型</td>
            <td>
                <c:set var="typeList" value="${ta:dictList('module_type') }" scope="request"/>
                <s:select name="academyModule.module_type" list="#request.typeList"
                listKey="dict_key" listValue="dict_value" headerKey="" headerValue="--请选择--" />
                <span style="color: red"> *</span>
            </td>
        </tr>
        <tr>
            <td>模块url</td>
            <td><input name="academyModule.module_url" value="${academyModule.module_url}" class="input_2"/></td>
        </tr>
         <tr>
            <td>模块编号</td>
            <td><input name="academyModule.module_no" value="${academyModule.module_no }" class="input_2" readonly="readonly"/><span style="color: red">*</span></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <s:submit name="baocun" type="button" cssClass="button_2 cf" value="保存"></s:submit>
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