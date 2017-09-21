<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link href="${base}/css/admin.css" rel="stylesheet" type="text/css" />
</head>
<body class="admin">

<div class="body">
        <div style="position:absolute; left: 300px; top: 30px">
			<img src="${base}/avatar/${user.avatar}" onerror="javascript:this.src='${base}/avatar/default.jpg'" style="width: 150px;height: 150px" />
		</div>
    <table class="listTable">
        <caption>个人详情</caption>
        <tr>        </tr>
        <tr>
            <td>姓名</td>
            <td>${user.realname}</td>
        </tr>
        <tr>
            <td>用户名</td>
            <td>${user.username}</td>
        </tr>
        <tr>
            <td>用户类型</td>
            <td>
            	<c:if test="${user.user_type==0}">学员</c:if>
            	<c:if test="${user.user_type==1}">管理员</c:if>
            	<c:if test="${user.user_type==2}">教职工</c:if>
            </td>
        </tr>

        <tr>
            <td>性别</td>
            <td>
            	<c:if test="${user.sex==0}">女</c:if>
            	<c:if test="${user.sex==1}">男</c:if>
            </td>
        </tr>
        <tr>
            <td>民族</td>
            <td>${user.folk}</td>
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
    </table>
</div>
</body>
</html>
