<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${base}/js/jquery.js"></script>
	<style type="text/css">
		#tdfirst{
			width: 100px;
		}
	</style>
<script language="javascript" type="text/javascript" src="${base}/widget/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${base}/js/jquery.js"></script>
<script type="text/javascript">
  function clearParams(){
      $(":input[name='activity.theme']").val("");
      $(":input[name='activity.begin_time']").val("");
      $(":input[name='activity.end_time']").val("");
  }
</script>
</head>
<body style="background-color:#efeff8;">
	<div class="content_box">
		<div class="content_tb">
		    <s:form action="activity!list">
			    <table class="list_table c3">
			        <caption class="caption_title">活动查询</caption>
			        <input type="hidden" name="activity.class_id" value="${clazz.id}"/>
			        <tbody class="c5 f14">
				        <tr style="width: 500px">
							<td id="tdfirst">活动主题</td>
							<td><input type="text" class="input_2" name="activity.theme" value="${activity.theme}" /></td>
							<td id="tdfirst">开始时间</td>
							<td><input type="text"  name="activity.begin_time" value="${gfn:date(activity.begin_time, 'yyyy-MM-dd HH:mm:ss')}" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" class="Wdate" readonly="true"/></td>
							<td id="tdfirst">结束时间</td>
							<td><input type="text"  name="activity.end_time" value="${gfn:date(activity.end_time, 'yyyy-MM-dd HH:mm:ss')}" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" class="Wdate" readonly="true"/></td>
						</tr>
				        <tr style="text-align:center;">
							<td colspan="6">
                              <input name="chaxun" onclick="submit()" type="button" class="button_2 cf" value="查询" />
                              <input type="button" class="button_2 cf" value="重置" onclick="clearParams()"/>
                            </td>
						</tr>	
			        </tbody>
			    </table>
		 	</s:form>
    	</div>
    	<div class="content_tb">
			<table class="list_table c3 f14">
		        <caption class="caption_title">【${clazz.class_name}】活动列表
		        	<span class=" f14 fright"><a href="activity!add.action?activity.class_id=${clazz.id}">添加活动</a></span>
		        </caption>
		        <tbody class="c5">
			        <tr class="c3">
			            <td>活动主题</td>
			            <td>活动地址</td>
			            <td>活动发起人</td>
			            <td width="180px">开始时间</td>
			            <td width="180px">结束时间</td>
			            <td width="250px">操作</td>
			        </tr>
			        <c:forEach items="${activityList}" var="a">
			        <tr>
			            <td>${a.theme}</td>
			            <td>${a.site}</td>
			            <td>${a.initiator}</td>
			            <td>${gfn:date(a.begin_time, "yyyy-MM-dd HH:mm:ss")}</td>
						<td>${gfn:date(a.end_time, "yyyy-MM-dd HH:mm:ss")}</td>
			            <td>
			                <a href="activity!detail.action?activity.id=${a.id}">详情</a>
			                <a href="activity!edit.action?activity.id=${a.id}">修改</a>
			                <a href="activity!delete.action?activity.id=${a.id}" onclick="return confirm('您确定要删除【${a.theme}】吗？');">删除</a>
			            </td>
			        </tr>
			        </c:forEach>
		        </tbody>
	    	</table>
    		<g:pager/>
		</div>
	</div>
</body>
</html>
