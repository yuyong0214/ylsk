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
		        <caption class="caption_title">
		          ${class_name} - 课程列表
		          <span class=" f14 fright"> 
		           <a href="course!add.action?course.class_id=${class_id}">新建课程</a>
		           <a href="course!importCourse.action?course.class_id=${class_id}">导入课程</a>
		           <a href="course!exportClassCourseSign.action?course.class_id=${class_id}">导出班级签到详情</a>
		          </span>
		        </caption>
		        <tbody class="c5">
			        <tr class="c3">
			            <td>课程名称</td>
			            <td>开课时间</td>
			            <td>结课时间</td>
			            <td>主讲人</td>
			            <td>操作</td>
			        </tr>
			        <c:forEach items="${courseList}" var="c">
			        <tr>
			            <td>${c.course_name}</td>
			            <td><fmt:formatDate value="${c.course_start)}" pattern="yyyy-MM-dd HH:mm"/></td>
			            <td><fmt:formatDate value="${c.course_end}" pattern="yyyy-MM-dd HH:mm"/></td>
			            <td>${c.lecturer}</td>
			            <td>
			                <a href="course!detail.action?course.id=${c.id}">详情</a>
			                <a href="course!edit.action?course.id=${c.id}">修改</a>
			                <a href="course!delete.action?course.id=${c.id}" onclick="return confirm('您确定要删除【${c.course_name}】吗？');">删除</a>
			                <a href="course!signdetail.action?init&course.id=${c.id}">签到详情</a>
			                <a href="course!evaluate.action?init&course.id=${c.id}">评估详情</a>
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
