<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link rel="stylesheet" type="text/css" href="${base }/css/ht_web.css">
	<script type="text/javascript" src="${base}/js/jquery.js"></script>
</head>
<body style="background-color:#efeff8;">
	<div class="content_box">
		<div class="content_tb">
		    <s:form action="survey!save">
		    <table class="list_table c3">
		        <caption class="caption_title">新建问卷</caption>
		        	<tbody class="c5 f14">
				        <tr>
				            <td width="280px">问卷标题</td>
				            <td><input class="input_2" name="survey.title" /><span class="red">*</span></td>
				        </tr>
				        <tr>
				            <td>所属班级</td>
				            <td>
				  				<s:select name="survey.class_id" list="#attr.clazzList" listKey="id" listValue="class_name"></s:select>
				           </td>
				        </tr>
				        <tr>
				            <td>是否开放</td>
				            <td>
				 				<s:select name="survey.open" list="#{0:'否',1:'是'}"/>
				            </td>
				        </tr>
				        <tr>
                            <td></td>
				            <td>
				               <input name="baocun" type="submit" class="button_2 cf" value="保存" />
				            </td>
				        </tr>
				     </tbody>
		    	</table>
		    </s:form>
		 </div>
	</div>
</body>
</html>
