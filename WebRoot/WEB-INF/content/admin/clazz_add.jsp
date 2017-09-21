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
		$(".shuttle").hide();
	})

	function changeShuttle(obj) {
		if (obj == 1)
			$(".shuttle").show();
		else
			$(".shuttle").hide();
	}

	function changeEvaluate(obj) {
		var paper=$("#selectPaper").html();
    	if(paper==undefined){
			if (obj == 1) {
				$.ajax({
					url : "${base}/admin/evaluate!list.action?type=1", //请求地址
					dataType : "json",
					success : function(data, textStatus) {
						// 此处放成功后执行的代码
						var papers = eval(data);
						var selectp = '<tr id="selectPaper">' + '<td>选择试卷</td>'
								+ '<td>'
								+ '<select name="clazz.paper_id">'
								+ '<option value="0">--请选择--</option>';
						for (var i = 0; i < papers.length; i++) {
							var paper = papers[i];
							selectp += '<option value="'+paper.id+'">' + paper.name
									+ '</option>';
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
<body style="background-color:#efeff8;">
	<div class="content_box">
	    <div class="content_tb">
		    <s:form action="clazz!save">
		    	<table class="list_table c3">
			        <caption class="caption_title">新建班级</caption>
			        <tbody class="c5 f14">
				        <tr>
				            <td width="280px">班级名称</td>
				            <td><input name="clazz.class_name"
				              class="input_2" /><span class="red">*</span></td>
				        </tr>
				        <tr>
				            <td>开班时间</td>
				            <td><s:textfield name="clazz.start"
				                cssClass="Wdate" onclick="WdatePicker()" readonly="true" /><span
				              class="red">*</span></td>
				        </tr>
			            <tr>
				            <td>结业时间</td>
				            <td><s:textfield name="clazz.end"
				                cssClass="Wdate" onclick="WdatePicker()" readonly="true" /><span
				              class="red">*</span></td>
			            </tr>
                        <tr>
                          <td>班级状态</td>
                          <td>
                            <input type="radio" name="clazz.status" value="1" /><label>正常</label>
                            <input type="radio" name="clazz.status" value="0" /><label>停用</label>
                          </td>
                        </tr>
			            <tr>
				            <td>上课地点</td>
				            <td><input class="input_2"
				              name="clazz.classroom" /></td>
			            </tr>
			            <tr id="evaluate">
				            <td>是否启用评估</td>
				            <td><input type="radio"
				              name="clazz.is_evaluate" onclick="changeEvaluate(0)"
				              value="0" checked="checked" /><label>停用 </label> <input
				              type="radio" name="clazz.is_evaluate"
				              onclick="changeEvaluate(1)" value="1" /><label>启用</label>
				            </td>
			            </tr>
			            <tr>
				            <td>是否启用接送</td>
				            <td><input type="radio"
				              onclick="changeShuttle(0)" checked="checked"
				              name="clazz.is_shuttle" value="0" /><label>停用</label> <input
				              type="radio" onclick="changeShuttle(1)"
				              name="clazz.is_shuttle" value="1" /><label>启用</label></td>
			            </tr>
			            <tr class="shuttle">
				            <td>接送时间</td>
				            <td><input class="input_2" name="time" /></td>
			            </tr>
			            <tr class="shuttle">
				            <td>接送职工</td>
				            <td><input class="input_2" name="linkman" /></td>
			            </tr>
			            <tr class="shuttle">
				            <td>职工电话</td>
				            <td><input class="input_2"
				              name="linkman_phone" /></td>
			            </tr>
			            <tr>
				            <td>备注</td>
				            <td><textarea name="clazz.remark" ></textarea></td>
			            </tr>
			            <tr>
                            <td></td>
			            	<td colspan="1"><s:submit cssClass="button_2 cf" value="保存" /></td>
			            </tr>
			        </tbody>
		    	</table>
		    </s:form>
	    </div>
	</div>
</body>
</html>
