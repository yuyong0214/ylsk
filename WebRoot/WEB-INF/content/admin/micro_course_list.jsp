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
<script type="text/javascript">
	var selecttimes = 0;
	function selectAllacademy() {
		var items = document.getElementsByTagName("input");
		if (selecttimes % 2 == 0) {
			for (i = 0; i < items.length; i++) {
				if (items[i].type == "checkbox")
					items[i].checked = true;
			}
		} else {
			for (i = 0; i < items.length; i++) {
				if (items[i].type == "checkbox")
					items[i].checked = false;
			}
		}

		selecttimes++;
	}
	
	function clearParams(){
	    $(":input[name='micro.course_name']").val("");
	    $(":input[name='micro.course_no']").val("");
	}
</script>
</head>
<body>
  <div class="content_box">
    <div class="content_tb">
      <s:form action="micro_course!list">
        <table class="list_table c3">
          <caption class="caption_title">课程查询</caption>
          <tbody class="c5 f14">
            <tr>
              <td>课程名称</td>
              <td><input type="text" class="input_2"
                name="micro.course_name"
                value="${microcourseParams['micro.course_name']}" /></td>
              <td>课程编号</td>
              <td><input type="text" class="input_2"
                name="micro.course_no"
                value="${microcourseParams['micro.course_no']}" /></td>
            </tr>
            <tr style="text-align:center;">
              <td colspan="4"><s:submit cssClass="button_2 cf"
                  value="查询" />
                  <input type="button" class="button_2 cf" value="重置" onclick="clearParams()" />
                  </td>
            </tr>
          </tbody>
        </table>
      </s:form>
    </div>
    <div class="content_tb">
      <table class="list_table c3 f14" id="listacademyTable">
        <caption class="caption_title">课程列表</caption>
        <tbody class="c5">
          <tr class="c3">
            <td width="10%">课程名称</td>
            <td width="10%">课程编号</td>
            <td width="10%">学习时长</td>
            <td width="10%">主讲人</td>
            <td width="10%">简介</td>
            <td width="10%">所属专题</td>
            <td width="20%">操作</td>
          </tr>
          <c:forEach items="${courseList}" var="list">
            <tr>
              <td>${list.course_name}</td>
              <td>${list.course_no}</td>
              <td>${list.duration}</td>
              <td>${list.lecturer}</td>
              <td>${list.introduction}</td>
              <td>${list.subject_name}</td>
              <td><a
                href="micro_course!detail.action?course_id=${list.id}">详情</a>
                <a href="micro_course!edit.action?course_id=${list.id}">修改</a>
                <a
                href="micro_course!delete.action?course_id=${list.id}"
                onclick="return confirm('您确定要删除【${list.course_name}】吗？');">删除</a>
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
      <g:pager />
    </div>
  </div>
</body>
</html>
