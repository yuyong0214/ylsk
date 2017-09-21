<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color:#efeff8;">
  <div class="content_box">
    <div class="content_tb">
      <table class="list_table c3 f14">
        <caption class="caption_title">${restaurant.class_name}(班)就餐列表
          <span class=" f14 fright"> <a
            href="restaurant!add.action?restaurant.class_id=${restaurant.class_id}&restaurant.class_name=${restaurant.class_name}">添加</a>
          </span>
        </caption>
        <tbody class="c5">
          <tr class="c3">
            <td>描述</td>
            <td>时间</td>
            <td>地点</td>
            <td>备注</td>
            <td>操作</td>
          </tr>
          <c:forEach items="${listRestaurant}" var="r">
            <tr>
              <td>${r.title}</td>
              <td>${r.rest_time}</td>
              <td>${r.location}</td>
              <td>${r.remark}</td>
              <td><a
                href="restaurant!edit.action?restaurant.id=${r.id}&restaurant.class_name=${restaurant.class_name}">修改</a>
                &emsp; <a
                href="restaurant!delete.action?restaurant.id=${r.id}&restaurant.class_name=${restaurant.class_name}&restaurant.class_id=${restaurant.class_id}"
                onclick="return confirm('确定要删除【${r.title}】吗？')">删除</a></td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
      <g:pager/>
    </div>
  </div>
</body>
</html>
