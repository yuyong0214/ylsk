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
    <s:form action="micro_course!save" enctype="multipart/form-data">
    <table class="list_table c3">
        <caption class="caption_title">新建微课程</caption>
        <tbody class="c5 f14">
        <tr>
            <td>课程名称</td>
            <td><s:textfield cssClass="input_2" name="micro.course_name"/> </td>
        </tr>
        <tr>
            <td>课程编号</td>
            <td><s:textfield cssClass="input_2" name="micro.course_no"/> </td>
        </tr>
        <tr>
            <td>学习时长</td>
            <td><s:textfield cssClass="input_2" name="micro.duration"/> </td>
        </tr>
        <tr>
        	<td>所属专题</td>
        	<td>
        		<select name="micro.subject_id" class="select">
        			<c:forEach items="${subjectList }" var="list">
        				<option value="${list.id }">${list.subject_name }</option>
        			</c:forEach>
        		</select>
        	</td>
        </tr>
        <tr>
            <td>主讲人</td>
            <td><s:textfield cssClass="input_2" name="micro.lecturer"/></td>
        </tr>
        <tr>
        	<td>简介</td>
        	<td>
        		<textarea rows="10" cols="50" name="micro.introduction"></textarea>
        	</td>
        </tr>
        <tr>
        	<td>图片（普通尺寸）</td>
        	<td class="left"><input type="file" name="upload1"/><span style="color:red">（建议上传大小为 163 * 126）</span></td>
        </tr>
        <tr>
        	<td>图片（两倍尺寸）</td>
        	<td class="left"><input type="file" name="upload2"/><span style="color:red">（建议上传大小为 326 * 252）</span></td>
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
</html>
