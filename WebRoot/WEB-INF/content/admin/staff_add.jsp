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
	    	<s:form action="staff!add">
	    	<s:hidden name="staff.class_id"/>
			    <table class="list_table c3">
			        <caption class="caption_title">工作人员查询</caption>
			        <tbody class="c5 f14">
				        <tr>
				            <td width="100">姓名</td>
				            <td class="left"><input class="input_2" name="staff.realname"/></td>
				        </tr>
				        <tr style="text-align:center;">
							<td colspan="2"><input name="chaxun" onclick="submit()" type="button" class="button_2 cf" value="查询" /></td>
						</tr>
					</tbody>
			    </table>
			</s:form>
		</div>
	    <div class="content_tb">
			<table class="list_table c3 f14">
		        <caption class="caption_title">${clazz.class_name} - 添加工作人员</caption>
		        <tbody class="c5">
			        <tr class="c3">
			            <td width="20%">姓名</td>
			            <td width="10%">性别</td>
			            <td width="10%">民族</td>
			            <td width="15%">手机</td>
			            <td width="25%">个人简介</td>
			            <td width="20%">添加为</td>
			        </tr>
			        <c:forEach items="${userList}" var="u">
			        <tr>
			            <td>${u.realname}</td>
			            <td>
			                <c:if test="${u.sex == 0}">女</c:if>
			                <c:if test="${u.sex == 1}">男</c:if>
			            </td>
			            <td>${ta:dictValue('user_folk',u.folk)}</td>
			            <td>${u.mobile}</td>
			            <td>${u.introduction}</td>
			            <td>
			                <a href="staff!save.action?staff.class_id=${staff.class_id}&staff.user_id=${u.id}&staff.staff_type=0">教师</a>
			                <a href="staff!save.action?staff.class_id=${staff.class_id}&staff.user_id=${u.id}&staff.staff_type=1">班主任</a>
			                <a href="staff!save.action?staff.class_id=${staff.class_id}&staff.user_id=${u.id}&staff.staff_type=2">工作人员</a>
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
