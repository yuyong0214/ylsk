<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="${base }/css/ht_web.css" rel="stylesheet" type="text/css" />
    <script src="${base}/js/jquery.js"></script>
</head>
<body class="admin">
<div class="content_box">
    <table class="list_table c3">
        <caption class="caption_title">分院详情</caption>
        <tbody class="c5 f14">
        <tr>
            <td width="280px">分院简称</td>
            <td>${academy.academy_name}</td>
        </tr>
        <tr>
            <td>分院全称</td>
            <td>${academy.academy_full_name}</td>
        </tr>
        <tr>
            <td>编号</td>
            <td>${academy.academy_code}</td>
        </tr>
        <tr>
            <td>截止时间</td>
            <td>${gfn:date(academy.deadline, "yyyy-MM-dd")}</td>
        </tr>
        <tr>
            <td>状态</td>
            <td>
            	<c:if test="${academy.status==0}">正常</c:if>
            	<c:if test="${academy.status==1}">停用</c:if>
            </td>
        </tr>
        <tr>
            <td>分院经纬度</td>
            <td>${academy.coordinates}</td>
        </tr>
        <c:forEach items="${stations}" var="option">
		<c:forEach items="${option.value}" var="o" varStatus="i">
		<tr>
			<td>接站点${i.index+1 }</td>
			<td>
				${o.value}
			</td>
		</tr>
		</c:forEach>
		</c:forEach>
        <tr>
            <td>logo</td>
            <td><img src="${base}/avatar/${academy.logo}" onerror="javascript:this.src='${base}/avatar/default.jpg'" style="width: 150px;height: 150px" /></td>
        </tr>
        <tr>
          <td></td>
            <td colspan="2">
                <input type="button" class="button_2 cf" value="返回" onclick="history.back();"/>
            </td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>
