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
      <table class="list_table c3 f14">
        <caption class="caption_title">资源详情</caption>
        <tbody class="c5">
        <tr>
          <td width="280px">资源名称</td>
          <td>${resource.title}</td>
        </tr>
        <tr>
          <td>班级</td>
          <td><c:if test="${resource.class_id==0}">公共资源</c:if>
            <c:if test="${resource.class_id!=0}">${resource.class_name}</c:if>
          </td>
        </tr>
        <tr>
          <td>资源分类</td>
          <td>${resource.module_name}</td>
        </tr>

        <tr>
          <td>文件类型</td>
          <td>
            ${ta:dictValue('resource_type',resource.type)}</td>
        </tr>
        <tr>
          <td>资源路径</td>
          <td>${resource.url}</td>
        </tr>
        <tr>
          <td>文件大小</td>
          <td>${resource.size}</td>
        </tr>
        <tr>
          <td>主讲人</td>
          <td>${resource.lecturer}</td>
        </tr>
        <tr>
          <td>主讲人简介</td>
          <td>${gfn:br(resource.introduction)}</td>
        </tr>
        <tr>
          <td>上传时间</td>
          <td>${gfn:date(resource.create_time,'yyyy-MM-dd HH:mm:ss')}</td>
        </tr>
        <tr>
          <td></td>
          <td><input type="button"
            class="button_2 cf" value="返回" onclick="history.back();" /></td>
        </tr>
        </tbody>
      </table>
    </div>
  </div>
</body>
</html>
