<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=0.5,maximum-scale=0.5,maximum-scale=0.5"/>
<meta name="format-detection" content="telephone=no" />
<title>组织活动</title>
<link rel="stylesheet" type="text/css" href="${base}/css/app_web.css" />

<script src="${base}/js/modernizr.js"></script>
<script type="text/javascript">
	function submit(obj){
		obj.disabled=true;
		obj.style.cssText="background-color:#14ad2f;";
		
	}
</script>

</head>
<body>
<div class="top_pic">
	<img src="${base}/images/huodong_pic01.jpg" />
</div>
<div class="clear30"></div>
<div class="web_width">
	<div class="titel f16">
	<h1 class="f20 c3">${activity.theme }</h1>
	</div>
	<div class="hdsm_text c9">
	<span><img style="width:5rem; float:right;" src="${base}/images/bj01.png"/></span>
	<p>时间：${begintime }至${endtime }<br/>
	地点：${activity.site }<br/>
	费用：凭学员证报名即可免费参与<br/>
	联系人：${activity.initiator }<br/>
	电话：010-88888888
	</p>
	<span><img style="width:5rem; float:left;" src="${base}/images/bj02.png"/></span>
	</div>
	<div class="titel f16">
	<h1 class="f16 c3">活动简介</h1>
	</div>
	<div class="web_text c6 f14">
	<p>
	${activity.content }
	</p>
	<p>
	<img src="${base }/images/huodong_pic02.jpg"/>
	</p>
	</div>
	<c:if test="${is_sign==1}">
	<div>
	<button type="button" class="f14 button_2" onclick="window.location.href='${base }/device/activity!submit.action?activity_id=${activity.id}&class_id=${activity.class_id}&user_id=${user_id}'">报名参加</button>
	</div>
	</c:if>
	<c:if test="${is_sign==0}">
	<div>
	<button type="button" class="f14 button_2" onclick="history.go(-1)">返回</button>
	</div>
	</c:if>
	<div class="clear30"></div>
</div>
<div class="clear30"></div>
</body>
</html>
