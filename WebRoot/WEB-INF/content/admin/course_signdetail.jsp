<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${base}/js/jquery.js"></script>
<script>
	function f(user_id) {
		if (confirm("你确定要补签吗？")) {
			window.location.href = "course!resign.action?course_id=${course.id }&class_id=${course.class_id}&user_id="
					+ user_id;
		}
	}
</script>
</head>
<body>
	<div class="content_box">
	    <div class="content_tb">
	    	<s:form action="course!signdetail">
		        <s:textfield type="hidden" name="course.id"
		          value="%{#session.courseSignParams['course.id']}" />
		        <table class="list_table c3">
			          <caption class="caption_title">签到详情查询</caption>
			          <tbody class="c5 f14">
				          <tr>
				            <td>学员姓名</td>
				            <td><s:textfield cssClass="input_2" name="course.realname"
				                value="%{#session.courseSignParams['course.realname']}"></s:textfield>
				            </td>
				
				            <td width="100px">签到状态</td>
				            <td><s:select name="signstate"
				                list="#{0:'已签到',1:'未签到'}" listKey="key"
				                listValue="value"
				                value="%{#session.courseSignParams['signstate']}"></s:select>
				            </td>
				          </tr>
				          <tr class="center">
				            <td colspan="6"><s:submit cssClass="button_2 cf"
				                value="查询" /></td>
				          </tr>
			          </tbody>
		        </table>
			</s:form>
		</div>
		<div class="content_tb">
	    	<table class="list_table c3 f14">
		        <caption class="caption_title">
		          <c:choose>
		            <c:when test="${signstate=='1' }">${course.course_name} - 未签到学员</c:when>
		            <c:otherwise>${course.course_name} - 已签到学员  <span
		                class=" f14 fright"> <a
		                href="${base }/admin/course!exportcourseSign.action"
		                >导出课程签到详情</a>
		              </span>
		            </c:otherwise>
		          </c:choose>
		
		        </caption>
		        <tbody class="c5">
			        <tr class="c3">
			          <td>学员姓名</td>
			          <td><c:choose>
			              <c:when test="${signstate=='1' }">操作</c:when>
			              <c:otherwise>签到时间</c:otherwise>
			            </c:choose></td>
			        </tr>
			        <c:forEach items="${signlist}" var="s">
			          <tr>
			            <td>${s.realname}</td>
			            <td><c:choose>
			                <c:when test="${signstate=='1' }">
			                  <a href="javascript:void(0)" onclick="f(${s.user_id})">补签</a>
			                </c:when>
			                <c:otherwise>
			                  <fmt:formatDate value="${s.create_time)}"
			                    pattern="yyyy-MM-dd HH:mm" />
			                </c:otherwise>
			              </c:choose></td>
			          </tr>
			        </c:forEach>
		        </tbody>
	    	</table>
	       <g:pager/>
	    </div>
	</div>
</body>
</html>
