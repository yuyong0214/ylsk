<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link href="${base }/css/ht_web.css" rel="stylesheet" type="text/css" />
	<script src="${base}/widget/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${base}/js/jquery.js"></script>
<script type="text/javascript">
  $(function(){
	  if($("select[name='paper.type']").val()==1){
		  $("#course").hide();
		  $("#clazz").show();
	  }else{
		  $("#clazz").hide();
		  $("#course").show();
	  }
	  
	  $("select[name='paper.type']").change(
		  function(){
			  if($(this).val()==1){
				  $("#course").hide();
				  $("#clazz").show();
			  }else{
				  $("#clazz").hide();
				  $("#course").show();
			  }
		  });
  });
</script>
</head>
<body>
<div class="content_box">
    <s:form action="paper!update">
    <table class="list_table c3">
        <caption class="caption_title">修改试卷</caption>
        <s:hidden name="paper.id"/>
        <s:hidden name="paper.academy_id"/>
        <s:hidden name="paper.status"/>
        <tbody class="c5 f14">
        <tr>
            <td width="280px">试卷名称</td>
            <td><s:textfield name="paper.name" cssClass="input_2"/><span style="color:red;">*</span></td>
        </tr>
        <tr>
            <td>题目类型</td>
            <td>
            	<s:select cssClass="input_2" name="paper.type" list="#{1:'班级',2:'课程'}"></s:select>
            	<span style="color:red;">*</span>
            </td>
        </tr>
<%--
        <tr id="course">
            <td>所属课程</td>
            <td>
  				<s:select name="paper.course_id" list="#attr.courseList" listKey="id" listValue="course_name" ></s:select>
  				<span style="color:red;">*</span>
            </td>
        </tr>
        <tr id="clazz">
            <td>所属班级</td>
            <td>
  				<s:select name="paper.class_id" list="#attr.clazzList" listKey="id" listValue="class_name" ></s:select>
  				<span style="color:red;">*</span>
            </td>
        </tr>
 --%>
        <tr>
        	<td>开始时间</td>
        	<td>
        	<input type="text" name="paper.begin_time" class="Wdate" onclick="WdatePicker()" 
        	readonly="true" value="${gfn:date(paper.begin_time, 'yyyy-MM-dd')}"/><span style="color:red;">*</span>
        	</td>
        </tr>
        <tr>
        	<td>结束时间</td>
        	<td>
        	<input type="text" name="paper.end_time" class="Wdate" onclick="WdatePicker()" 
        	readonly="true" value="${gfn:date(paper.end_time, 'yyyy-MM-dd')}"/><span style="color:red;">*</span>
        	</td>
        </tr>
        <tr>
            <td></td>
            <td>
                <s:submit cssClass="button_2 cf" value="保存"/>
            </td>
        </tr>
        </tbody>
    </table>
    </s:form>
</div>
</body>
</html>
