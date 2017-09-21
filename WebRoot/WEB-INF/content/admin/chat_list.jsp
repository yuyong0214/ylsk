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
		        <caption class="caption_title"> 班级聊天室</caption>
		        <tbody class="c5">
		        <tr class="c3">
		            <td>用户名称</td>
		            <td>聊天内容</td>
		            <td>操作</td>
		        </tr>
		        <c:forEach items="${chatList}" var="c">
		        <tr>
		        
		            <td>${c.realname}</td>
		            <td>${c.content}</td>
		            <td>
		                <a href="chat!detail.action?chat.id=${c.id}">详情</a>
		                <a href="chat!delete.action?chat.id=${c.id}&chat.class_id=${c.class_id}" onclick="return confirm('您确定要删除【${c.content}】吗？');">删除</a>
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
