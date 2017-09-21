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
		    <s:form action="discuss!save" method="post">
			    <s:hidden name="discuss.class_id"/>
			    <table class="list_table c3">
			        <caption class="caption_title">${clazz.class_name} - 新建研讨组</caption>
			        <tbody class="c5 f14">
				        <tr>
				            <td width="280px">研讨主题</td>
				            <td><input class="input_2" name="discuss.topic"/><span class="red">*</span></td>
				        </tr>
				        <tr>
				            <td>研讨时间</td>
				            <td><s:textfield name="discuss.discuss_time" cssClass="Wdate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" readonly="true"/> <span class="red">*</span></td>
				        </tr>
				        <tr>
				            <td>研讨分组</td>
				            <td><s:select name="discuss.discuss_no" list="#{1:1, 2:2, 3:3, 4:4, 5:5, 6:6, 7:7, 8:8, 9:9, 10:10, 11:11, 12:12, 13:13, 14:14, 15:15, 16:16, 17:17, 18:18, 19:19, 20:20}"/> <span class="red">*</span></td>
				        </tr>
				        <tr>
				            <td>研讨地点</td>
				            <td><input class="input_2" name="discuss.location"/></td>
				        </tr>
				        <tr>
				            <td>主持人</td>
				            <td><input class="input_2" name="discuss.compere"/></td>
				        </tr>
				        <tr>
                            <td></td>
				            <td>
				                <s:submit cssClass="button_2 cf" value="保存" />
				            </td>
				        </tr>
			        </tbody>
			    </table>
		    </s:form>
		</div>
	</div>
</body>
</html>
