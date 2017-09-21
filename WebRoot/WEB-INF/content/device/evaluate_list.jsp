<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=0.5,maximum-scale=0.5,maximum-scale=0.5"/>
<meta name="format-detection" content="telephone=no" />
<title>教学评估</title>
<link rel="stylesheet" type="text/css" href="${base}/css/app_web.css" />
<script type="text/javascript" src="${base}/js/jquery.js"></script>
<script type="text/javascript">
	function submit(obj){
		obj.disabled=true;
		obj.style.cssText="background-color:#dedede;";
	}
</script>
</head>
<body>
<!-- 课程评估 -->
<c:forEach var="map" items="${paperList}">
	<c:if test="${map.is_evaluate==1 }">
		<div class="fenlei_table">
			<h1><span class="corange">[课程评估]</span>${map.course_name }</h1>
			<div class="fenlei_text c6 f14">
				<dl>		
				<dd>授课主讲人：
				<span>${map.lecturer }</span></dd>
				<dd>评估开始时间：
				<span>${gfn:date(map.course_start, "yyyy-MM-dd HH:mm:ss")}</span></dd>
				<dd>评估结束时间：
				<span>${gfn:date(map.course_end, "yyyy-MM-dd HH:mm:ss")}</span></dd>
				</dl>
			</div>
			<div class="pingfen f14" style="text-align:center;">
				<!-- <dd>评估平均得分：<span class="green">95</span></dd>  -->
					<button type="button" class="f14 button_1 ui_button" onClick="window.location.href='${base }/device/evaluate!start.action?user_id=${user_id}&class_id=${class_id}&paper_id=${map.id}&course_id=${map.course_id }'">我要评估</button>
			</div>
		</div>
		<div class="clear20"></div>
	</c:if>
</c:forEach>
<!-- 综合评估 -->
<c:forEach var="map" items="${classPaperList}">
	<c:if test="${map.is_evaluate==1 }">
		<div class="fenlei_table">
			<h1><span class="corange">[综合评估]</span>${map.class_name }</h1>
			<div class="fenlei_text c6 f14">
				<dl>		
				<dd>班级开始日期：
				<span>${gfn:date(map.class_start, "yyyy-MM-dd")}</span></dd> 
				<dd>班级结束日期：
				<span>${gfn:date(map.class_end, "yyyy-MM-dd")}</span></dd> 
				<dd>评估开始时间：
				<span>${gfn:date(map.begin_time, "yyyy-MM-dd")}</span></dd>
				<dd>评估结束时间：
				<span>${gfn:date(map.end_time, "yyyy-MM-dd")}</span></dd>
				</dl>
			</div>
			<div class="pingfen f14" style="text-align:center;">
				<!-- <dd>评估平均得分：<span class="green">95</span></dd>  -->
				<c:if test="${map.is_evaluate==0 }">
					<button type="button" class="f14 button_1 ui_button" onClick="window.location.href='${base }/device/evaluate!detail.action?user_id=${user_id}&class_id=${class_id}&paper_id=${map.id}'">查看评估</button>
				</c:if>
				<c:if test="${map.is_evaluate==1 }">
					<button type="button" class="f14 button_1 ui_button" onClick="window.location.href='${base }/device/evaluate!start.action?user_id=${user_id}&class_id=${class_id}&paper_id=${map.id}'">我要评估</button>
				</c:if>
			</div>
		</div>
		<div class="clear20"></div>
	</c:if>
</c:forEach>
<!-- 已评估 -->
<c:forEach var="map" items="${paperList}">
	<c:if test="${map.is_evaluate==0 }">
		<div class="fenlei_table">
				<h1><span class="corange">[课程评估]</span>${map.course_name }</h1>
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
						<button type="button" class="f14 button_1 ui_button" onClick="window.location.href='${base }/device/evaluate!detail.action?user_id=${user_id}&class_id=${class_id}&paper_id=${map.id}&course_id=${map.course_id }'">查看评估</button>
				</div>
			</div>
			<div class="clear20"></div>
		</c:if>
</c:forEach>
<c:forEach var="map" items="${classPaperList}">
	<c:if test="${map.is_evaluate==0 }">
		<div class="fenlei_table">
			<h1><span class="corange">[综合评估]</span>${map.class_name }</h1>
			<div class="fenlei_text c6 f14">
				<dl>		
				<dd>班级开始日期：
				<span>${map.class_start }</span></dd> 
				<dd>班级结束日期：
				<span>${map.class_end }</span></dd> 
				<dd>评估开始时间：
				<span>${map.begin_time }</span></dd>
				<dd>评估结束时间：
				<span>${map.end_time }</span></dd>
				</dl>
			</div>
			<div class="pingfen f14" style="text-align:center;">
				<!-- <dd>评估平均得分：<span class="green">95</span></dd>  -->
					<button type="button" class="f14 button_1 ui_button" onClick="window.location.href='${base }/device/evaluate!detail.action?user_id=${user_id}&class_id=${class_id}&paper_id=${map.id}'">查看评估</button>
			</div>
		</div>
		<div class="clear20"></div>
	</c:if>
</c:forEach>
</body>

</html>