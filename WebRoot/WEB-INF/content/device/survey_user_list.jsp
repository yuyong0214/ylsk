<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=0.5,maximum-scale=0.5,maximum-scale=0.5"/>
<meta name="format-detection" content="telephone=no" />
<title>问卷调查</title>
<link rel="stylesheet" type="text/css" href="${base}/css/app_web.css"/>
<script type="text/javascript">
	function submit(obj){
		obj.disabled=true;
		obj.style.cssText="background-color:#dedede;";
	}
</script>
</head>
<body>
<c:forEach var="sl" items="${surveyList}">
<div class="fenlei_table">
	<h1><span class="corange">[问卷调查]</span>${sl.title }</h1>
	<div class="fenlei_text c6 f14">
		<dl>		
		<dd>开始时间：
		<span><fmt:formatDate value="${sl.create_time }" pattern="yyyy-MM-dd HH:mm:ss"/></span></dd>
		<dd>结束时间：
		<span><fmt:formatDate value="${end_time }" pattern="yyyy-MM-dd HH:mm:ss"/></span></dd>
		</dl>
	</div>
	<div class="pingfen f14">
		<dl>
			<c:if test="${sl.is_participate==1 }">
				<dt><button type="button" class="f14 button_1 ui_button">已参与</button></dt>
			</c:if>
			<c:if test="${sl.open==1&&sl.is_participate==0}">
				<dt><button type="button" class="f14 button_1 ui_button" onClick="window.location.href='${base }/device/survey_user!start.action?survey.id=${sl.id}&user_id=${user_id}&class_id=${class_id}'">参与调查</button></dt>
			</c:if>
		    <c:if test="${sl.open==0&&sl.is_participate==0}">
		   	 	<dt><button type="button" class="f14 button_1 ui_button">已关闭</button></dt>
		    </c:if>
	   </dl>
	</div>
</div>
<div class="clear20"></div>
</c:forEach>
</body>
</html>
