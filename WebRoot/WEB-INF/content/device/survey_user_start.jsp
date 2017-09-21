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
<title>问卷调查</title>
<link rel="stylesheet" type="text/css" href="${base}/css/app_web.css" />
<script type="text/javascript" src="${base}/js/jquery.js"></script>
<script src="${base}/js/modernizr.js"></script>
<script type="text/javascript">
	function submit(obj){
		obj.disabled=true;
		obj.style.cssText="background-color:#14ad2f;";
	}
	function checkForm(){
		var flag=confirm("确认提交吗？");
		if(flag==true){
			document.getElementById("surveyForm").action = '${base }/device/survey_user!finish.action';
		    document.getElementById("surveyForm").submit();
		    document.getElementById("surveyForm").target = "_self";
		}
	}
</script>
</head>
<body>
<!--题目-->
<div class="timu">
	<h1 class="blue">${survey_title }</h1>
</div>
<!--选择-->
<form id="surveyForm" target="_self" action="${base }/device/survey_user!finish.action" method="post" onsubmit="return false;">
	<input type="hidden" name="user_id" value="${user_id}" id="user_id"/>
	<input type="hidden" name="class_id" value="${class_id}" id="user_id"/>
	<input type="hidden" name="survey.id" value="${survey.id}" id="user_id"/>
	<c:forEach items="${list }" var="l" varStatus="varStartus">
		<div class="wj_table">
			<c:forEach items="${l.questions }" var="q" varStatus="qst">
			<h2>${qst.count}、${q.title }<span class="f12 corange">　(${q.type==1?' 请选择一项 ':' 可选择多个 ' })</span></h2>
			<div class="wj_text c6 f14">
				<dl>
					<c:forEach items="${q.options }" var="o" varStatus="ost">
						<dd>
							<label for="checkbox_b${q.id }${ost.count}">
							<input name="checkbox_b${q.id }" type="${q.type==2?'checkbox':'radio'}" id="checkbox_b${q.id }${ost.count}" value="${o.optionKey }" /><i>✓</i>
							<span>${o.optionKey }、${o.optionValue }</span>
							</label>
						</dd>
					</c:forEach>
				</dl>
			</div>
			</c:forEach>
		</div>
	</c:forEach>
	<!--提交-->
	<div class="wj_text">
		<button type="button" class="f14 button_2" onClick="checkForm()">提交</button>
	</div>
</form>

</body>

</html>