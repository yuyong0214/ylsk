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
        <caption class="caption_title">${clazz.class_name}-
          学员导入结果</caption>
          <tbody class="c5 f14">
        <tr>
          <td colspan="2">导入成功：${success}行</td>
        </tr>
        <tr>
          <td width="100px">数据行号</td>
          <td>错误描述</td>
        </tr>
        <c:forEach items="${errorList}" var="s">
          <tr>
            <td width="100px">${s.errorLine}</td>
            <td>${s.errorMessage}</td>
          </tr>
        </c:forEach>
        <tr>
          <td colspan="2"><input type="button" class="button_2 cf"
            value="返回"
            onclick="window.location = 'student!list.action?student.class_id=${clazz.id}';" /></td>
        </tr>
        </tbody>
      </table>
    </div>
  </div>
</body>
</html>
