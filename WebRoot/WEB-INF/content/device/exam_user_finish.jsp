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
			window.location.href="exam_user!userExamList.action?user_id="+${user_id}+"&class_id="+${class_id};
		}

		
	</script>
</head>
<body>
	<div class="web_text c6 f14">
		<center>
		<h3>您本次得分为${thisScore }分<br/>最高得分为${score}分<br/>本次考试${isPass==1?'已通过':'未通过' }<br />考试结束，感谢您的参与!</h3>
		<button type="button" class="f14 button_1 ui_button" onclick="toList()">返回</button>
		</center>
	</div>
</body>
</html>