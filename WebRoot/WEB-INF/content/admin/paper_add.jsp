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
	$(function() {
		if ($("select[name='paper.type']").val() == 1) {
			$("#course").hide();
			$("#clazz").show();
		} else {
			$("#clazz").hide();
			$("#course").show();
		}

		$("select[name='paper.type']").change(function() {
			if ($(this).val() == 1) {
				$("#course").hide();
				$("#clazz").show();
			} else {
				$("#clazz").hide();
				$("#course").show();
			}
		});
	});
</script>
</head>
<body>
  <div class="content_box">
    <s:form action="paper!save">
      <table class="list_table c3">
        <caption class="caption_title">新建试卷</caption>
        <tbody class="c5 f14">
          <tr>
            <td width="280px">试卷名称</td>
            <td><s:textfield name="paper.name" cssClass="input_2" /><span
              style="color:red;">*</span></td>
          </tr>
          <tr>
            <td>试卷类型</td>
            <td><select name="paper.type">
                <option value="1">班级</option>
                <option value="2">课程</option>
            </select> <span style="color:red;">*</span></td>
          </tr>
          <%--
        <tr id="course">
            <td>所属课程</td>
            <td>
            	<select name="paper.course_id">
            		<option value="0">--请选择--</option>
            		<c:forEach items="${courseList }" var="c">
            			<option value="${c.id }">${c.course_name }</option>
            		</c:forEach>
            	</select>
            	<span style="color:red;">*</span>
            </td>
        </tr>
        <tr id="clazz">
            <td>所属班级</td>
            <td>
            	<select name="paper.class_id">
            		<option value="0">--请选择--</option>
            		<c:forEach items="${clazzList }" var="c">
            			<option value="${c.id }">${c.class_name }</option>
            		</c:forEach>
            	</select>
            	<span style="color:red;">*</span>
            </td>
        </tr>
--%>
          <tr>
            <td>开始时间</td>
            <td><s:textfield name="paper.begin_time"
                onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})"
                cssClass="Wdate" readonly="true" /><span
              style="color:red;">*</span></td>
          </tr>
          <tr>
            <td>结束时间</td>
            <td><s:textfield name="paper.end_time"
                onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})"
                cssClass="Wdate" readonly="true" /><span
              style="color:red;">*</span></td>
          </tr>
          <tr>
            <td></td>
            <td><s:submit cssClass="button_2 cf" value="保存" /></td>
          </tr>
      </table>
    </s:form>
  </div>
</body>
</html>
