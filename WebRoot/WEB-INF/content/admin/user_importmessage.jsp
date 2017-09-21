<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />

</head>

<body>
	<div class="content_box">
		<div class="content_tb">
    		<table class="list_table c3 f14">
			      <caption class="caption_title">导入结果</caption>
			      <tbody class="c5">
			        <tr>
			          <td width="100px">导入成功数量</td>
			          <td width="100px">${success}条</td>
			          <td></td>
			        </tr>
			      </tbody>
    		</table>
    	</div>
    	<div class="blank"></div>
    	<div class="content_tb">
		    <c:if test="${ !empty error }">
		      <table class="list_table c3 f14">
		        <caption class="caption_title">导入失败学员列表</caption>
		        <tbody class="c5">
		          <tr class="c3">
		            <td width="100px">错误行号</td>
		            <td>失败原因</td>
		          </tr>
		
		          <c:forEach items="${error}" var="er">
		            <tr>
		              <td>${er.number}</td>
		              <td>${er.info}</td>
		            </tr>
		          </c:forEach>
		        </tbody>
		      </table>
		    </c:if>
		</div>
  </div>
</body>
</html>
