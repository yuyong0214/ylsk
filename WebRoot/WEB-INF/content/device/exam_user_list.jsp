<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=0.5,maximum-scale=0.5,maximum-scale=0.5"/>
<meta name="format-detection" content="telephone=no" />
<title>考试</title>
<link rel="stylesheet" type="text/css" href="${base}/css/app_web.css" />
<script type="text/javascript">
	function submit(obj){
		obj.disabled=true;
		obj.style.cssText="background-color:#dedede;";
	}
</script>
</head>
<body>
<!--考试一-->
<c:forEach var="exam" items="${examList }">
		<div class="fenlei_table">
			<h1><span class="corange">[班级考试]</span>${exam.exam_name }</h1>
			<div class="fenlei_text c6 f14">
				<dl>
					<dd>
						考试开始时间：
						<span>${gfn:date(exam.start, "yyyy-MM-dd HH:mm")}</span>
					</dd>
					<dd>
						考试结束时间：
						<span>${gfn:date(exam.end, "yyyy-MM-dd HH:mm")}</span>
					</dd>
					<dd>
						考试次数：
						<span>${exam.exam_times == 0?"不限制":exam.exam_times}</span>
					</dd>
					<dd>
						已试次数：
						<span>${empty exam.times?0:exam.times  }</span>
					</dd>
				</dl>
			</div>
			<div class="pingfen f14">
				<dl>
					<c:if test="${exam.flag==0 }">
						<dd>您还未参加考试<span class="green"></span></dd>
						<dt><button type="button" class="f14 button_1 ui_button" onClick="window.location.href='${base}/device/exam_user!start.action?exam_id=${exam.id }&user_id=${user_id}&class_id=${class_id }'">开始考试</button></dt>
					</c:if>
					<c:if test="${exam.flag==1&&exam.is_past==1 }">
						<dd>考试最高得分 : <span class="green">${exam.examGetScore }</span></dd>
						<dt><button type="button" class="f14 button_1 ui_button" onClick="">已通过</button></dt>
					</c:if>
					<c:if test="${exam.flag==1&&exam.is_past==0&&exam.is_exam==0 }">
						<dd>考试最高得分 : <span class="green">${exam.examGetScore }</span></dd>
						<dt><button type="button" class="f14 button_1 ui_button" onClick="">未通过</button></dt>
					</c:if>
					<c:if test="${exam.flag==1&&exam.is_past==0&&exam.is_exam==1 }">
						<dd>考试最高得分 : <span class="green">${exam.examGetScore }</span></dd>
						<dt><button type="button" class="f14 button_1 ui_button" onClick="window.location.href='${base}/device/exam_user!start.action?exam_id=${exam.id }&user_id=${user_id}&class_id=${class_id }'">开始考试</button></dt>
					</c:if>
					
				</dl>
			</div>
		</div>
		<div class="clear20"></div>
</c:forEach>

</body>

</html>