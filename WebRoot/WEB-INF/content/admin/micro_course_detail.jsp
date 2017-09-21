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
        <caption class="caption_title">课程详情</caption>
        <tbody class="c5 f14">
          <tr>
            <td width="280px">课程名程</td>
            <td>${micro.course_name}</td>
          </tr>
          <tr>
            <td>课程编号</td>
            <td>${micro.course_no}</td>
          </tr>
          <tr>
            <td>学习时长</td>
            <td>${micro.duration}</td>
          </tr>
          <tr>
            <td>所属专题</td>
            <td>${subject_name}</td>
          </tr>
          <tr>
            <td>主讲人</td>
            <td>${micro.lecturer}</td>
          </tr>
          <tr>
            <td>简介</td>
            <td>${micro.introduction}</td>
          </tr>
          <tr>
            <td>图片（普通尺寸）</td>
            <td><img src="${base}/course_image/${micro.image_url1}"/></td>
          </tr>
          <tr>
            <td>图片名（两倍尺寸）</td>
            <td><img src="${base}/course_image/${micro.image_url2}"/></td>
          </tr>
          <tr>
            <td></td>
            <td><input type="button" class="button_2 cf" value="返回"
              onclick="history.back();" /></td>
          </tr>
        </tbody>
      </table>
    </div>
</body>
</html>
