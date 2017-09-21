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
        <caption class="caption_title">信息详情</caption>
        <tbody class="c5 f14">
          <tr>
            <td>信息分类</td>
            <td>${ta:dictValue('info_category', info.category)}</td>
          </tr>
          <tr>
            <td>标题</td>
            <td>${info.title}</td>
          </tr>
          <tr>
            <td>标题图片</td>
            <td><img src="${base}/${info.image}" width="200"
              height="150" /></td>
          </tr>
          <tr>
            <td>发布时间</td>
            <td>${gfn:date(info.create_time,'yyyy-MM-dd HH:mm:ss')}</td>
          </tr>
          <tr>
            <td>内容</td>
            <td><div style="line-height: 200%; padding: 10px;">${info.content}</div></td>
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
