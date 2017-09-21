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
				<caption class="caption_title">投票统计</caption>
				<tbody class="c5 f14">
					<tr>
						<td>参与投票总人数</td>
						<td>${voteCount}人</td>
						<td></td>
					</tr>
					 <c:forEach items="${option_contents}" var="q" varStatus="s">
					 	<c:forEach items="${q.options}" var="opt" varStatus="status">
					 		<tr>
					 			<td>选项【${opt.optionkey}】${opt.optionvalue }</td>
					 			<td>${opt.optionPer }</td>
					 			<td></td>
					 		</tr>
					 	</c:forEach>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="content_tb">
			<table class="list_table c3 f14">
				<caption class="caption_title">投票详情列表</caption>
				<tbody class="c5">
						<tr class="c3">
							<td>投票人</td>
							<td>选择项</td>
							<td>操作</td>
						</tr>
						<c:forEach items="${list}" var="oc">
								<tr>
									<td>${oc.username}</td>
									<td>${oc.optionUser}</td>
									<td>
										<a href="vote!deleteVoteRsult.action?voteUser.id=${oc.id }&vote.id=${vote.id }" 
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