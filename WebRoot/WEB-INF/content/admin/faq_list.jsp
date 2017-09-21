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
    <table class="list_table c3 f14">
        <caption class="caption_title">${clazz.class_name } - 答疑主题列表
        	<span class=" f14 fright"> 
        	<a href="faq!add.action?faq.class_id=${faq.class_id }&faq.user_id=${sessionScope.loginUser.id}">新建主题帖</a>
        	</span>
        </caption>
        <tbody class="c5">
        <tr class="c3">
            <td>内容</td>
            <td width="200px">创建时间</td>
            <td width="150px">操作</td>
        </tr>
        <c:forEach items="${faqList}" var="f">
        <tr>
            <td>${f.content}</td>
            <td>${gfn:date(f.create_time, "yyyy-MM-dd HH:mm:ss")}</td>
            <td>
                <a href="faq!reply.action?faq.id=${f.id }">进入</a>
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
