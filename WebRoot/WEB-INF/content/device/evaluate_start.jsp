<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="gfn" uri="/gwypx-functions"%>
<%@ taglib prefix="g" uri="/gwypx-taglib" %>
<%@ taglib prefix="ta" uri="/ta-functions" %>
<c:set var="base" value="${pageContext.request.contextPath}" />
<c:set var="system_name" value="${ta:dictValue('system_config', 'system_name')}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=0.5,maximum-scale=0.5,maximum-scale=0.5"/>
<meta name="format-detection" content="telephone=no" />
<title>评估</title>
<link rel="stylesheet" type="text/css" href="${base}/css/app_web.css" />

<script type="text/javascript" src="${base}/js/jquery.js"></script>
<script src="js/modernizr.js"></script>
<script type="text/javascript">
	function checkForm() {
		var course_score=document.getElementById("course_score");
		var courseware_score=document.getElementById("courseware_score");
		
		if(course_score.value!=""&&isNaN(course_score.value)){
			alert("课程评分必须输入整数数字");
			course_score.focus();
			return false;
		}
		if(courseware_score.value!=""&&isNaN(courseware_score.value)){
			alert("课件评分必须输入整数数字");
			courseware_score.focus();
			return false;
		}
		
	}
</script>

</head>
<body>
<form id="evaluateForm" action="${base }/device/evaluate!finish.action" method="post" onsubmit="return checkForm();">
	<input type="hidden" name="user_id" value="${user_id}" id="user_id"/>
    <input type="hidden" name="paper_id" value="${paper_id}" id="paper_id"/>
    <input type="hidden" name="class_id" value="${class_id}" id="class_id"/>
    <input type="hidden" name="course_id" value="${course_id}" id="course_id"/>
	<div class="pgxq_table">
		<c:if test="${course_name==null }">
	       <h1>综合评估：${class_name }</h1>
	    </c:if>
	    <c:if test="${course_name!=null }">
	       <h1>课程评估：${course_name }</h1>
	    </c:if>
	    <div class="pgxq_text c6 f14">
			<dl>		
			<dd>课程评分：
			<span><input id="course_score" name="course_score" type="text" class="f14 input_1 green" size="10" maxlength="3" />
			</span></dd>
			<dd>课件评分：
			<span><input id="courseware_score" name="courseware_score" type="text" class="f14 input_1 green" size="10" maxlength="3" />
			</span>
			<span class="f12 c9">课件是指教师授课时用的PPT</span></dd>
			</dl>
		</div>
		<c:forEach items="${questions }" var="q" varStatus="qst">
			<dl>
			    <h2>${qst.index+1}、${q.title }${q.type==1?"（单选）":q.type==2?"（多选）":"（判断）" }</h2>
				<div class="wj_text c6 f14">
					<dl>
						<c:forEach items="${q.options }" var="o" varStatus="ost">
							<dd>
								<label for="checkbox_b${q.id }${ost.count}">
								<input name="checkbox_b${q.id }" ${q.type==2?"type='checkbox'":"type='radio'" } id="checkbox_b${q.id }${ost.count}" value="${o.optionKey }" /><i>✓</i>
									<span>${o.optionKey }、${o.optionValue }</span>
								</label>
							</dd>
						</c:forEach>
					</dl>
				</div>
			</dl>
		</c:forEach>
		<h2>您对本课程的意见和建议：</h2>
		<div class="jianyi_text">
		<span><textarea class="textarea_1 f14 c9" name="suggestion" rows="5"></textarea></span>
		<dl class="f14 c9">
		</dl>
		</div>
	</div>
<!--提交-->
<div align="right" style="padding:80px" >
	<button type="submit" class="f14 button_1 ui_button">提交</button>
</div>

</form>


</body>

</html>