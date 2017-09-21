<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link rel="stylesheet" type="text/css" href="${base }/css/ht_web.css">
	<script type="text/javascript" src="${base}/js/jquery.js"></script>
</head>
<body style="background-color:#efeff8;">
	<div class="content_box">
		<div class="content_tb">
			<table class="list_table c3">
				<caption class="caption_title">【${exam_title}】试卷详情
			        <span class=" f14 fright">
			        	<a href="exam_question!importQuestion.action?question.exam_id=${question.exam_id}&exam_title=${exam_title}">批量导入试题</a>
			        </span>
				</caption>
				<tbody class="c5 f14">
					<tr>
						<td >试题总数</td>
						<td >${questionCount}题</td>
						<td></td>
					</tr>
					<tr>
						<td>总分值</td>
						<td>${totalScore}分</td>
						<td></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="content_tb">
			<table class="list_table c3 f14">
				<caption class="caption_title">【${exam_title}】试题列表
			        <span class=" f14 fright">
			        	<a href="exam_question!add.action?question.exam_id=${question.exam_id}&exam_title=${exam_title}">新建</a>
			        </span>
				</caption>
				<tbody class="c5">
						<tr class="c3">
							<td>题干</td>
							<td>试题类型</td>
							<td>分值</td>
							<td>操作</td>
						</tr>
						<c:forEach items="${questionList}" var="q">
						<tr>
							<td>${q.title}</td>
							<td>${ta:dictValue('exam_question_type',q.question_type)}</td>
							<td>${q.score}</td>
							<td>
								<a href="exam_question!detail.action?question.id=${q.id}">详情</a>
								<a href="exam_question!edit.action?question.id=${q.id}&question.exam_id=${question.exam_id}&exam_title=${exam_title}">修改</a>
								<a href="exam_question!delete.action?question.id=${q.id}&question.exam_id=${question.exam_id}&exam_title=${exam_title}" 
								onclick="return confirm('您确定要删除这道试题吗？');">删除</a>
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