<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link rel="stylesheet" type="text/css" href="${base }/css/ht_web.css">
	<script type="text/javascript" src="${base}/js/jquery.js"></script>
	<script language="javascript" type="text/javascript" src="${base}/widget/My97DatePicker/WdatePicker.js"></script>
</head>
<body style="background-color:#efeff8;">
	<script type="text/javascript">
		var index = ${fn:length(options)};
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
<div class="content_box">
		<div class="content_tb">
		    <s:form action="vote!update">
		    <table class="list_table c3">
		        <caption class="caption_title">【${clazz.class_name}】修改投票信息</caption>
		        <input type="hidden" name="vote.class_id" value="${clazz.id}"/>
		        <input type="hidden" name="vote.id" value="${vote.id}" />
		        <input type="hidden" name="vote.user_id" value="${vote.user_id}" />
		        <tbody class="c5 f14">
			        <tr>
			            <td width="280px">投票标题</td>
			            <td><input class="input_2" name="vote.title" value="${vote.title }"/><span class="red">*</span></td>
			        </tr>
			        <tr>
			            <td>开始时间</td>
			            <td>
			            	<input id="begin" class="Wdate" name="vote.begin_time" value="<fmt:formatDate value="${vote.begin_time }" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>" class="Wdate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',maxDate:'#F{$dp.$D(\'end\')}'});" /><span class="red">*</span>
			            </td>
			        </tr>
			       <tr>
			            <td>结束时间</td>
			            <td>
			            	<input id="end" class="Wdate" name="vote.end_time" value="<fmt:formatDate value="${vote.end_time }" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>" class="Wdate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',minDate:'#F{$dp.$D(\'begin\')}'});" /><span class="red">*</span>
			            </td>
			        </tr>
			        <tr>
			            <td>题目类型</td>
			            <td>
							<s:select name="vote.question_type" list="#{1:'单选题',2:'多选题' }"></s:select>
							<span class="red"> *</span>
						</td>
			        </tr>
			        <c:forEach items="${options}" var="option" varStatus="s">
					<c:forEach items="${option}" var="o">
					<tr id="option${s.index+1}">
						<td>选项${o.key}</td>
						<td>
							<input class="input_2" name="vote.values" value="${o.value}"/>
						</td>
					</tr>
					</c:forEach>
					</c:forEach>
					<tr id="option_button">
						<td></td>
						<td>
							<a><label><input type="button" class="button_4" value="+" onclick="addOption()"/> 添加选项</label></a>&nbsp;&nbsp;&nbsp;
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
