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
				<caption class="caption_title">试题详情</caption>
				<tbody class="c5 f14">
					<tr>
						<td width="280px">题干</td>
			            <td>
			                ${gfn:br(question.title)}
			            </td>
					</tr>
					<tr>
						<td>试题类型</td>
						<td>
							${ta:dictValue('exam_question_type',question.question_type)}
						</td>
					</tr>
					<tr>
						<td>答案</td>
						<td>
							${question.answer}
						</td>
					</tr>
					<tr>
						<td>分值</td>
						<td>
							${question.score}
						</td>
					</tr>
					<c:forEach items="${options}" var="option">
					<c:forEach items="${option}" var="o">
					<tr>
						<td>选项${o.key}</td>
						<td>
							${o.value}
						</td>
					</tr>
					</c:forEach>
					</c:forEach>
			        <tr>
			            <td colspan="2">
			                <input type="button" class="button_2 cf" value="返回" onclick="history.back()"/>
			            </td>
			        </tr>
		        </tbody>
			</table>
		</div>
</div>
</body>
</html>