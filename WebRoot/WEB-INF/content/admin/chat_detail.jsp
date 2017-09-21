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
				<caption class="caption_title">聊天详情</caption>
				<tbody class="c5 f14">
			        <tr>
			          <td>聊天ID</td>
			          <td>${chat.id}</td>
			        </tr>
			        <tr>
			          <td>班级名</td>
			          <td>${clazz.class_name}</td>
			        </tr>
			        <tr>
			          <td>用户名</td>
			          <td>${chat.realname}</td>
			        </tr>
			        <tr>
			          <td>创建时间</td>
			          <td>${gfn:date(chat.create_time, "yyyy-MM-dd")}</td>
			        </tr>
			        <tr>
			          <td>是否删除</td>
			          <td><c:if test="${chat.deleted==0}">否</c:if>
			            <c:if test="${chat.deleted==1}">已删除</c:if></td>
			        </tr>
			        <tr>
			          <td>聊天内容</td>
			          <td>${chat.content}</td>
			        </tr>
			
			        <tr>
			          <td></td>
			          <td><input type="button"
			            class="button_2 cf" value="返回" onclick="history.back();" /></td>
			        </tr>
				</tbody>
			</table>
		</div>
	</div>
</body>

</html>
