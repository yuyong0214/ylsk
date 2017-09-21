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
				<caption class="caption_title">题目结果统计</caption>
				<tbody class="c5 f14">
					<c:if test="${empty surveyResultList }">
						<tr align="center">
							<td>没有人参与问卷</td>
						</tr>
					</c:if>
					<c:if test="${ not empty surveyResultList }">
						<tr>
							<td>参与问卷调查总人数</td>
							<td>${totalCount}人</td>
							<td></td>
						</tr>
						 <c:forEach items="${options}" var="opt" varStatus="status">
						 		<tr>
						 			<td>选项【${opt.optionkey}】${opt.optionvalue }</td>
						 			<td>${opt.optionPer }</td>
						 			<td></td>
						 		</tr>
						</c:forEach>
					 </c:if>
					 <tr>
                        <td></td>
			            <td>
			                <input type="button" class="button_2 cf" value="返回" onclick="history.back()"/>
			            </td>
		        	</tr>
				</tbody>
			</table>
		</div>
</div>
</body>
</html>