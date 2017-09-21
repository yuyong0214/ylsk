<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0,telephone=no"/>
<title>教学评估</title>
<link rel="stylesheet" type="text/css" href="${base}/css/app_web.css">
<script type="text/javascript">
	function submit(obj){
		obj.disabled=true;
		obj.style.cssText="background-color:#dedede;";
	}
</script>
</head>
<body>
<c:forEach var="map" items="${paperList}">
<div class="fenlei_table">
	<h1>${map.course_name }</h1>
	<div class="fenlei_text c6 f14">
		<dl>		
		<dd>授课主讲人：
		<span>${map.lecturer }</span></dd>
		<dd>评估开始时间：
		<span>${map.begin_time }</span></dd>
		<dd>评估结束时间：
		<span>${map.end_time }</span></dd>
		</dl>
	</div>
	<div class="pingfen f14" style="text-align:center;">
		<!-- <dd>评估平均得分：<span class="green">95</span></dd>  -->
		<c:if test="${map.is_evaluate==0 }">
			<button type="button" class="f14 button_1 ui_button" onClick="window.location.href='${base }/device/evaluate!detail.action?user_id=${user_id}&class_id=${class_id}&paper_id=${map.id}&course_id=${map.course_id }'">查看评估</button>
		</c:if>
		<c:if test="${map.is_evaluate==1 }">
			<button type="button" class="f14 button_1 ui_button" onClick="window.location.href='${base }/device/evaluate!start.action?user_id=${user_id}&class_id=${class_id}&paper_id=${map.id}&course_id=${map.course_id }'">我要评估</button>
		</c:if>
	</div>
</div>
<div class="clear20"></div>
</c:forEach>
</body>
</html>
