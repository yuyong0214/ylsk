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
<title>考试</title>
<link rel="stylesheet" type="text/css" href="${base}/css/app_web.css" />

<script type="text/javascript" src="${base}/js/jquery.js"></script>
<script src="${base}/js/modernizr.js"></script>
<script type="text/javascript">

	var totalTime = ${surplusTime};
	var timer;
	function cutTime()
	{
		hour = Math.floor(totalTime/3600);
		minutes = Math.floor((totalTime%3600) / 60);
		seconds = Math.floor((totalTime%3600) % 60);
		var hourTr=hour;
		var minutesTr=minutes;
		var secondsTr=seconds;
		if(hour<10){
			hourTr="0"+hour;
		}
		if(minutes<10){
			minutesTr="0"+minutes;
		}
		if(seconds<10){
			secondsTr="0"+seconds;
		}
		$("#time").html(hourTr+":"+minutesTr+":"+secondsTr);
		if(minutes < 10){
			$("#time").css("color", "#FF8000");
		}
		totalTime--;
		if(totalTime<=0)
		{
			clearInterval(timer);
		    alert("考试时间到！");
		    $("#time").html("");
		    document.getElementById("examForm").action = '${base }/device/exam_user!finish.action';
		    document.getElementById("examForm").submit();
		    document.getElementById("examForm").target = "_self";
		}
		if(totalTime == 300){
			alert("距离考试结束还有5分钟，请抓紧时间作答！");
		 } 
	 }
	timer = setInterval("cutTime()",1000); 
	//5分钟自动保存一次   
	 timer = setInterval("savePager()",300000); 
	 
	
	//保存  
	function savePager()
	 {
		$("#examForm").form("submit", {
			url : "${base }/device/exam_user!saveQuestion.action"
		});		
	 }  


	function checkForm(){
		var flag=confirm("确认交卷吗？");
		if(flag==true){
			document.getElementById("examForm").action = '${base }/device/exam_user!finish.action';
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
	<div class="header">
		<p>本页剩余作答时间   <span id="time" style="color: #FF8000;"></span></p>
	</div>

<!--题目-->
<div class="timu">
	
	<h1 class="blue">${exam_name }</h1>
	<span class="f12 c9">本次考试总分${totalScore }分，考试时间${time_limit }分钟！</span>
</div>
<form id="examForm" target="_self" action="${base }/device/exam_user!finish.action" method="post">
	<input type="hidden" name="user_id" value="${user_id}" id="user_id"/>
    <input type="hidden" name="exam_id" value="${exam_id}" id="exam_id"/>
    <input type="hidden" name="class_id" value="${class_id}" id="exam_id"/>

<c:forEach items="${list }" var="l" varStatus="varStartus">
	<div class="wj_table">
		<h3>${varStartus.index==0?"一":varStartus.index==1?"二":"三" }、${l.typeName }（<%-- 每题${l.questionNum }分， --%>共${l.questionNum }题，总分${l.questionTotalScore }分）</h3>
		<c:forEach items="${l.questions }" var="q" varStatus="qst">
			<dl>
				<h2>${qst.count}.${q.title }  (${q.score}分)</h2>
				<div class="wj_text c6 f14">
					<dl>
						<c:forEach items="${q.options }" var="o" varStatus="ost">
							<dd>
								<label for="checkbox_b${q.id }${ost.count}">
								<input name="checkbox_b${q.id }" ${l.typeName=="多选题"?"type='checkbox'":"type='radio'" } id="checkbox_b${q.id }${ost.count}" value="${o.optionKey }" /><i>✓</i>
								
								<c:if test="${q.question_type==3 }">
									<span>${o.optionValue }</span>
								</c:if>
								<c:if test="${q.question_type==1||q.question_type==2 }">
									<span>
									${ost.count == 1?"A、":""}
									${ost.count == 2?"B、":""}
									${ost.count == 3?"C、":""}
									${ost.count == 4?"D、":""}
									${ost.count == 5?"E、":""}
									${ost.count == 6?"F、":""}
									${ost.count == 7?"G、":""}
									${ost.count == 8?"H、":""}
									${ost.count == 9?"I、":""}
									${ost.count == 10?"J、":""}
									${o.optionValue }
									</span>
								</c:if>
								
								</label>
							</dd>
						</c:forEach>
						
					</dl>
				</div>
			</dl>
		</c:forEach>
	</div>
</c:forEach>

<!--提交-->
<div class="wj_text">
	<button type="submit" class="f14 button_2">提交试卷</button>
</div>

</form>


</body>

</html>