<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="${base }/css/ht_web.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${base}/js/jquery.js"></script>
</head>
<body>
  <div class="content_box">
    <div class="content_tb">
      <table class="list_table c3 f14">
        <caption class="caption_title">试题列表</caption>
        <tbody class="c5">
          <tr class="c3">
            <td width="50%">题干</td>
            <td width="20%">类型</td>
            <td width="30%">操作</td>
          </tr>
          <c:forEach items="${questionList}" var="q">
            <tr>
              <td>${q.title}</td>
              <td><c:if test="${q.type==1}">单选题</c:if> <c:if
                  test="${q.type==2}">多选题</c:if> <c:if
                  test="${q.type==3}">判断题</c:if></td>
              <td><a
                href="question!detail.action?question.id=${q.id}">详情</a>
                <a href="question!edit.action?question.id=${q.id}">修改</a>
                <a href="question!delete.action?question.id=${q.id}"
                onclick="return confirm('您确定要删除这道试题吗？');">删除</a></td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
      <g:pager/>
    </div>
  </div>
</body>
</html>