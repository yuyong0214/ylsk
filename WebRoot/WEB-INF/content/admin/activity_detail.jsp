<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="content_box">
		<div class="content_tb">
		    <table class="list_table c3">
		        <caption class="caption_title">活动详情</caption>
		        <tbody class="c5 f14">
			        <tr>
			            <td  width="280px">活动主题</td>
			            <td>${activity.theme}</td>
			        </tr>
			        <tr>
			            <td>活动发起人</td>
			            <td>${activity.initiator}</td>
			        </tr>
			        <tr>
			            <td>活动地址</td>
			            <td>${activity.site}</td>
			        </tr>
			        <tr>
			            <td>开始时间</td>
			            <td>${gfn:date(activity.begin_time, "yyyy-MM-dd HH:mm")}</td>
			        </tr>
			        <tr>
			            <td>结束时间</td>
			            <td>${gfn:date(activity.end_time, "yyyy-MM-dd HH:mm")}</td>
			        </tr>
			        <tr>
			            <td>活动内容</td>
			            <td>${activity.content}</td>
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
	</div>
</body>
</html>
