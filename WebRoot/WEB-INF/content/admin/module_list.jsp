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
	    <table class="list_table c3 f14">
	       <caption class="caption_title">
	         <span class=" f14 fright"> 
	          <!-- <a href="module!add.action" >新建模块</a> -->
	         </span>
	                                    模块列表
	        </caption>
	        <tbody class="c5">
		        <tr class="c3">
		            <td width="100px">模块名称</td>
		            <td width="100px">模块图标</td>
		            <td width="100px">模块类型</td>
		            <td width="150px">操作</td>
		        </tr>
		        <c:forEach items="${moduleList}" var="m">
		        <tr>
		            <td>${m.name }</td>
		            <td><img src="${base}/module/${m.icon }" style="width: 50px;height: 50px;" /></td>
		            <td>${ta:dictValue('module_type',m.type)}</td>
		            <td>
		                <a href="module!detail.action?module.id=${m.id}">详情</a>
		                <a href="module!edit.action?module.id=${m.id}">修改</a>
		                <a href="module!delete.action?module.id=${m.id}" onclick="return confirm('您确定要删除【${m.name}】吗？');">删除</a>
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
