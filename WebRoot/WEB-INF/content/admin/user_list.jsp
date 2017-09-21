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
  <script type="text/javascript">
			var selecttimes = 0;
			function selectAllUser() {
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
			function deleteUsers() {
				var items = document.getElementsByTagName("input");
				var ids = "";
				for (i = 0; i < items.length; i++) {
					if (items[i].id == "selectUser" && items[i].checked == true)
						ids = ids + items[i].value + ",";
				}
				if (ids == "") {
					alert("至少需要选中一项");
				} else {
					var bool = window.confirm("确定要删除指定的所有用户吗？");
					if (bool) {
						document
								.write("<form action='user!deleteUsers.action' method='post' name='deleteform' style='display:none'>");
						document
								.write("<input type='hidden' name='ids' value='"+ids+"'/>");
						document.write("</form>");
						document.deleteform.submit();
					}
				}
			}
			function exportUsers() {
				var items = document.getElementsByTagName("input");
				var ids = "";
				for (i = 0; i < items.length; i++) {
					if (items[i].id == "selectUser" && items[i].checked == true)
						ids = ids + items[i].value + ",";
				}
				if (ids == "") {
					alert("至少需要选中一项");
				} else {
					var bool = window.confirm("确定要导出选中用户吗？");
					if (bool) {
						document
								.write("<form action='user!exportUsers.action' method='post' name='exportform' style='display:none'>");
						document
								.write("<input type='hidden' name='ids' value='"+ids+"'/>");
						document.write("</form>");
						document.exportform.submit();
					}
				}
			}
			function clearParams(){
			    $(":input[name='user.realname']").val("");
			    $(":input[name='user.username']").val("");
			    $(":input[name='user.mobile']").val("");
			    $(":input[name='user.user_type']").val("");
			    $(":input[name='user.sex']").val("");
			    $(":input[name='user.folk']").val("");
			}
		</script>
	<script type="text/javascript">
		$(function(){
			var bef = "<label>";
			var aft = "<i>✓</i></label>";
			$("input[type='checkbox']").each(function(){
				$(this).replaceWith(bef+this.outerHTML+aft);
			});
			$("input[type='radio']").each(function(){
				$(this).replaceWith(bef+this.outerHTML+aft);
			});
		});
	</script>
</head>
<body style="background-color:#efeff8;">
  <div class="content_box">
    <div class="content_tb">
      <s:form action="user!list">
        <table class="list_table c3">
          <caption class="caption_title">用户查询</caption>
          <tbody class="c5 f14">
            <tr>
              <td>姓名</td>
              <td><input type="text" name="user.realname"
                class="input_2" value="${userParams['user.realname']}" /></td>
              <td>用户名</td>
              <td><input type="text" name="user.username"
                class="input_2" value="${userParams['user.username']}" /></td>
              <td>手机</td>
              <td><input type="text" name="user.mobile"
                class="input_2" value="${userParams['user.mobile']}" /></td>
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
      <table class="list_table c3 f14">
        <caption class="caption_title">
          用户列表<span class=" f14 fright"><a
            href="javascript:void(0)" onclick="exportUsers();">导出选中用户</a><a
            href="javascript:show()" onclick="deleteUsers();">删除选中用户</a></span>
        </caption>
        <tbody class="c5">
          <tr class="c3">
            <td>姓名</td>
            <td>用户名</td>
            <td>类型</td>
            <td>性别</td>
            <td>民族</td>
            <td>手机</td>
            <td>操作</td>
            <td onclick="selectAllUser();">全选</td>
          </tr>
          <c:forEach items="${userList}" var="u">
            <tr>
              <td>${u.realname}</td>
              <td>${u.username}</td>
              <td><c:if test="${u.user_type==0}">学员</c:if> <c:if
                  test="${u.user_type==1}">管理员</c:if> <c:if
                  test="${u.user_type==2}">教职工</c:if></td>
              <td><c:if test="${u.sex==0}">女</c:if> <c:if
                  test="${u.sex==1}">男</c:if></td>
              <td>${u.mobile}</td>
              <td><a href="user!detail.action?id=${u.id}">详情</a> <a
                href="user!edit.action?user.id=${u.id}">修改</a> <a
                href="user!delete.action?user.id=${u.id}&user.avatar=${u.avatar}"
                onclick="return confirm('您确定要删除【${u.realname}】吗？');">删除</a>
                <a href="user!pwdedit.action?user.id=${u.id}">密码修改</a> <c:if
                  test="${u.user_type==0}">
                  <a
                    href="user!statistics.action?id=${u.id}&name=${u.username}">上线次数统计</a>
                </c:if></td>
              <td><input id="selectUser" name="danxuan" class="input_4"
                type="checkbox" value="${u.id}" /></td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
      <g:pager/>
    </div>
  </div>
</body>
</html>
