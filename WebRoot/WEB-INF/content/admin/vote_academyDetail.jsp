<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link rel="stylesheet" type="text/css" href="${base }/css/ht_web.css">
	<script type="text/javascript" src="${base}/js/jquery.js"></script>
	<script language="javascript" type="text/javascript" src="${base}/widget/My97DatePicker/WdatePicker.js"></script>
</head>
<body style="background-color:#efeff8;">
<div class="content_box">
	<div class="content_tb">
	    <table class="list_table c3">
	        <caption class="caption_title">【${academy_name}】投票详细信息</caption>
	        <tbody class="c5 f14">
		        <tr>
		            <td  width="280px">投票标题</td>
		            <td>${vote.title }</td>
		        </tr>
		        <tr>
		            <td>开始时间</td>
		            <td>${gfn:date(vote.begin_time, "yyyy-MM-dd HH:mm:ss")}</td>
		        </tr>
		       <tr>
		            <td>结束时间</td>
		            <td>${gfn:date(vote.end_time, "yyyy-MM-dd HH:mm:ss")}</td>
		        </tr>
		        <tr>
		            <td>题目类型</td>
		            <td>
		            	<c:if test="${vote.question_type==1}">单选题</c:if>
						<c:if test="${vote.question_type==2}">多选题</c:if>
					</td>
		        </tr>
		        <c:forEach items="${options}" var="option" varStatus="s">
				<c:forEach items="${option}" var="o">
				<tr id="option${s.index+1}">
					<td>选项${o.key}</td>
					<td>${o.value}</td>
				</tr>
				</c:forEach>
				</c:forEach>
		        <tr>
                    <td></td>
		            <td colspan="2">
		                <input type="button" class="button_2 cf" value="返回" onclick="history.back();"/>
		            </td>
		        </tr>
		      </tbody>
	    </table>
    </div>
</div>
</body>
</html>
