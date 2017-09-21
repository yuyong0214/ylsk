<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<link href="${base}/js/boilerplate.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="${base}/css/ph.css" type="text/css"></link>
<!--[if lt IE 9]>
<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<script src="${base}/js/respond.min.js"></script>
<script type="text/javascript" src="${base}/js/jquery.js"></script>
<style>
a{
text-decoration:none;
}
.Test_q_c li,.Test_q_c_1 li{line-height:300%;padding-left:0px;}
</style>
</head>
<body>
<div class="gridContainer clearfix">
<div class="LayoutDiv1">
        <div class="title_t"><div class="title_t_1">
        <span>${attr.title}</span>
        </div></div>
        <div class="test_t">
 		<c:forEach var="cr" items="${attr.contentsResult}">
	        <div class="Test_q">
        	<div class="Test_q_t" ><span class="q_n">用户名称:${cr.key }</span></div>
        	<div class="Test_q_c check_1">
        		<ul style="list-style-type:none">
                	<li>${cr.value }</li>
                </ul>
            </div>
         </div>
        </c:forEach>
        <div class="btn_d">
           <input type="button" class="btn_da" value="返回" onclick="window.location = 'survey_result!list.action?class_id=${attr.class_id }&user_id=${attr.user_id }';"/>
        </div>
        </div>
</div>
</div>
<script type="text/javascript">
	$(function(){
		$("li").removeClass("li_rad");
		$("li").removeClass("li_radc");
		$("li").removeClass("li_chec");
		$("li").removeClass("li_che");
	});
	
</script>
</body>
</html>
