<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${base}/js/jquery.js"></script>
	<script language="javascript" type="text/javascript" src="${base}/widget/My97DatePicker/WdatePicker.js"></script>
</head>
<body class="admin">
	<script type="text/javascript">
		var index = 1;
		function addOption(){
			//alert(1);
			if(index >= 10){
				alert("最多支持10个选项");
				return;
			}
			index++;
			var input = '<tr id="option'+index+'">'+
						'<td>选项'+String.fromCharCode(65+index-1)+'</td>'+
						'<td>'+
						'<input class="input_2" name="vote.values"/></td>'+
						'</tr>';
			$("#option_button").before(input);
		}
		function removeOption(){
			if(index > 0){
				$("#option"+index).remove();
				index--;
			}
		}
	</script>
<body style="background-color:#efeff8;">
	<div class="content_box">
		<div class="content_tb">
		    <s:form action="vote!save" >
			    <table class="list_table c3">
			        <caption class="caption_title">【${clazz.class_name}】新建投票</caption>
			        <input type="hidden" name="vote.class_id" value="${clazz.id}"/>
			        <tbody class="c5 f14">
			        <tr>
			            <td width="280px">投票标题</td>
			            <td><input class="input_2" name="vote.title"/><span style="color: red">*</span></td>
			        </tr>
			        <tr>
			            <td>开始时间</td>
			            <td>
			            	<input id="begin" name="vote.begin_time" value="<fmt:formatDate value="${vote.begin_time }" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>" class="Wdate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',maxDate:'#F{$dp.$D(\'end\')}'});" /><span class="red">*</span>
			            </td>
			        </tr>
			        <tr>
			            <td>结束时间</td>
			            <td>
			            	<input id="end" name="vote.end_time" value="<fmt:formatDate value="${vote.end_time }" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>" class="Wdate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',minDate:'#F{$dp.$D(\'begin\')}'});" /><span style="color: red">*</span>
			            </td>
			        </tr>
			        <tr>
			            <td>题目类型</td>
			            <td>
							<select name="vote.question_type">
								<option value="1">单选题</option>
								<option value="2">多选题</option>
							</select>
							<span class="red"> *</span>
						</td>
			        </tr>
			        <tr id="option1">
						<td>选项A</td>
						<td>
							<input class="input_2" name="vote.values"/>
						</td>
					</tr>
					
					<tr id="option_button">
						<td></td>
						<td>
							<a><label><input type="button" class="button_4" value="+" onclick="addOption()"/> 添加选项</label></a>
							<a><label><input type="button" class="button_4" value="-" onclick="removeOption()"/> 删除选项</label></a>
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
