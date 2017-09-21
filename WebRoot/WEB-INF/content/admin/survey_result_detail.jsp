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
<%--
    
    <s:debug>rr</s:debug>
    <s:property value="#attr.list" />
    
    --%>

    <div class="blank"></div>
    <table class="listTable">
        <caption><span style="color: blue">${attr.title}</span>题目填写内容列表</caption>
        <tr>
		    <th>用户名称</th>
		    <th>填写内容</th>
		</tr>
 		<c:forEach var="cr" items="${attr.contentsResult}">
	        <tr>
	        	<td>${cr.key }</td>
	        	<td class="left">${cr.value }</td>
		    </tr>
        </c:forEach>
        <tr>
            <td class="left" colspan="2">
                <input type="button" class="btn" value="返回" onclick="history.back();"/>
            </td>
        </tr>
    </table>
        <g:pager/>
</div>
</body>
</html>
