<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width,initial-scale=0.5,maximum-scale=0.5,maximum-scale=0.5"/>
	<meta name="format-detection" content="telephone=no" />
	<title></title>
	<link rel="stylesheet" type="text/css" href="${base}/css/app_web.css"/>
	<script type="text/javascript">
		function toList(){
			window.location.href="'${base}/device/exam_user!userExamList.action?user_id=+${user_id}+&class_id=${class_id}'";
		}

		
	</script>
</head>
<body>
	<div class="web_text c6 f14">
		<center>
		<h3>评估结束，感谢您的参与!</h3>
		<c:if test="${course_id!=0 }">
			<button type="button" class="f14 button_1 ui_button" onclick="window.location.href='${base}/device/evaluate!evaluateList.action?paper_id=${paper_id}&user_id=${user_id}&class_id=${class_id}&course_id=${course_id}'" >返回</button>
	    </c:if>
		<c:if test="${course_id==0 }">
			<button type="button" class="f14 button_1 ui_button" onclick="window.location.href='${base}/device/evaluate!evaluateList.action?paper_id=${paper_id}&user_id=${user_id}&class_id=${class_id}'" >返回</button>
	    </c:if>
	    </center>
	</div>
</body>
</html>