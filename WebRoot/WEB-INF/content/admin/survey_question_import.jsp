<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link rel="stylesheet" type="text/css" href="${base }/css/ht_web.css" />
</head>
<body style="background-color:#efeff8;">
	<div class="content_box">
		<div class="content_tb">
		    <s:form action="survey_question!importData" enctype="multipart/form-data">
		    <s:hidden name="survey_title"></s:hidden>
		    <s:hidden name="surveyQuestion.survey_id"/>
		    <table class="list_table c3">
		        <caption class="caption_title">${survey_title} - 导入问卷题</caption>
		        <tbody class="c5 f14">
			        <tr>
			            <td width="100px">导入文件</td>
			            <td class="left">
				            <input name="file" type="file" size="50"/>
				            <span class="prompt">&nbsp;&nbsp;&nbsp;只支持Excel文件</span>&nbsp;&nbsp;&nbsp;&nbsp;
				            <a href="${base}/doc/survey_questions.xls">下载导入模板</a>
			            </td>
			        </tr>
			        <tr>
			            <td class="left" colspan="2">
			            	<input type="submit" class="button_2 cf" value="导入" />
			                <input type="button" class="button_2 cf" value="返回" onclick="javascript:history.back();" />
			            </td>
			        </tr>
			     </tbody>
		    </table>
		    </s:form>
		 </div>
	</div>
</body>
</html>
