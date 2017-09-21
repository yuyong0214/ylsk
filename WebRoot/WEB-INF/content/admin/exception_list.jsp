<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${base}/js/jquery.js"></script>
<script type="text/javascript">
	function clearParams() {
		$(":input[name='exception.phone_model']").val("");
		$(":input[name='exception.software_version']").val("");
		$(":input[name='username']").val("");
	}
</script>
</head>
<body style="background-color:#efeff8;">
  <div class="content_box">
    <div class="content_tb">
      <s:form action="exception!list">
        <table class="list_table c3">
          <caption class="caption_title">异常查询</caption>
          <tbody class="c5 f14">
            <tr>
              <td>手机型号</td>
              <td><input name="exception.phone_model"
                class="input_2" value="${exceptionParams['exception.phone_model'] }"></input></td>
              <td>软件版本</td>
              <td><input name="exception.software_version"
                class="input_2" value="${exceptionParams['exception.software_version'] }"></input></td>
              <td>用户名</td>
              <td><input name="username" class="input_2" value="${exceptionParams['username'] }"></input></td>
            </tr>
            <tr style="text-align:center;">
              <td colspan="6"><input name="chaxun"
                onclick="submit()" type="button" class="button_2 cf"
                value="查询" /> <input type="button" class="button_2 cf"
                value="重置" onclick="clearParams()" /></td>
            </tr>
          </tbody>
        </table>
      </s:form>
    </div>
    <div class="content_tb">
      <table class="list_table c3 f14">
        <caption class="caption_title">信息列表</caption>
        <tbody class="c5">
          <tr class="c3">
            <td width="150px">手机型号</td>
            <td width="150px">手机系统版本</td>
            <td width="150px">软件版本</td>
            <td width="150px">用户名</td>
            <td width="150px">异常时间</td>
            <td width="150px">操作</td>
          </tr>
          <c:forEach items="${exceptionList}" var="exception">
            <tr>
              <td>${exception.phone_model}</td>
              <td>${exception.device_version}</td>
              <td>${exception.software_version}</td>
              <td>${exception.username}</td>
              <td>${gfn:date(exception.create_time,'yyyy-MM-dd HH:mm:ss')}</td>
              <td><a
                href="exception!detail.action?exception.id=${exception.id}">详情</a>
                <a
                href="exception!delete.action?exception.id=${exception.id}"
                onclick="return confirm('您确定要删除该异常信息吗？');">删除</a></td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
      <g:pager />
    </div>
  </div>
</body>
</html>