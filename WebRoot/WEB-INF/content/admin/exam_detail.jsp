<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" type="text/css" href="${base }/css/ht_web.css">
</head>
<body style="background-color:#efeff8;">
	<div class="content_box">
		<div class="content_tb">
			    <table class="list_table c3">
			        <caption class="caption_title">考试详情</caption>
			        <tbody class="c5 f14">
				        <tr>
				            <td  width="280px">考试名称</td>
				            <td>${exam.exam_name}</td>
				        </tr>
				        <tr>
				            <td>开课时间</td>
				            <td>${gfn:date(exam.start, "yyyy-MM-dd HH:mm")}</td>
				        </tr>
				        <tr>
				            <td>结束时间</td>
				            <td>${gfn:date(exam.end, "yyyy-MM-dd HH:mm")}</td>
				        </tr>
				        <tr>
				            <td>通过比例</td>
				            <td>${exam.pass_scale==0?'60':exam.pass_scale}%</td>
				        </tr>
				        <tr>
				            <td>考试时长</td>
				            <td>${exam.time_limit}分钟</td>
				        </tr>
				        <tr>
				            <td>考试次数</td>
				            <td>${exam.exam_times==0?'不限制':exam.exam_times}</td>
				        </tr>
				        <tr>
				            <td>题目是否乱序</td>
				            <td>${exam.question_random==0?'否':'是'}</td>
				        </tr>
				        <tr>
				            <td>选项是否乱序</td>
				            <td>${exam.option_random==0?'否':'是'}</td>
				        </tr>
				
				        <tr>
                          <td></td>
				            <td>
				                <input type="button" class="button_2 cf" value="返回" onclick="history.back();"/>
				            </td>
				        </tr>
				     </tbody>
			    </table>
	</div>
</body>
</html>
