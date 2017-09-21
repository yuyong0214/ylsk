<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link rel="stylesheet" type="text/css" href="${base }/css/ht_web.css" />
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
			
			function clearParams(){
			    $(":input[name='academy.academy_name']").val("");
			    $(":input[name='academy.academy_code']").val("");
			    $(":input[name='academy.status']").val("");
			}
		</script>
</head>
<body style="background-color:#efeff8;">
  <div class="content_box">
    <div class="content_tb">
      <s:form action="academy!list">
        <table class="list_table c3">
          <caption class="caption_title">分院查询</caption>
          <tbody class="c5 f14">
            <tr>
              <td>分院名</td>
              <td><input type="text" name="academy.academy_name"
                class="input_2"
                value="${academyParams['academy.academy_name']}" /></td>
              <td>编号</td>
              <td><input type="text" class="input_2"
                name="academy.academy_code"
                value="${academyParams['academy.academy_code']}" /></td>
              <td>状态</td>
              <td><s:select name="academy.status"
                  list="#{'':'全部',0:'正常',1:'停用'}"></s:select></td>
            </tr>
            <tr style="text-align:center;">
              <td colspan="6"><input name="chaxun"
                onclick="submit()" type="button" class="button_2 cf"
                value="查询" />
                <input type="button" class="button_2 cf" value="重置" onclick="clearParams()"/>
              </td>
            </tr>
          </tbody>
        </table>
      </s:form>
    </div>
    <div class="content_tb">
    <table class="list_table c3 f14" id="listacademyTable">
      <caption class="caption_title">分院列表</caption>
      <tbody class="c5">
        <tr class="c3">
          <td width="10%">分院简称</td>
          <td width="20%">分院全称</td>
          <td width="10%">编号</td>
          <td width="10%">状态</td>
          <td width="10%">截止日期</td>
          <td width="10%">坐标</td>
          <td width="20%">操作</td>
        </tr>
        <c:forEach items="${academyList}" var="list">
          <tr>
            <td>${list.academy_name}</td>
            <td>${list.academy_full_name}</td>
            <td>${list.academy_code}</td>
            <td><c:if test="${list.status==0}">正常</c:if> <c:if
                test="${list.status==1}">停用</c:if></td>
            <!--             <td>${ta:dictValue('academy_folk',a.folk)}</td> -->
            <td>${list.deadline}</td>
            <td>${list.coordinates}</td>

            <td><a
              href="academy!detail.action?academy.id=${list.id}">详情</a>
              <a href="academy!edit.action?academy.id=${list.id}">修改</a>
              <a href="academy!delete.action?academy.id=${list.id}"
              onclick="return confirm('您确定要删除【${list.academy_name}】吗？');">删除</a>
              <a href="academy_module!list.action?academy_id=${list.id}">模块布局</a>
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
