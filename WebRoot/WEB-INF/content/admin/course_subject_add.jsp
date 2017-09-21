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
		    <s:form action="course_subject!save" enctype="multipart/form-data">
			    <table class="list_table c3">
			        <caption class="caption_title">新建专题</caption>
			        <tbody class="c5 f14">
			        <tr>
			            <td>专题名称</td>
			            <td><input name="subject.subject_name" class="input_2"/> </td>
			        </tr>
			        <tr>
			            <td>专题编号</td>
			            <td><input name="subject.subject_no" class="input_2"/> </td>
			        </tr>
			        <tr>
			            <td>状态</td>
			            <td>
			            	<select name="subject.status">
			            		<option value="0">正常</option>
								<option value="1">停用</option>
			            	</select>
			            </td>
			        </tr>
			        <tr>
			        	<td>简介</td>
			        	<td>
			        		<textarea rows="10" cols="50" name="subject.general_introduction"></textarea>
			        	</td>
			        </tr>
			        <tr>
			        	<td>图片（普通尺寸）</td>
			        	<td class="left"><input type="file" name="upload1"/><span style="color:red">（建议上传大小为 120 * 164）</span></td>
			        </tr>
			        <tr>
			        	<td>图片（两倍尺寸）</td>
			        	<td class="left"><input type="file" name="upload2"/><span style="color:red">（建议上传大小为 240 * 328）</span></td>
			        </tr>	
			         <tr>
                        <td></td>
			            <td><s:submit cssClass="button_2 cf" value="保存" /></td>
			        </tr>
			        </tbody>
			    </table>
		    </s:form>
		</div>
	</div>
</body>
</html>
