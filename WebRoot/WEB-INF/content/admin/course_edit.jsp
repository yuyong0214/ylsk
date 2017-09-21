<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />

<script src="${base}/widget/My97DatePicker/WdatePicker.js"></script>
<script src="${base }/js/jquery.js"></script>
<script type="text/javascript">
	$(function() {
		if (${course.is_evaluate==1}) {
			$.ajax({
						url : "${base}/admin/evaluate!list.action?type=2", //请求地址
						dataType : "json",
						success : function(data, textStatus) {
							var paper_id = ${course.paper_id};
							// 此处放成功后执行的代码
							var papers = eval(data);
							var selectp = '<tr id="selectPaper">'
									+ '<td>选择试卷</td>' + '<td>'
									+ '<select name="course.paper_id">'
									+ '<option value="0">--请选择--</option>';
							for (var i = 0; i < papers.length; i++) {
								var paper = papers[i];
								if (paper_id == paper.id)
									selectp += '<option selected="selected" value="'+paper.id+'">'
											+ paper.name + '</option>';
								else
									selectp += '<option value="'+paper.id+'">'
											+ paper.name + '</option>';
							}
							selectp += '</select></td></tr>';
							$("#evaluate").after(selectp);
						}
					})
		}
		;
	});

	function changeEvaluate(obj) {
		var paper=$("#selectPaper").html();
    	if(paper==undefined){
			if (obj == 1) {
				$.ajax({
					url : "${base}/admin/evaluate!list.action?type=2", //请求地址
					dataType : "json",
					success : function(data, textStatus) {
						var paper_id = ${course.paper_id};
						// 此处放成功后执行的代码
						var papers = eval(data);
						var selectp = '<tr id="selectPaper">'
								+ '<td>选择试卷</td>' + '<td>'
								+ '<select name="course.paper_id">'
								+ '<option value="0">--请选择--</option>';
						for (var i = 0; i < papers.length; i++) {
							var paper = papers[i];
							if (paper_id == paper.id)
								selectp += '<option selected="selected" value="'+paper.id+'">'
										+ paper.name + '</option>';
							else
								selectp += '<option value="'+paper.id+'">'
										+ paper.name + '</option>';
						}
						selectp += '</select></td></tr>';
						$("#evaluate").after(selectp);
					}
				})
			} else {
					$("#selectPaper").remove();
				}
		}
    	if(obj==0){
    		$("#selectPaper").remove();
    	}
	}
</script>
<script type="text/javascript">
    $(function(){
      var bef = "<label>";
      var aft = "<i>✓</i></label>";
      $("input[type='checkbox']").each(function(){
        $(this).replaceWith(bef+this.outerHTML+aft);
      });
      $("input[type='radio']").each(function(){
        $(this).replaceWith(bef+this.outerHTML+aft);
      });
    });
  </script>
</head>
<body>
	<div class="content_box">
	    <div class="content_tb">
	    	<s:form action="course!update">
		        <s:hidden name="course.id" />
		        <s:hidden name="course.class_id"></s:hidden>
		        <table class="list_table c3">
		        	<caption class="caption_title">修改课程</caption>
		          	<tbody class="c5 f14">
			          	<tr>
				            <td width="280px">课程名称</td>
				            <td><s:textfield cssClass="input_2" name="course.course_name" />
			              	<span style="color:red">*</span></td>
			          	</tr>
			          	<tr>
				            <td>开课时间</td>
				            <td><input type="text"
				              name="course.course_start" class="Wdate"
				              onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"
				              value="${gfn:date(course.course_start, 'yyyy-MM-dd HH:mm:ss')}" />
				              <span style="color:red">*</span></td>
			          	</tr>
		         	 	<tr>
				            <td>结课时间</td>
				            <td><input type="text"
				              name="course.course_end" class="Wdate"
				              onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"
				              value="${gfn:date(course.course_end, 'yyyy-MM-dd HH:mm:ss')}" /><span
				              style="color:red">*</span></td>
			          	</tr>
			          	<tr id="evaluate">
				            <td>是否启用评估</td>
				            <td><input type="radio"
				              name="course.is_evaluate" onclick="changeEvaluate(0)"
				              value="0" ${course.is_evaluate==0?"checked='checked'":""} /><label>停用
				            </label> <input type="radio" name="course.is_evaluate"
				              onclick="changeEvaluate(1)" value="1"
				              ${course.is_evaluate==1?"checked='checked'":""} /><label>启用</label>
				            </td>
			          	</tr>
			          	<tr>
				            <td>上课地点</td>
				            <td><s:textfield cssClass="input_2" name="course.location" />
				              <span style="color:red">*</span></td>
			          	</tr>
			          	<tr>
				            <td>主讲人</td>
				            <td><s:textfield cssClass="input_2" name="course.lecturer" />
				            </td>
			          	</tr>
			          	<tr>
				            <td>简介</td>
				            <td><s:textfield cssClass="input_2"
				                name="course.introduction" /></td>
			          	</tr>
			          	<tr>
                            <td></td>
				            <td><s:submit cssClass="button_2 cf"
				                value="保存" /> <input type="button" class="button_2 cf"
				              value="返回" onclick="history.back();" /></td>
			         	</tr>
		        	</tbody>
		        </table>
	    	</s:form>
	    </div>
	</div>
</body>
</html>
