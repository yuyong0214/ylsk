<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link href="${base}/css/admin.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${base}/js/jquery.js"></script>
<script type="text/javascript">

</script>
</head>
<body class="admin">
<div class="body">
    <s:form action="survey_result!list.action">
    <table class="listTable">
        <caption>班级问卷统计查询</caption>
        <tr>
            <td width="100px">班级名称</td>
            <td class="left">
  				<s:select name="surveyResult.class_id" list="#attr.clazzList" listKey="id" listValue="class_name"  headerKey="0" headerValue="---请选择---"></s:select>
               
            </td>
        </tr>
        <tr>
            <td class="left" colspan="2">
                <s:submit cssClass="btn" value="查询"/>
            </td>
        </tr>
    </table>
    </s:form>
    <div class="blank"></div>
    <table class="listTable">
        <caption>问卷题目列表</caption>
        <c:forEach var="map" items="${attr.list}">
	        <tr><td>
	        <table class="listTable">
	            <s:if test="#attr.map.resultmap.type==4">
		            <caption>${map.resultmap.title }
		            	<s:if test="#attr.map.title_flag==1">
		            	【<a href="survey_result!detail.action?survey_id=${map.resultmap.survey_id }">查看详情</a>】
		            	</s:if>
		            	<s:else>
		            	【没有人参与答卷】
		            	</s:else>
					</caption>
	            </s:if>
	            <s:else>
		            <caption>${map.resultmap.title }</caption>
			        <c:forEach var="contents" items="${map.contentsList}" varStatus="i">
			        <tr class="left">
			            <td width="400">${contents }</td>
			            <td width="500" class="left"><img src="${base}/images/admin/blue.gif" width="${map.resultmap.percountbytitle[i.index]*3}" height="10" /></td>
			            <td width="100">
			            (${map.resultmap.peopleCountByTitle[i.index][0]}人/总${map.resultmap.peopleCountByTitle[i.index][1]}人)
			            <fmt:formatNumber value="${map.resultmap.percountbytitle[i.index]}" pattern="##.##" minFractionDigits="2"></fmt:formatNumber>%
			            </td>
			        </tr>
			        </c:forEach>
		        </s:else>
		    </table>
		    </td></tr>
        </c:forEach>
        
    </table>
</div>
</body>
</html>
