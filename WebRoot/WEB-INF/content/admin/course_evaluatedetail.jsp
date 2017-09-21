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
<meta charset="utf-8"/>
<meta name="viewport" id="WebViewport" content="telephone=no"/>
<title>评估详情</title>
<link rel="stylesheet" type="text/css" href="${base}/css/app_web.css"/>

<script type="text/javascript" src="${base}/js/jquery.js"></script>
<script src="js/modernizr.js"></script>
<script type="text/javascript">
</script>

</head>
<body>
<form id="evaluateForm" action="" method="post">
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
			<span><input name="course_score"  value="${evaluate.course_score}" type="text" class="f14 input_1 green" size="10" maxlength="3">
			</span></dd>
			<dd>课件评分：
			<span><input name="courseware_score" value="${evaluate.courseware_score}" type="text" class="f14 input_1 green" size="10" maxlength="3">
			</span>
			<span class="f12 c9">课件是指教师授课时用的PPT</span></dd>
			</dl>
		</div>
		<c:forEach items="${questions }" var="q" varStatus="qst">
			<dl>
			    <h2>${q.title }${q.type==1?"（单选）":q.type==2?"（多选）":"（判断）" }</h2>
				<div class="wj_text c6 f14">
					<dl>
						<c:forEach items="${q.options }" var="o" varStatus="ost">
							<dd>
								<label for="checkbox_b${q.id }${ost.count}">
									<input name="checkbox_b${q.id }" ${q.type==2?"type='checkbox'":"type='radio'" } id="checkbox_b${q.id }${ost.count}" value="${o.optionKey }" ${o.checked==1?"checked='checked'":""}/><i>✓</i>
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
		<span><textarea class="textarea_1 f14 c9" name="suggestion" rows="5" >${evaluate.suggestion}</textarea></span>
		<dl class="f14 c9">
		<dd>您可以输入1-100字</dd>
		</dl>
		</div>
	</div>
<div class="clear30"></div>
<!--提交-->
<!-- <div class="wj_text">
	<button type="submit" class="f14 button_2">提交</button>
</div> -->
    <div align="right" style="padding-right:80px;">
		<button type="button" class="f14 button_1 ui_button" onclick="history.go(-1)">返回</button>
	</div>
<div class="clear30"></div>
</form>


</body>

</html>