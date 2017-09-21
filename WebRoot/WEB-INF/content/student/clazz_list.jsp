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
		        <caption class="caption_title">班级列表</caption>
		        <tbody class="c5">
			        <tr class="c3">
			            <td>班级名称</td>
			          	<td>开班时间</td>
			            <td>结业时间</td>
			            <td>操作</td>
			        </tr>
			        <c:forEach items="${clazzList}" var="c">
			        <tr>
			            <td class="left">${c.class_name}</td>
			            <td>${gfn:date(c.start, "yyyy-MM-dd")}</td>
			            <td>${gfn:date(c.end, "yyyy-MM-dd")}</td>
			            <td>
			                <a href="photo!list.action?photo.class_id=${c.id}&init">相册</a>
			                <a href="resource!list.action?resource.class_id=${c.id}&resource.class_name=${c.class_name}">资源</a>
			                <a href="faq!list.action?class_id=${c.id}">答疑解惑</a>
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
