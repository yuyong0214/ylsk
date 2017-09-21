<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link rel="stylesheet" type="text/css" href="${base }/css/ht_web.css"/>
	<script type="text/javascript" src="${base}/js/jquery.js"></script>
</head>
<body style="background-color:#efeff8;">
	<div class="content_box">
		<div class="content_tb">
			<table class="list_table c3 f14">
				<caption class="caption_title">评估详情列表
				<span class=" f14 fright"> 
                    <a href="course!sumEvaluateDetail.action?class_id=${class_id}&course_id=${course_id}">评估详情</a>
                </span>
                </caption>
				<tbody class="c5">
			        <tr>
			            <td colspan="3">
					                   参与评估总人数:${evaluateCount }人
				        </td>
				    </tr>
					<tr class="c3">
						<td>用户名</td>
						<td>姓名</td>
						<td>操作</td>
					</tr>
					<c:forEach items="${evaluateList}" var="list">
							<tr>
								<td>${list.username}</td>
								<td>${list.realname}</td>
								<td>
									<a href="course!evaluateDetail.action?evaluate_id=${list.id }">详情</a>
									<a href="course!deleteEvaluateDetail.action?evaluate_id=${list.id}&clazz_id=${list.course_id}" 
									onclick="return confirm('您确定要删除这条记录吗？');">删除</a>
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