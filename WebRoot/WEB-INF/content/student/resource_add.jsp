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
<body class="admin">
	<div class="content_box">
	    <div class="content_tb">
		    <form action="resource!save.action" enctype="multipart/form-data" method="post">
			    <s:hidden name="resource.class_id"></s:hidden>
			    <s:hidden name="resource.class_name"></s:hidden>
			    <table class="list_table c3">
			        <caption class="caption_title">新建资源</caption>
			        <tbody class="c5 f14">
				        <tr>
				            <td width="100px">上传文件</td>
				            <td class="left">
				                <input type="file" name="uploadFile"/>
				                <span style="color: red"> *</span>
				            </td>
				        </tr>
				        <tr>
				            <td width="100px">标题</td>
				            <td class="left">
				                <input type="text" class="input_2" name="resource.title"/>
				                <span style="color: red"> *</span>
				            </td>
				        </tr>
				        <tr>
				            <td>资源分类</td>
				            <td class="left">
				                <c:set var="moduleList" value="${moduleList}" scope="request"/>
				                <s:select name="resource.module_no" list="#request.moduleList" 
				                listKey="module_no" listValue="module_name" headerKey="" headerValue="全部"/>
				                <span style="color: red"> *</span>
				            </td>
				        </tr>
				        <tr>
				            <td>文件类型</td>
				            <td class="left">
				                <c:set var="typeList" value="${ta:dictList('resource_type')}" scope="request"/>
				                <s:select name="resource.type" list="#request.typeList" 
				                listKey="dict_key" listValue="dict_value" headerKey="0" headerValue="--请选择--"/>
				                <span style="color: red"> *</span>
				            </td>
				        </tr>
				        <tr>
				            <td>主讲人</td>
				            <td class="left"><input type="text" class="input_2" name="resource.lecturer"/></td>
				        </tr>
				        <tr>
				            <td>简介</td>
				            <td class="left">
				                <textarea rows="5" cols="25" name="resource.introduction" style="resize:none;"></textarea>
				            </td>
				        </tr>
				        <tr>
				            <td class="left" colspan="2">
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
