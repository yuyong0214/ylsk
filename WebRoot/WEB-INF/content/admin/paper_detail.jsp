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
<body>
  <div class="content_box">
    <div class="content_tb">
      <table class="list_table c3">
        <caption class="caption_title">试卷详情</caption>
        <tbody class="c5 f14">
        <tr>
          <td width="280px">试卷名称</td>
          <td>${paper.name}</td>
        </tr>
        <tr>
          <td>类型</td>
          <td><c:if test="${paper.type==1}">班级</c:if>
            <c:if test="${paper.type==2}">课程</c:if></td>
        </tr>
        <%--
        <c:if test="${paper.type==1}">
        <tr>
            <td>所属班级</td>
            <td>${clazz.class_name}</td>
        </tr>
        </c:if>
        <c:if test="${paper.type==2}">
        <tr>
            <td>所属课程</td>
            <td>${course.course_name}</td>
        </tr>
        </c:if>
         --%>
        <tr>
          <td>开始时间</td>
          <td>${gfn:date(paper.begin_time, "yyyy-MM-dd")}</td>
        </tr>
        <tr>
          <td>结束时间</td>
          <td>${gfn:date(paper.end_time, "yyyy-MM-dd")}</td>
        </tr>
        <tr>
           <td></td>
          <td><input type="button"
            class="button_2 cf" value="返回" onclick="history.back();" />
          </td>
        </tr>
        </tbody>
      </table>
    </div>
  </div>
</body>
</html>
