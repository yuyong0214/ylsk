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
		    <table class="list_table c3">
		        <caption class="caption_title">${exam_title} - 导入结果</caption>
		        <tbody class="c5 f14">
			        <tr>
			            <td colspan="2">导入成功：${success}行</td>
			        </tr>
				    <c:if test="${!empty error}">
			        <tr>
			            <th width="100px">数据行号</th>
			            <th>错误描述</th>
			        </tr>
					<c:forEach items="${error}" var="er">
					<tr>
						<td>${er.number}</td>
						<td>${er.info}</td>
					</tr>
					</c:forEach>
				    </c:if>
			        <tr>
			            <td colspan="2">
			                <input type="button" class="button_2 cf" value="返回" onclick="window.location.href='exam_question!list.action?question.exam_id=${question.exam_id}&exam_title=${exam_title}'"/>
			            </td>
			        </tr>
			      </tbody>
		    </table>
		</div>
	</div>
</body>
</html>
