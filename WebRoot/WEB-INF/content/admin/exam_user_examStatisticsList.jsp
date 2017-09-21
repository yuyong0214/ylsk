<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="content_box">
		<div class="content_tb">
			<table class="list_table c3">
				<caption class="caption_title">【${exam_title}】考试（学员参加率：${participationRate}%&nbsp;&nbsp;&nbsp;&nbsp;平均成绩：${avgScore}）</caption>
			</table>
		</div>
		<div class="content_tb">
   			 <table class="list_table c3">
	        	<caption class="caption_title">参加考试学员名单（${fn:length(euList) }人）
	        	</caption>
			       <tbody class="c5 f14">
				        <tr class="c3">
				            <td>姓名</td>
				            <td>提交时间</td>
				            <td>分数</td>
				        </tr>
				        <c:forEach items="${euList}" var="eu">
				        <tr>
				            <td>${eu.realname}</td>
				            <td>${gfn:date(eu.end, 'yyyy-MM-dd HH:mm')}</td>
				            <td>${eu.score}</td>
				        </tr>
				        </c:forEach>
			      </tbody>
	    	</table>
	    	<g:pager/>
    	</div>
    	<div class="content_tb">
		    <table class="list_table c3">
		        <caption class="caption_title">未参加考试学员名单（${fn:length(allStuList) }人）</caption>
			       <tbody class="c5 f14">
				        <tr class="c3">
				            <td>姓名</td>
				            <td>用户名</td>
				            <td>手机号</td>
				        </tr>
				        <c:forEach items="${allStuList}" var="u">
				        <tr>
				            <td>${u.realname}</td>
				            <td>${u.username}</td>
				            <td>${u.mobile}</td>
				        </tr>
				        </c:forEach>
			       </tbody>
		</table>
	</div>
	</div>
</body>
</html>
