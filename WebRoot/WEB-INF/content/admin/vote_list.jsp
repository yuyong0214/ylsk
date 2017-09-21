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
		        <caption  class="caption_title"> ${class_name} - 投票列表
		         	<span class=" f14 fright"><a href="vote!add.action?vote.class_id=${class_id}" >新建投票</a></span>
		        </caption>
		        <tbody class="c5">
			        <tr class="c3">
			            <td>投票标题</td>
			            <td>开始时间</td>
			            <td>结束时间</td>
			            <td>题目类型</td>
			            <td>创建者</td>
			            <td>操作</td>
			        </tr>
			        <c:forEach items="${voteList}" var="v">
			        <tr>
			            <td class="left">${v.title}</td>
			            <td>${gfn:date(v.begin_time, 'yyyy-MM-dd HH:mm:ss')}</td>
			            <td>${gfn:date(v.end_time, 'yyyy-MM-dd HH:mm:ss')}</td>
			            <td>${v.question_type==1?'单选题':'多选题' }</td>
			            <td>${v.username}</td>
			            <td>
			                <a href="vote!detail.action?vote.id=${v.id}">详情</a>
			                <a href="vote!edit.action?vote.id=${v.id}">修改</a>
			                <a href="vote!delete.action?vote.id=${v.id}" onclick="return confirm('您确定要删除【${v.title}】吗？');">删除</a>
			                <a href="vote!statistics.action?vote.id=${v.id}">统计</a>
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
