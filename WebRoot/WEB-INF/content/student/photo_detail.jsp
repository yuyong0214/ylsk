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
			    <caption class="caption_title">照片详情</caption>
			    <tbody class="c5 f14">
				    <tr>
				      <td width="100px">上传人</td>
				      <td class="left">${photo.realname}</td>
				    </tr>
				    <tr>
				      <td>上传时间</td>
				      <td class="left">${gfn:date(photo.create_time, 'yyyy-MM-dd hh:mm:ss')}</td>
				    </tr>
				    <tr>
				      <td>获得赞数</td>
				      <td class="left">${photo.zan_count}</td>
				    </tr>
				    <tr>
				    <td></td>
				    <td class="left"><img title="${photo.url}" width="500px" src="${base}/photo/${photo.url}" /></td>
				    </tr>
				    <tr>
				        <td colspan="3">
				            <input type="button" class="button_2 cf" value="返回" onclick="history.back();"/>
				        </td>
				    </tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>