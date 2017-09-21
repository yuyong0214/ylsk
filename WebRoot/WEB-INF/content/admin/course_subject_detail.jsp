<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
    <script src="${base}/js/jquery.js"></script>
</head>
<body>
	<div class="content_box">
		<div class="content_tb">
			<table class="list_table c3">
		    	<caption class="caption_title">专题详情</caption>
		    	<tbody class="c5 f14">
			        <tr>
			            <td width="280px">专题名程</td>
			            <td>${subject.subject_name}</td>
			        </tr>
			        <tr>
			            <td>专题编号</td>
			            <td>${subject.subject_no}</td>
			        </tr>
			        <tr>
			            <td>状态</td>
			            <td>
			            	<c:if test="${subject.status==0}">正常</c:if>
			            	<c:if test="${subject.status==1}">停用</c:if>
			            </td>
			        </tr>
			        <tr>
			            <td>创建时间</td>
			            <td>${gfn:date(subject.subject_date, "yyyy-MM-dd")}</td>
			        </tr>
			        <tr>
			            <td>简介</td>
			            <td>${subject.general_introduction}</td>
			        </tr>
			        <tr>
			            <td>图片（普通尺寸）</td>
			            <td><img src="${base}/subject_image/${subject.image_url1}"/></td>
			          </tr>
			          <tr>
			            <td>图片名（两倍尺寸）</td>
			            <td><img src="${base}/subject_image/${subject.image_url2}"/></td>
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
