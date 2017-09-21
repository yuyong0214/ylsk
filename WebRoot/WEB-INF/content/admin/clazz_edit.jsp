<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
	<script src="${base}/widget/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
	<div class="content_box">
		<div class="content_tb">
		    <s:form action="clazz!update">
			    <s:hidden name="clazz.id"/>
			    <s:hidden name="clazz.tribe_id"/>
			    <s:hidden name="clazz.tribe_master"/>
			    <table class="list_table c3">
			        <caption class="caption_title">修改班级</caption>
			        <tbody class="c5 f14">
				        <tr>
				            <td width="280px">班级名称</td>
				            <td><s:textfield cssClass="input_2" name="clazz.class_name"/><span class="red">*</span></td>
				        </tr>
				        <tr>
				            <td>开班时间</td>
				            <td>
				                <input type="text" name="clazz.start" class="Wdate" onclick="WdatePicker()" readonly="true" value="${gfn:date(clazz.start, 'yyyy-MM-dd')}"/><span class="red">*</span>
				            </td>
				        </tr>
				        <tr>
				            <td>结业时间</td>
				            <td>
				                <input type="text" name="clazz.end" class="Wdate" onclick="WdatePicker()" readonly="true" value="${gfn:date(clazz.end, 'yyyy-MM-dd')}"/><span class="red">*</span>
				            </td>
				        </tr>
				        <tr>
				            <td>班级状态</td>
				            <td>
				            	<input type="radio" ${clazz.status==1?"checked='checked'":"" } name="clazz.status" value="1" /><label>正常</label>
				            	<input type="radio" ${clazz.status==0?"checked='checked'":"" } name="clazz.status" value="0" /><label>停用</label>
				            </td>
				        </tr>
				        <tr>
				            <td>上课地点</td>
				            <td><s:textfield cssClass="input_2" name="clazz.classroom"/></td>
				        </tr>
				        <tr id="evaluate">
				        	<td>是否启用评估</td>
				        	<td>
								<input type="radio" name="clazz.is_evaluate" onclick="changeEvaluate(0)" value="0" ${clazz.is_evaluate==0?"checked='checked'":""} /><label>停用 </label> 
								<input type="radio" name="clazz.is_evaluate" onclick="changeEvaluate(1)" value="1" ${clazz.is_evaluate==1?"checked='checked'":""} /><label>启用 </label>
							</td>
				        </tr>
				        <tr>
				            <td>是否启用接送</td>
				            <td>
				            	<input type="radio" onclick="changeShuttle(0)" ${clazz.is_shuttle==0?"checked='checked'":"" } name="clazz.is_shuttle" value="0" /><label>停用</label>
				            	<input type="radio" onclick="changeShuttle(1)" ${clazz.is_shuttle==1?"checked='checked'":"" } name="clazz.is_shuttle" value="1" /><label>启用</label>
				            </td>
				        </tr>
				        <tr class="shuttle">
				            <td>接送时间</td>
				            <td><s:textfield cssClass="input_2" name="time"/></td>
				        </tr>
				        <tr class="shuttle">
				            <td>接送职工</td>
				            <td><s:textfield cssClass="input_2" name="linkman"/></td>
				        </tr>
				        <tr class="shuttle">
				            <td>职工电话</td>
				            <td><s:textfield cssClass="input_2" name="linkman_phone"/></td>
				        </tr>
				        <tr>
				            <td>备注</td>
				            <td><s:textfield cssClass="input_2" name="clazz.remark"/></td>
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
	</div>
</body>
<script src="${base }/js/jquery.js"></script>
<script type="text/javascript">
	$(function(){
		if(${clazz.is_shuttle==0})
			$(".shuttle").hide();
		else
			$(".shuttle").show();
		if(${clazz.is_evaluate==1}){
			$.ajax({
				url: "${base}/admin/evaluate!list.action?type=1",              //请求地址
		        dataType: "json",
		        success: function (data,textStatus) {
		        	var paper_id=${clazz.paper_id};
		            // 此处放成功后执行的代码
		            var papers = eval(data);
		            var selectp='<tr id="selectPaper">'+
		                		'<td>选择试卷</td>'+
		                		'<td>'+
		                		'<select name="clazz.paper_id">'+
		                			'<option value="0">--请选择--</option>';
		            for(var i=0;i<papers.length;i++){                        
		                 var paper=papers[i];
		                 if(paper_id==paper.id)
		                 	selectp += '<option selected="selected" value="'+paper.id+'">'+paper.name+'</option>';
		                 else
		                 	selectp += '<option value="'+paper.id+'">'+paper.name+'</option>';
		            }
		            selectp += '</select></td></tr>';
		            $("#evaluate").after(selectp);
		        }
			})
		}
      var bef = "<label>";
      var aft = "<i>✓</i></label>";
      $("input[type='checkbox']").each(function(){
        $(this).replaceWith(bef+this.outerHTML+aft);
      });
      $("input[type='radio']").each(function(){
        $(this).replaceWith(bef+this.outerHTML+aft);
      });
	});
	
	function changeShuttle(obj)
	{
		if(obj == 1)
			$(".shuttle").show();
		else
			$(".shuttle").hide();
	}
	
	function changeEvaluate(obj)
	{
		var paper=$("#selectPaper").html();
    	if(paper==undefined){
			if(obj==1){
				$.ajax({
					url: "${base}/admin/evaluate!list.action?type=1",              //请求地址
			        dataType: "json",
			        success: function (data,textStatus) {
			        	var paper_id=${clazz.paper_id};
			            // 此处放成功后执行的代码
			            var papers = eval(data);
			            var selectp='<tr id="selectPaper">'+
			                		'<td>选择试卷</td>'+
			                		'<td>'+
			                		'<select name="clazz.paper_id">'+
			                			'<option value="0">--请选择--</option>';
			            for(var i=0;i<papers.length;i++){                        
			                 var paper=papers[i];
			                 if(paper_id==paper.id)
			                 	selectp += '<option selected="selected" value="'+paper.id+'">'+paper.name+'</option>';
			                 else
			                 	selectp += '<option value="'+paper.id+'">'+paper.name+'</option>';
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
</html>
