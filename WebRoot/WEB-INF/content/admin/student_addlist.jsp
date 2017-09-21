<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link href="${base}/css/admin.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${base}/js/jquery.js"></script>
	<style type="text/css">
		#tdfirst{
			width: 100px;
		}
	</style>
	<script type="text/javascript">
	</script>
</head>
<body class="admin">
<div class="body">
<div>
    <form action="student!addList.action">
    <table class="listTable">
        <caption>用户查询</caption>
        <tr style="width: 500px">
				<input type="hidden" name="classId" value="${classId}"/>
				 <td id="tdfirst">姓名</td>
				 <td class="left"><input type="text" name="realname" value="${studentParams['realname']}" /></td>
				 <td id="tdfirst">用户名</td>
				 <td class="left"><input type="text" name="username" value="${studentParams['username']}" /></td>
				 <td id="tdfirst">手机</td>
				 <td class="left"><input type="text" name="mobile" value="${studentParams['mobile']}"/></td>
		</tr>
        <tr>
            <td  id="tdfirst">
                <s:submit cssClass="btn" value="查询"/>
            </td>
            <td colspan="5"></td>
        </tr>
    </table>
    </form>
    </div>
    <div class="blank"></div>
    <table class="listTable" id="listUserTable">
        <caption> 用户列表
        </caption>
        <tr>
            <th width="10%">姓名</th>
            <th width="10%">用户名</th>
            <th width="10%">性别</th>
            <th width="10%">民族</th>
            <th width="6%">手机</th>
            <th width="20%">个人简介</th>
            <th width="20%">操作</th>
        </tr>
        <c:forEach items="${list}" var="u">
    <%--     <c:if test="${u.deleted==1}"> --%>
        <tr>
            <td>${u.realname}</td>
            <td>${u.username}</td>
            <td>
            	<c:if test="${u.sex==0}">女</c:if>
            	<c:if test="${u.sex==1}">男</c:if>
            </td>
            <td>${ta:dictValue('user_folk',u.folk)}</td>
            <td>${u.mobile}</td>
            <td>${u.introduction}</td>
            
            <td>
                <a href="student!add.action?student.class_id=${classId}&student.user_id=${u.id}">指定</a>                
            </td>
        </tr>
      <%--   </c:if> --%>
        </c:forEach>
    </table>
    <g:pager/>
</div>
</body>
</html>
