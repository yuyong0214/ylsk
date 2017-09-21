<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=0.5,maximum-scale=0.5,maximum-scale=0.5"/>
<meta name="format-detection" content="telephone=no" />
<title>组织活动</title>
<link rel="stylesheet" type="text/css" href="${base}/css/app_web.css"/>
<script type="text/javascript">
	function submit(obj){
		obj.disabled=true;
		obj.style.cssText="background-color:#dedede;";
	}
</script>
</head>
<body>
<!--活动一-->
<c:forEach var="map" items="${list}">
<div class="huodong_table" onClick="window.location.href='${base }/device/activity!detail.action?activity_id=${map.id}&user_id=${user_id}'">	
    <div class="huodong_text c6 f12">
    	<img style="width:10rem; float:left;" src="${base}/images/huodong_pic01.jpg"/>	
		<dl>
		<dd><h4>${map.theme }</h4></dd>
		<c:if test="${map.is_sign==0 }">
			      <dt>时间：${map.begin_time}-${map.end_time }<br/>
                               报名人数：${map.peopleSum }（活动报名结束）</dt>
		</c:if> 
		<c:if test="${map.is_sign==1 }">
			      <dt>时间：${map.begin_time}-${map.end_time }<br/>
                               报名人数：${map.peopleSum }（活动报名中）</dt>
		</c:if> 
		</dl>
    </div>
</div>
<div class="clear20"></div>
</c:forEach>
</body>
</html>
