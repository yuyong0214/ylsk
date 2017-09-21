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
        <caption class="caption_title">${clazz.class_name}
          - 工作人员列表 <span class="f14 fright"> <a
            href="staff!add.action?staff.class_id=${clazz.id}">添加工作人员</a>
          </span>
        </caption>
        <tbody class="c5">
          <tr class="c3">
            <td>序号</td>
            <td>姓名</td>
            <td>性别</td>
            <td>人员类型</td>
            <td>个人简介</td>
            <td>手机号码</td>
            <td>学习分组</td>
            <td>是否催化师</td>
            <td>住宿公寓</td>
            <td>房间号</td>
            <td>房间电话</td>
            <td>操作</td>
          </tr>
          <c:forEach items="${staffList}" var="s">
            <tr>
              <td>${s.sn}</td>
              <td>${s.realname}</td>
              <td><c:if test="${s.sex == 0}">女</c:if>
                <c:if test="${s.sex == 1}">男</c:if></td>
              <td><c:if test="${s.staff_type == 0}">教师</c:if>
                <c:if test="${s.staff_type == 1}">班主任</c:if> <c:if
                  test="${s.staff_type == 2}">工作人员</c:if></td>
              <td>${s.introduction}</td>
              <td>${s.mobile}</td>
              <td><c:if test="${s.group_no == 0}">未分组</c:if>
                <c:if test="${s.group_no != 0}">第 ${s.group_no} 组</c:if>
              </td>
              <td>${s.tutor == 1 ? '是' : ''}</td>
              <td>${s.hotel}</td>
              <td>${s.room}</td>
              <td>${s.room_phone}</td>
              <td><a
                href="staff!edit.action?staff.id=${s.id}">修改</a> <a
                href="staff!delete.action?staff.id=${s.id}&staff.class_id=${s.class_id}"
                onclick="return confirm('您确定要从班级中删除【${s.realname}】吗？');">删除</a>
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
      <g:pager/>
    </div>
  </div>
</body>
</html>
