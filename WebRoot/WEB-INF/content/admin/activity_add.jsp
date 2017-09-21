<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${base}/js/jquery.js"></script>
	<script type="text/javascript" src="${base}/widget/ckeditor/ckeditor.js"></script>
	<script language="javascript" type="text/javascript" src="${base}/widget/My97DatePicker/WdatePicker.js"></script>
</head>
<body style="background-color:#efeff8;">
	<div class="content_box">
   	 	<div class="content_tb">
		    <s:form action="activity!save" enctype="multipart/form-data">
		    <table class="list_table c3">
		        <caption class="caption_title">【${clazz.class_name}】新建活动</caption>
		        <input type="hidden" name="activity.class_id" value="${clazz.id}"/>
		        <tbody class="c5 f14">
			        <tr>
			            <td>活动主题</td>
			            <td><input id="theme" class="input_2" name="activity.theme"/><span style="color: red">*</span></td>
			        </tr>
			        <tr>
			            <td>活动发起人</td>
			            <td><input id="initiator" class="input_2" name="activity.initiator"/><span style="color: red">*</span></td>
			        </tr>
			        <tr>
			            <td>活动地址</td>
			            <td><input id="site" class="input_2" name="activity.site"/><span style="color: red">*</span></td>
			        </tr>
			        
			        <tr>
			            <td>开始时间</td>
			            <td>
			            	<input id="begin" name="activity.begin_time" value="<fmt:formatDate value="${activity.start }" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>" class="Wdate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',maxDate:'#F{$dp.$D(\'end\')||\'2050-10-01\'}'});" /><span style="color: red">*</span>
			            </td>
			        </tr>
			        <tr>
			            <td>结束时间</td>
			            <td>
			            	<input id="end" name="activity.end_time" value="<fmt:formatDate value="${activity.end }" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>" class="Wdate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',minDate:'#F{$dp.$D(\'begin\')}',maxDate:'2050-10-01'});" /><span style="color: red">*</span>
			            </td>
			        </tr>
			        <tr>
			            <td>活动图片</td>
			            <td>
			                <input type="file" name="image"/>（图片最佳尺寸为：200 * 200）
			            </td>
			        </tr>
			        <tr>
			            <td>活动内容</td>
			            <td>
			                <textarea rows="3" cols="15" name="activity.content" style="resize:none;" id="content"></textarea>
			                <script>CKEDITOR.replace('content');</script>
			            </td>
       			    </tr>
			        <!-- <tr>
			            <td>活动内容</td>
			            <td><input class="input_2" name="activity.content"/><span style="color: red">*</span></td>
			        </tr> -->
			        <tr>
                        <td></td>
			            <td>
			                <s:submit cssClass="button_2 cf" value="保存"/>
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
