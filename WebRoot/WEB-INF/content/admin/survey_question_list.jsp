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
						<caption class="caption_title">
						【${survey_title}】问卷题目统计
						<span class=" f14 fright">
				        </span>
						</caption>
							<tbody class="c5 f14">
								<tr>
									<td width="20%">问卷题目数</td>
									<td>共${questionCount }个题目</td>
									<td></td>
								</tr>
							</tbody>
					</table>
					
				</div>
				<div class="content_tb">
					<table class="list_table c3 f14">
						<caption class="caption_title">
						【${survey_title}】问卷题目列表
						<span class=" f14 fright">
				        	<a href="survey_question!add.action?surveyQuestion.survey_id=${surveyQuestion.survey_id}&survey_title=${survey_title}">新建</a>
				        	<a href="survey_question!importSurveyQuestion.action?surveyQuestion.survey_id=${surveyQuestion.survey_id}&survey_title=${survey_title}">批量导入问卷题</a>
				        </span>
						</caption>
						<tbody class="c5">
							<tr class="c3">
								<td>题目名称</td>
								<td>题目类型</td>
								<td>操作</td>
							</tr>
							<c:forEach items="${surveyQuestionList}" var="sq">
							<tr>
								<td>${sq.title}</td>
								<td>${sq.type==1?'单选题':'多选题'}</td>
								<td>
									<a href="survey_question!statistic.action?surveyQuestion.id=${sq.id}&surveyQuestion.survey_id=${sq.survey_id}">题目结果统计</a>
									<a href="survey_question!detail.action?surveyQuestion.id=${sq.id}">详情</a>
									<a href="survey_question!edit.action?surveyQuestion.id=${sq.id}&surveyQuestion.survey_id=${sq.survey_id}&survey_title=${survey_title}">修改</a>
									<a href="survey_question!delete.action?surveyQuestion.id=${sq.id}&surveyQuestion.survey_id=${sq.survey_id}&survey_title=${survey_title}" 
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