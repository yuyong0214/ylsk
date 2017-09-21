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
		        <caption class="caption_title">${clazz.class_name}
		          - 研讨组列表 <span class=" f14 fright"> <a
		            href="discuss!add.action?discuss.class_id=${clazz.id}">新建研讨组</a>
		          </span>
		        </caption>
		        <tbody class="c5">
			          <tr class="c3">
			            <td>研讨主题</td>
			            <td>研讨时间</td>
			            <td>研讨组</td>
			            <td>研讨地点</td>
			            <td>主持人</td>
			            <td>操作</td>
			          </tr>
			          <c:forEach items="${discussList}" var="d">
			            <tr>
			              <td>${d.topic}</td>
			              <td>${gfn:date(d.discuss_time, 'yyyy-MM-dd HH:mm')}</td>
			              <td>第 ${d.discuss_no} 组</td>
			              <td>${d.location}</td>
			              <td>${d.compere}</td>
			              <td><a href="discuss!edit.action?discuss.id=${d.id}">修改</a>
			                <a
			                href="discuss!delete.action?discuss.id=${d.id}&discuss.class_id=${d.class_id}"
			                onclick="return confirm('您确定要从班级中删除该研讨组吗？');">删除</a></td>
			            </tr>
			          </c:forEach>
		        </tbody>
	    	</table>
	    	<g:pager/>
	    </div>
	</div>
</body>
</html>
