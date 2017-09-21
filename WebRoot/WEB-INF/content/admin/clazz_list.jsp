<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="${base}/js/jquery.js"></script>
<script type="text/javascript">
  function clearParams(){
      $(":input[name='clazz.class_name']").val("");
  }
</script>
</head>
<body style="background-color:#efeff8;">
	<div class="content_box">
		<div class="content_tb">
		    <s:form action="clazz!list">
		    <table class="list_table c3">
		        <caption class="caption_title">班级查询</caption>
		        <tbody class="c5 f14">
			        <tr>
			            <td>班级名称</td>
			            <td>
			                <input type="text" name="clazz.class_name" class="input_2" value="${clazzParams['clazz.class_name']}"/>
			                <%--
			                <s:textfield name="clazz.class_name" value="%{#session.clazzParams['clazz.class_name']}"/>
			                --%>
			            </td>
			        </tr>
			        <tr style="text-align:center;">
						<td colspan="6">
                            <input name="chaxun" onclick="submit()" type="button" class="button_2 cf" value="查询" />
                            <input type="button" class="button_2 cf" value="重置" onclick="clearParams()"/>
                        </td>
					</tr>
				</tbody>
		    </table>
		    </s:form>
	    </div>
	    <div class="content_tb">
		    <table class="list_table c3 f14">
		        <caption class="caption_title">班级列表</caption>
		        <tbody class="c5">
			        <tr class="c3">
			            <td>班级名称</td>
			          	<td>开班时间</td>
			            <td>结业时间</td>
			            <td align="center">操作</td>
			        </tr>
			        <c:forEach items="${clazzList}" var="c">
			        <tr>
			            <td>${c.class_name}</td>
			            <td>${gfn:date(c.start, "yyyy-MM-dd")}</td>
			            <td>${gfn:date(c.end, "yyyy-MM-dd")}</td>
			            <td class="center">
			                <a href="clazz!detail.action?clazz.id=${c.id}">详情</a>
			                
			                <c:if test="${loginUser.user_type == 1}">
			                <a href="clazz!edit.action?clazz.id=${c.id}">修改</a>
			                <a href="clazz!delete.action?clazz.id=${c.id}" onclick="return confirm('您确定要删除【${c.class_name}】吗？');">删除</a>
			                </c:if>
			                
			                <c:if test="${loginUser.user_type == 1 || c.staff_type != 0}">
			                <a href="course!list.action?course.class_id=${c.id}">课程</a>
			                <a href="student!list.action?student.class_id=${c.id}&init">学员</a>
			                <a href="staff!list.action?staff.class_id=${c.id}">工作人员</a>
			                <a href="discuss!list.action?discuss.class_id=${c.id}">研讨组</a>
			                <a href="resource!list.action?resource.class_id=${c.id}&resource.class_name=${c.class_name}&init">资源</a>
			                <a href="restaurant!list.action?restaurant.class_id=${c.id}&restaurant.class_name=${c.class_name}">就餐</a>
			                <a href="notice!list.action?notice.class_id=${c.id}&init">通知</a>
			                <a href="chat!list.action?chat.class_id=${c.id}">交流</a>
			                <a href="photo!list.action?photo.class_id=${c.id}&init">相册</a>
			                <a href="exam!list.action?exam.class_id=${c.id}&init">考试</a>
			                <a href="activity!list.action?activity.class_id=${c.id}&init">活动</a>
			                </c:if>
			                
			                <a href="suggestion!list.action?suggestion.class_id=${c.id}&suggestion.type=1">意见</a>
			                <a href="faq!list.action?faq.class_id=${c.id}">答疑解惑</a>
			                <a href="vote!list.action?vote.class_id=${c.id}&init">投票</a>
			                <a href="clazz!evaluate.action?class_id=${c.id}&init">评估</a>
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
