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
		        <caption class="caption_title">异常详情</caption>
		        <tbody class="c5 f14">
			        <tr>
			            <td width="280px">设备标识</td>
			            <td>
			               <c:if test="${mapDetail.device==1}">IOS</c:if>
			               <c:if test="${mapDetail.device==2}">ANDRIOD</c:if>
			            </td>
			        </tr>
			        <tr>
			            <td>手机型号</td>
			            <td>${mapDetail.phone_model}</td>
			        </tr>
			        <tr>
			            <td>手机系统版本</td>
			            <td>${mapDetail.device_version}</td>
			        </tr>
			        <tr>
			            <td>软件版本</td>
			            <td>${mapDetail.software_version}</td>
			        </tr>
			        <tr>
			            <td>用户名</td>
			            <td>${mapDetail.username}</td>
			        </tr>
			        <tr>
			            <td>班级</td>
			            <td>${mapDetail.class_name}</td>
			        </tr>
			        <tr>
			            <td>分院</td>
			            <td>${mapDetail.academy_name}</td>
			        </tr>
			        <tr>
			            <td>时间</td>
			            <td>${gfn:date(mapDetail.create_time,'yyyy-MM-dd HH:mm:ss')}</td>
			        </tr>
			        <tr>
			            <td>异常信息</td>
			            <td><pre>${mapDetail.exception}</pre></td>
			        </tr>
			        <tr>
			          <td></td>
			            <td>
			                <input name="baocun" type="button" class="button_2 cf" value="返回" onclick="history.back();" />
			            </td>
			        </tr>
		        </tbody>
		    </table>
		</div>
	</div>
</body>
</html>