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
			<caption class="caption_title">用户详情</caption>
				<tbody class="c5 f14">
					<tr>
						<td width="280px">姓名</td>
						<td>${user.realname}</td>
					</tr>
					<tr>
						<td>用户名</td>
						<td>${user.username}</td>
					</tr>
					<tr>
						<td>用户头像</td>
						<td>
							<img style="margin:15px 0; width:150px; height:150px;" src="${base }/avatar/${user.avatar}"  onerror="this.src='${base}/avatar/default.jpg'"/>
						</td>
					</tr>
					<tr>
						<td>用户类型</td>
						<td>
							<c:if test="${user.user_type==0}">学员</c:if>
							<c:if test="${user.user_type==1}">管理员</c:if>
							<c:if test="${user.user_type==2}">教职工</c:if>
						</td>
					</tr>
					<c:if test="${not empty academy_id}">
						<tr>
							<td>所属院校</td>
							<td>${academy.academy_name }</td>
						</tr>
					</c:if>
					<tr>
					<td>性别</td>
						<td>
							<c:if test="${user.sex==0}">女</c:if> 
							<c:if test="${user.sex==1}">男</c:if>
						</td>
					</tr>
					<tr>
						<td>民族</td>
						<td>${ta:dictValue('user_folk',user.folk)}</td>
					</tr>
					<tr>
						<td>邮箱</td>
						<td>${user.email}</td>
					</tr>
					<tr>
						<td>手机号码</td>
						<td>${user.mobile}</td>
					</tr>
					<tr>
						<td>办公地点</td>
						<td>${user.office}</td>
					</tr>
					<tr>
						<td>工作电话</td>
						<td>${user.office_phone}</td>
					</tr>
					<tr>
						<td>创建时间</td>
						<td>${gfn:date(user.create_time, "yyyy-MM-dd HH:mm:ss")}</td>
					</tr>
					<tr>
						<td>最后登陆时间</td>
						<td>${gfn:date(user.login_time, "yyyy-MM-dd HH:mm:ss")}</td>
					</tr>
					<tr>
						<td>个人简介</td>
						<td>${user.introduction}</td>
					</tr>
					<tr>
						<td>备注</td>
						<td>${user.remark}</td>
					</tr>
					<tr>
						<td></td>
						<td><a href="javascript:(0)"><input name="baocun" type="button" class="button_2 cf" value="返回" onclick="history.back();" /></a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
