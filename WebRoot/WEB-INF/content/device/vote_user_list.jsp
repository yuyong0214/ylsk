<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=0.5,maximum-scale=0.5,maximum-scale=0.5"/>
<meta name="format-detection" content="telephone=no" />
<title>微投票</title>
<link rel="stylesheet" type="text/css" href="${base}/css/app_web.css"/>
<script type="text/javascript" src="${base}/js/jquery.js"></script>
<script type="text/javascript">
	function submit(obj){
		obj.disabled=true;
		obj.style.cssText="background-color:#dedede;";
	}
</script>
</head>
<body>
<c:forEach var="map" items="${voteList}">
<div class="fenlei_table">
	<h1><span class="corange">[微投票]</span>${map.title }</h1>
	<div class="fenlei_text c6 f14">
		<dl>		
		<dd>开始时间：
		<span>${map.begin_time }</span></dd>
		<dd>结束时间：
		<span>${map.end_time }</span></dd>
		</dl>
	</div>
	<div class="pingfen f14">
		<dl>
			<c:if test="${map.is_start==2&&map.flag==0}">
				<dt><button type="button" class="f14 button_1 ui_button" onClick="window.location.href='${base }/device/vote_user!start.action?vote_id=${map.id}&user_id=${user_id}&class_id=${class_id}'">参与投票</button></dt>
			</c:if>
		    <c:if test="${map.is_start==2&&map.flag==1}">
		    	<dt><button type="button" class="f14 button_1 ui_button" onClick="window.location.href='${base }/device/vote_user!detail.action?vote_id=${map.id}&user_id=${user_id}&class_id=${class_id}&flag=0'">已投票,查看投票结果</button></dt>
		    </c:if>
		    <c:if test="${map.is_start==0}">
		    	<dt><button type="button" class="f14 button_1 ui_button">未开始</button></dt>
		    </c:if>
		    <c:if test="${map.is_start==1}">
		    	<dt><button type="button" class="f14 button_1 ui_button" onClick="window.location.href='${base }/device/vote_user!detail.action?vote_id=${map.id}&user_id=${user_id}&class_id=${class_id}&flag=0'">已结束,查看投票结果</button></dt>
		    </c:if>
		</dl>
	</div>
</div>
<div class="clear20"></div>
</c:forEach>
</body>
</html>
