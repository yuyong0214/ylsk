<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link rel="stylesheet" type="text/css" href="${base }/css/ht_web.css" />
	<script language="javascript" type="text/javascript" src="${base}/widget/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" src="${base}/js/jquery.js"></script>
	<script type="text/javascript">
		function checkForm() {
			var exam_name=document.getElementById("exam_name");
			var pass_scale=document.getElementById("pass_scale");
			var time_limit=document.getElementById("time_limit");
			var exam_times=document.getElementById("exam_times");
			if(exam_name.value==""){
				alert("考试名称不能为空");
				exam_name.focus();
				return false;
			}
			if(pass_scale.value!=""&&isNaN(pass_scale.value)){
				alert("通过比例必须输入整数数字");
				pass_scale.focus();
				return false;
			}
			if(time_limit.value==""||time_limit.value==0){
				alert("考试时长不能为0或空值");
				time_limit.focus();
				return false;
			}
			if(isNaN(time_limit.value)){
				alert("考试时长必须输入整数数字");
				time_limit.focus();
				return false;
			}
				
			if(exam_times.value!=""&&isNaN(exam_times.value)){
				alert("考试次数必须输入整数数字");
				time_limit.focus();
				return false;
			}
			
			return true;
			
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
			    <s:form action="exam!save" onsubmit="return checkForm();">
			    <input type="hidden" name="exam.class_id" value="${clazz.id}"/>
			    <table class="list_table c3">
			        <caption class="caption_title">【${clazz.class_name}】新建考试</caption>
			        
			        <tbody class="c5 f14">
				        <tr>
				            <td width="280px">考试名称</td>
				            <td><input class="input_2" id="exam_name" name="exam.exam_name"/><span class="red">*</span></td>
				        </tr>
				        <tr>
				            <td>开始时间</td>
				            <td>
				            	<input id="begin" name="start_time" value="<fmt:formatDate value="${exam.start }" pattern="yyyy-MM-dd HH:mm"></fmt:formatDate>" class="Wdate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm',maxDate:'#F{$dp.$D(\'end\')||\'2050-10-01\'}'});" /><span class="red">*</span>
				            </td>
				        </tr>
				       <tr>
				            <td>结束时间</td>
				            <td>
				            	<input id="end" name="end_time" value="<fmt:formatDate value="${exam.end }" pattern="yyyy-MM-dd HH:mm"></fmt:formatDate>" class="Wdate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm',minDate:'#F{$dp.$D(\'begin\')}',maxDate:'2050-10-01'});" /><span class="red">*</span>
				            </td>
				        </tr>
				        <tr>
				            <td>通过比例</td>
							<td>
								<input class="input_2" id="pass_scale" name="exam.pass_scale"/>%<span class="red">*</span>(0或不填表示60%)					
							</td>
				        </tr>
				        <tr>
				            <td>考试时长</td>
				            <td>
				            	<input class="input_2" id="time_limit" name="exam.time_limit"/>(分钟)<span class="red">*</span></td>
				        </tr>
				         <tr>
				            <td>考试次数</td>
				            <td>
				            	<input class="input_2" id="exam_times" name="exam.exam_times"/><span class="red">*</span>(0或不填表示不限制)
				            </td>
				        </tr>
				        <tr>
				            <td>题目是否乱序</td>
				            <td>
				            	<s:radio list="#{'1':'是','0':'否'}" name="exam.question_random" value="0"></s:radio>
				            	<span class="red">*</span>
				            </td>
				        </tr>
				        <tr>
				            <td>选项是否乱序</td>
				            <td>
				            	<s:radio list="#{'1':'是','0':'否'}" name="exam.option_random" value="0"></s:radio>
				            	<span class="red">*</span>
				            </td>
				        </tr>
				        <tr>
                            <td></td>
				            <td>
				            	<input name="baocun" type="submit" class="button_2 cf" value="保存" />
				                <input type="button" class="button_2 cf" value="返回" onclick="history.back();"/>
				            </td>
				        </tr>
				    </tbody>
			    </table>
			</s:form>
	    </div>
	</div>
</body>
</html>
