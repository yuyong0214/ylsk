<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="${base}/css/ht_Web.css" rel="stylesheet" type="text/css" />
    <script src="${base}/widget/My97DatePicker/WdatePicker.js"></script>
</head>
<body style="background-color:#efeff8;">
	<div class="content_box">
		<div class="content_tb">
			<s:form action="resource!list">
			<s:hidden name="resource.class_id" />
				<table class="list_table c3">
				    <caption class="caption_title">资源查询</caption>
				    <tbody class="c5 f14">
					    <tr>
					        <td width="100px">资源分类</td>
					        <td class="left">
					            <c:set var="moduleList" value="${moduleList}" scope="request"/>
					            <s:select name="resource.module_no" list="#request.moduleList" 
					            listKey="module_no" listValue="module_name" headerKey="" headerValue="全部"/>
					        </td>
					        <td width="100px">文件类型</td>
					        <td class="left">
					            <c:set var="typeList" value="${ta:dictList('resource_type')}" scope="request"/>
					            <s:select name="resource.type" list="#request.typeList" 
					            listKey="dict_key" listValue="dict_value" headerKey="" headerValue="全部"/>
					        </td>
					        <td width="100px">标题</td>
					        <td class="left">
					            <s:textfield cssClass="input_2" name="resource.title"></s:textfield>
					        </td>
					    </tr>
					    <tr>
					        <td width="100px">主讲人</td>
					        <td class="left">
					            <s:textfield cssClass="input_2" name="resource.lecturer"></s:textfield>
					        </td>
					        <td width="100px">上传时间</td>
					        <td class="left">
					            <s:textfield name="resource.create_time" cssClass="Wdate" onclick="WdatePicker()" readonly="true"></s:textfield>
					        </td>
					        <td></td>
					        <td></td>
					    </tr>
					    <tr class="center">
					        <td colspan="6">
					            <s:submit cssClass="button_2 cf" value="查询"/>
					        </td>
					    </tr>
					 </tbody>
				</table>
			</s:form>
		</div>
    	<div class="blank"></div>
    	<div class="content_tb">
			<table class="list_table c3 f14">
				<caption class="caption_title">资源列表
					<c:if test="${isClassCommittee}">
					    <span class="f14 fright">
					    	<a href="resource!add.action?resource.class_id=${class_id}&resource.class_name=${class_name}">新建</a>
					    </span>
					</c:if>
				</caption>
				<tbody class="c5">
				    <tr class="c3">
				        <td>标题</td>
				        <td>资源分类</td>
				        <td>文件类型</td>
				        <td>文件大小</td>
				        <td>主讲人</td>
				        <td>上传时间</td>
				        <td>操作</td>
				    </tr>
				    <c:forEach items="${resourceList}" var="r">
				    <tr>
				        <td>${r.title}</td>
				        <td>
				            ${r.name }
				        </td>
				        <td>
				            ${ta:dictValue('resource_type',r.type)}
				        </td>
				        <td>${r.size}</td>
				        <td>${r.lecturer}</td>
				        <td>${gfn:date(r.create_time,'yyyy-MM-dd HH:mm:ss')}</td>
				        <td>
				            <a href="${base}/resource/${r.url}">下载</a>
				        </td>
				    </tr>
				    </c:forEach>
				</tbody>
			</table>
			<g:pager/>
		</div>
	</div>
</body>
</html>