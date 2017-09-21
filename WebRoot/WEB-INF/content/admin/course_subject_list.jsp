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
	<script type="text/javascript">
	var selecttimes=0;
		function selectAllacademy(){
			var items=document.getElementsByTagName("input");
			if(selecttimes%2==0){
				for(i=0;i<items.length;i++){
					if(items[i].type=="checkbox")
						items[i].checked=true;
					}
			}else{
				for(i=0;i<items.length;i++){
					if(items[i].type=="checkbox")
						items[i].checked=false;
					}
			}
			
			selecttimes++;
		}
		
		function clearParams(){
		    $(":input[name='subject.subject_name']").val("");
		    $(":input[name='subject.subject_no']").val("");
		    $(":input[name='subject.status']").val("");
		}
	</script>
</head>
<body style="background-color:#efeff8;">
	<div class="content_box">
		<div class="content_tb">
			<s:form action="course_subject!list">
			    <table class="list_table c3">
			        <caption class="caption_title">专题查询</caption>
			        <tbody class="c5 f14">
				        <tr>
						   <td id="tdfirst">专题名</td>
						   <td><input type="text"  class="input_2" name="subject.subject_name" value="${subjectParams['subject.subject_name']}" /></td>
						   <td id="tdfirst">编号</td>
						   <td><input type="text" class="input_2" name="subject.subject_no" value="${subjectParams['subject.subject_no']}" /></td>
					       <td id="tdfirst">状态</td>
						   <td><s:select name="subject.status" list="#{'':'全部',0:'正常',1:'停用'}"></s:select></td>
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
			<table class="list_table c3 f14" id="listacademyTable">
		        <caption class="caption_title"> 专题列表  </caption>
		        <tbody class="c5">
			        <tr class="c3">
			            <td>专题名</td>
			            <td>编号</td>
			            <td>状态</td>
			            <td>创建日期</td>
			            <td>操作</td>
			        </tr>
			        <c:forEach items="${subjectList}" var="list">
			        <tr>
			            <td>${list.subject_name}</td>
			            <td>${list.subject_no}</td>
			            <td>
			            	<c:if test="${list.status==0}">正常</c:if>
			            	<c:if test="${list.status==1}">停用</c:if>
			            </td>
			            <td>${list.subject_date}</td>
			            <td>
			                <a href="course_subject!detail.action?subject_id=${list.id}">详情</a>
			                <a href="course_subject!edit.action?subject_id=${list.id}">修改</a>
			                <a href="micro_course!list.action?subject_id=${list.id}">课程</a>
			                <a href="course_subject!delete.action?subject_id=${list.id}" onclick="return confirm('该专题下的微课会同时被删除！您确定要删除【${list.subject_name}】吗？');">删除</a>
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
