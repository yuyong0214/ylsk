<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${base}/js/jquery.js"></script>
</head>
<body>
  <div class="content_box">
  <div class="content_tb">
    <form action="paper!saveQuestion.action">
      <s:hidden name="paper.id" />
      <table class="list_table c3 f14">
        <caption class="caption_title">试题列表</caption>
        <tbody class="c5">
        <tr class="c3">
          <td width="10%"></td>
          <td width="60%">题干</td>
          <td width="30%">类型</td>
        </tr>
        <c:forEach items="${questions}" var="q">
          <tr>
            <td><input class="input_4" name="Ids" type="checkbox" value="${q.id}" /></td>
            <td>${q.title}</td>
            <td><c:if test="${q.type==1}">单选题</c:if> <c:if
                test="${q.type==2}">多选题</c:if> <c:if test="${q.type==3}">判断题</c:if>
            </td>
          </tr>
        </c:forEach>
        <tr>
          <td><input type="submit" class="button_2 cf" value="添加选中题目" /></td>
        </tr>
        </tbody>
      </table>
    </form>
  </div>
  </div>
</body>
</html>