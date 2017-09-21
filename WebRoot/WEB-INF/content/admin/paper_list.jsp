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
<style type="text/css">
#tdfirst {
	width: 100px;
}
</style>
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
</script>
</head>
<body>
  <div class="content_box">
    <div class="content_tb">
      <table class="list_table c3 f14" id="listacademyTable">
        <caption class="caption_title">试卷列表</caption>
        <tbody class="c5">
          <tr class="c3">
            <td width="40%">试卷标题</td>
            <td width="10%">试卷类型</td>
            <td width="13%">开始时间</td>
            <td width="13%">结束时间</td>
            <td width="24%">操作</td>
          </tr>
          <c:forEach items="${papers}" var="p">
            <tr>
              <td class="left">${p.name}</td>
              <c:if test="${p.type==1 }">
                <td>班级</td>
              </c:if>
              <c:if test="${p.type==2 }">
                <td>课程</td>
              </c:if>
              <td>${gfn:date(p.begin_time, "yyyy-MM-dd")}</td>
              <td>${gfn:date(p.end_time, "yyyy-MM-dd")}</td>
              <td><a href="paper!detail.action?paper.id=${p.id}">详情</a>
                <a href="paper!edit.action?paper.id=${p.id}">修改</a> <a
                href="paper!QuestionList.action?paper.id=${p.id}">试题</a>
                <a href="paper!delete.action?paper.id=${p.id}"
                onclick="return confirm('您确定要删除【${p.name}】吗？');">删除</a></td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
      <g:pager />
    </div>
  </div>
</body>
</html>
