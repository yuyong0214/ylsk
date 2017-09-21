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
				<tbody class="c5 f14">
					<tr>
					  <td>
						<div align="left" style="margin-left: 80px">意见：${suggestion.content }</div>
					  </td>
					</tr>
				</tbody>
			</table>
			
		<!-- </div> -->
		<!-- <div style="height: 20px"></div> -->
		<c:if test="${not empty suggestion.reply_context }">
		<!-- <div class="content_tb"> -->
			<table class="list_table c3">
				<tbody class="c5 f14">
					<tr>
					  <td>
					    <div align="left" style="margin-left: 80px">回复：${suggestion.reply_context }</div>
					  </td>
					</tr>
				</tbody>
			</table>
			<div style="height: 20px"></div>
			<div style="height: 20px"></div>
		
		</c:if>
		</div>
		<c:if test="${empty suggestion.reply_context }">
		<div class="content_tb">
			<s:form action="suggestion!save" enctype="multipart/form-data" method="post">
				<s:hidden name="suggestion.class_id"></s:hidden>
				<s:hidden name="suggestion.user_id"></s:hidden>
				<s:hidden name="suggestion.id"></s:hidden>
				<s:hidden name="suggestion.type"></s:hidden>
				<s:hidden name="suggestion.content"></s:hidden>
				<s:hidden name="suggestion.create_time"></s:hidden>
				<table  class="list_table c3">
					<tbody class="c5 f14">
						<tr>
						  <td width="125px"><div align="left" style="margin-left: 80px">回复：</div></td>
						  <td>
						  	<textarea rows="10" cols="80" name="suggestion.reply_context"  style="resize:none;margin-left:4px" id="reply_context"></textarea><span style="color:red">（回复内容不能为空）</span>
						  </td>
						</tr>
						<tr>
                          <td></td>
						  <td>
						  	<input type="submit" class="button_2 cf" value="保存" /> 
						  	<input type="button" class="button_2 cf" value="返回"  onclick="history.back();"/>
						  </td>
						</tr>
					</tbody>
				</table>
			</s:form>
		</div>
		</c:if>
	</div>
</body>
</html>
