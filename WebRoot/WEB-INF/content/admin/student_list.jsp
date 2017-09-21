<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
<script src="${base}/js/jquery.js"></script>
<script>
	function selectAll(value) {
		$("input[name='ids']").prop("checked", value);
	}
</script>
</head>
<body>
  <div class="content_box">
    <div class="content_tb">
      <s:form action="student!discuss">
        <s:hidden name="student.class_id" />
        <table class="list_table c3 f14">
          <caption class="caption_title">
            ${clazz.class_name} - 学员列表 <span class="f14 fright">
              <%-- <a href="student!addList.action?classId=${clazz.id}">指定学员</a> --%>
              <%-- <a href="student!importAvatar.action?student.class_id=${clazz.id}">导入学员头像</a> 
              --%>
              <a href="student!importStudent.action?student.class_id=${clazz.id}">导入学员</a>
            </span>
          </caption>
          <tbody class="c5">ss
            <tr class="c3">
              <td><input type="checkbox" id="all"
                title="全选" onclick="selectAll(this.checked)" /></td>
              <td>学员姓名</td>
              <td>学习分组</td>
              <td>组长</td>
              <td>研讨分组</td>
              <td>住宿公寓</td>
              <td>房间号</td>
              <td>房间电话</td>
              <td>签到</td>
              <td>顺序号</td>
              <td>操作</td>
            </tr>
            <c:forEach items="${studentList}" var="s">
              <tr>
                <td><input type="checkbox" name="ids"
                  value="${s.id}" /></td>
                <td>${s.realname}<c:if
                    test="${!empty s.class_committee}">【${ta:dictValue('class_committee', s.class_committee)}】</c:if></td>
                <td><c:if test="${s.group_no == 0}">未分组</c:if> <c:if
                    test="${s.group_no != 0}">第 ${s.group_no} 组</c:if></td>
                <td>${s.group_leader == 1 ? '是' : ''}</td>
                <td><c:if test="${s.discuss_no == 0}">未分组</c:if> <c:if
                    test="${s.discuss_no != 0}">第 ${s.discuss_no} 组</c:if>
                </td>
                <td>${s.hotel}</td>
                <td>${s.room}</td>
                <td>${s.room_phone}</td>
                <td>${s.sign == 1 ? '是' : ''}</td>
                <td>${s.sn}</td>
                <td><a
                  href="student!edit.action?student.id=${s.id}">修改</a> <a
                  href="student!delete.action?student.id=${s.id}&student.class_id=${s.class_id}"
                  onclick="return confirm('您确定要从班级中删除【${s.realname}】吗？');">删除</a>
                  <a
                  href="student!up.action?student.id=${s.id}&student.class_id=${s.class_id}">上移</a>
                  <a
                  href="student!down.action?student.id=${s.id}&student.class_id=${s.class_id}">下移</a>
                  <a
                  href="student!top.action?student.id=${s.id}&student.class_id=${s.class_id}">置顶</a>
                </td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
        <s:submit cssClass="button_2 cf" value="批量设置研讨分组" />
        <s:select name="student.discuss_no"
          list="#{0:'未分组', 1:1, 2:2, 3:3, 4:4, 5:5, 6:6, 7:7, 8:8, 9:9, 10:10, 11:11, 12:12, 13:13, 14:14, 15:15, 16:16, 17:17, 18:18, 19:19, 20:20}" />
      </s:form>
      <g:pager />
    </div>
  </div>
</body>
</html>
