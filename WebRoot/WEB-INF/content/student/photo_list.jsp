<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link href="${base}/css/ht_Web.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color:#efeff8;">
	<div class="content_box">
		<div class="content_tb">
			<s:form action="photo!list.action" >
				<s:hidden name="photo.class_id"/>
				<table class="list_table c3">
				    <caption class="caption_title">查询</caption>
				    <tbody class="c5 f14">
					    <tr>
					        <td>学员姓名</td>
					        <td>
					        	<!--<s:select name="photo.user_id" list="#request.userlist" 
					        	headerKey="" headerValue="全部" listKey="user_id" 
					        	listValue="realname" value="#session.photoParams['photo.user_id']" />
					        	-->
					        	<input type="text" class="input_2" name="user_name"/>
					        </td>
					    </tr>
					    <tr>
					        <td class="center" colspan="2">
					            <s:submit cssClass="button_2 cf" value="查询"/>
					        </td>
					    </tr>
					</tbody>
				</table>
			</s:form>
		</div>			
    	<div class="blank"></div>
    	<div class="content_tb">
			<table class="list_table c3 f14">
			    <caption class="caption_title">${class_name} -照片列表
			    	<span class="f14 fright">
			    		<a href="${base }/student/photo!addPhoto.action" style="cursor: pointer;">添加照片</a>
			    	</span>
			    </caption>
			    <tbody class="c5">
					<tr class="c3">
					    <td width="40%">上传人</td>
						<td width="40%">上传时间</td>
						<td width="20%">操作</td>
					</tr>
					<c:forEach items="${photoList}" var="p">
					<tr>
					    <td>${p.realname}</td>
					    <td>${gfn:date(p.create_time, 'yyyy-MM-dd hh:mm:ss')}</td>
					    <td>
					        <a href="photo!detail.action?photo.id=${p.id}">详情</a>
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
