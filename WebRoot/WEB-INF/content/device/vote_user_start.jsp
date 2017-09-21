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
<title>微投票</title>
<link rel="stylesheet" type="text/css" href="${base}/css/app_web.css" />

<script type="text/javascript" src="${base}/js/jquery.js"></script>
<script src="${base}/js/modernizr.js"></script>
<script type="text/javascript">
function checkForm(){		
	var flag = true;
		var inputFlag = false;
		$("input[name='answer']").each(function(index, domEle){
			if($(domEle).prop('checked')){
				inputFlag = true;
			}
		  });
		if(!inputFlag){
			   flag = false;
		 } 
	if(!flag){
	         document.getElementById("examForm").target = "_self";
	}else{
	        document.getElementById("examForm").action = '${base }/device/vote_user!finish.action';
			document.getElementById("examForm").submit();
	        document.getElementById("examForm").target = "_self";
	}
}
	
</script>
<style type="text/css">
	.header{
		color: #999;
    	text-align: center;
    	height:50px;
    	line-height:50px;
    	background-color: white;
	}
</style>

</head>
<body>
<!--题目-->
	<div class="timu">
		<h1 class="blue">${title }</h1>
	</div>
<!--选择-->
	<form id="examForm" target="_self" action="${base }/device/vote_user!finish.action" method="post" onsubmit="return checkForm();">
		<input type="hidden" name="user_id" value="${user_id}" id="user_id"/>
		<input type="hidden" name="vote_id" value="${vote_id}" id="vote_id"/>
		<input type="hidden" name="class_id" value="${class_id}" id="class_id"/>
		<c:forEach items="${option_contents}" var="q" varStatus="s">
			<div class="wj_table">
				<h2>${s.index + 1}. ${q.title}<span class="f12 corange">&nbsp; (${q.question_type==1?"单选":"多选"})</span></h2>
				<div class="wj_text c6 f14">
					<dl>	
					<c:forEach items="${q.options}" var="opt" varStatus="status">
						<dd>
							<label for="answer${status.index}">
							  <input type="${q.question_type==2?'checkbox':'radio'}"  name="answer" id="answer${status.index}" value="${opt.optionkey}" /><i>✓</i>
							  <span>
							  ${status.count == 1?"a、":""}
					          ${status.count == 2?"b、":""}
					          ${status.count == 3?"c、":""}
					          ${status.count == 4?"d、":""}
					          ${status.count == 5?"e、":""}
					          ${status.count == 6?"f、":""}
					          ${status.count == 7?"g、":""}
					          ${status.count == 8?"h、":""}
					          ${status.count == 9?"i、":""}
					          ${status.count == 10?"j、":""}
					          ${opt.optionvalue}
					          </span>
					          <a class="fright corange">${opt.optionPer}</a>
					        </label>
						</dd>
					</c:forEach>	
					</dl>
				</div>
			</div>
		</c:forEach>
	</form>
<!--提交-->
	<div class="wj_text">
		<button type="button" class="f14 button_2" onClick="checkForm()">提交</button>
	</div>
</body>
</html>