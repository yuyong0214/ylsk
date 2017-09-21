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
a:link { 
font-size: 18px; 
color: #000000; 
text-decoration: none; 
} 
a:visited { 
font-size: 18px; 
color: #000000; 
text-decoration: none; 
} 
a:hover { 
font-size: 18px; 
color: #999999; 
text-decoration: underline; 
} 

.Test_q_c li,.Test_q_c_1 li{line-height:300%;padding-left:0px;}
</style>
</head>
<body>
<div class="gridContainer clearfix">
<div class="LayoutDiv1">
<c:if test="${attr.isHeadmaster==-1}">
     	<div class="test_t"><div class="wenjian">用户没有该权限，问卷结果无法查看</div></div></c:if>
    
  <div  id="myTable" style="display: none;">
    <div class="title_t"><div class="title_t_1">问卷题目列表</div></div>
    <div class="test_t">
        <c:forEach var="map" items="${attr.list}">
        	<div class="Test_q" >
	            <s:if test="#attr.map.resultmap.type==4">
		            <div class="Test_q_t"><span class="q_n">题目${map.sn }:${map.resultmap.title }(填写题)</span></div>
		            <div class="Test_q_c check_1">
		            	<s:if test="#attr.isHeadmaster==0">
		            		<ul style="list-style-type:none">
		            			<li>${map.resultmap.content}</li>
		            		</ul>
		            	</s:if>
		            	<s:else>
			            	<s:if test="#attr.map.title_flag==1">
			            	<div align="right">【<a href="survey_result!detail.action?survey_id=${map.resultmap.survey_id }&class_id=${attr.class_id }&user_id=${attr.user_id }">查看详情</a>】</div>
			            	</s:if>
			            	<s:else>
			            	【没有人参与答卷】
			            	</s:else>
		            	</s:else>
		            </div>
	            </s:if>
	            <s:else>
		            <div class="Test_q_t"><span class="q_n">题目${map.sn }:${map.resultmap.title }</span></div>
		            <div class="Test_q_c check_1">
                    <ul style="list-style-type:none">
			        <c:forEach var="contents" items="${map.contentsList}" varStatus="i">
			            <li><span>${contents }</span>
			            <span  class="p_bar"><div style="width:${map.resultmap.percountbytitle[i.index]}%;"></div></span>
			            <span><fmt:formatNumber value="${map.resultmap.percountbytitle[i.index]}" pattern="##.##" minFractionDigits="2"></fmt:formatNumber>%</span>
			            </li>
			        </c:forEach>
			        </ul>
			        </div>
		        </s:else>
		    </div>
        </c:forEach>
    </div>
    </div>    
 </div>
</div>
</div>
<script type="text/javascript">
	function show(){
		var myTable=document.getElementById("myTable");
		myTable.style.display="block";
	}
	function hidden(){
		var myTable=document.getElementById("myTable");
		myTable.style.display="none";
	}
	$(function(){
		var flag="${requestScope.isHeadmaster}";
		//$("li").removeClass("li_rad");
		//$("li").removeClass("li_radc");
		//$("li").removeClass("li_chec");
		//$("li").removeClass("li_che");
		if(flag==-1)
		  hidden();
		else
			show();
		$(".Test_q:last").attr("style","padding-bottom: 20px;");
	});
	
</script>

</body>
</html>
