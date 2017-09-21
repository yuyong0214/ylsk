<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link rel="stylesheet" type="text/css" href="${base }/css/ht_web.css" />
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
      $(":input[name='exam.exam_name']").val("");
      $(":input[name='exam.start']").val("");
      $(":input[name='exam.end']").val("");
  }
</script>
</head>
<body style="background-color:#efeff8;">
	<div class="content_box">
		<div class="content_tb">
		    <s:form action="exam!list">
				    <table class="list_table c3">
				        <caption class="caption_title">考试查询</caption>
				        <input type="hidden" name="exam.class_id" value="${clazz.id}" />
				        <tbody class="c5 f14">
					        <tr>
								 <td>考试名称</td>
								 <td><input type="text" class="input_2" name="exam.exam_name" value="${exam.exam_name}" /></td>
								 <td>开始时间</td>
								 <td><input type="text" class="Wdate" name="exam.start" value="${gfn:date(exam.start, 'yyyy-MM-dd HH:mm')}" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})" class="Wdate" readonly="true"/></td>
								 <td>结束时间</td>
								 <td><input type="text" class="Wdate" name="exam.end" value="${gfn:date(exam.end, 'yyyy-MM-dd HH:mm')}" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})" class="Wdate" readonly="true"/></td>
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
		    	<table class="list_table c3 f14" id="listUserTable">
		        <caption class="caption_title">【${clazz.class_name}】考试列表
		        	<span class=" f14 fright"><a href="exam!add.action?exam.class_id=${clazz.id}">添加考试</a></span>
		        </caption>
		        <tbody class="c5">
			        <tr class="c3">
			            <td>考试名称</td>
			            <td>开始时间</td>
			            <td>结束时间</td>
			            <td>考试时长(分钟)</td>
			            <td>操作</td>
			        </tr>
			        <c:forEach items="${examList}" var="e">
			        <tr>
			            <td>${e.exam_name}</td>
			            <td>${gfn:date(e.start, "yyyy-MM-dd HH:mm")}</td>
						<td>${gfn:date(e.end, "yyyy-MM-dd HH:mm")}</td>
			            <td>${e.time_limit}</td>
			            <td>
			                <a href="exam!detail.action?exam.id=${e.id}">详情</a>
			                <a href="exam!edit.action?exam.id=${e.id}">修改</a>
			                <a href="exam!delete.action?exam.id=${e.id}" onclick="return confirm('您确定要删除【${e.exam_name}】吗？');">删除</a>
			                <a href="exam_question!list.action?question.exam_id=${e.id}&exam_title=${e.exam_name}">试题</a>
			                <a href="exam_user!examStatisticsList.action?exam_id=${e.id}&exam_title=${e.exam_name}">查看统计</a>
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
