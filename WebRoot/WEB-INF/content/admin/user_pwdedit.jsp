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
      <s:form action="user!updatePassword.action">
        <s:hidden name="user.id" />
        <s:hidden name="user.uuid" />
        <table class="list_table c3">
          <caption class="caption_title">密码修改</caption>
          <tbody class="c5 f14">
          <tr>
            <td>密码</td>
            <td><s:password cssClass="input_2" name="user.password" /></td>
          </tr>
          <tr>
            <td>重复密码</td>
            <td><s:password cssClass="input_2" name="user.password_ag" /></td>
          </tr>
          <tr>
            <td></td>
            <td><input type="submit" class="button_2 cf" value="保存" /> <input type="button"
              class="button_2 cf" value="返回" onclick="history.back();" /></td>
          </tr>
          </tbody>
        </table>
      </s:form>
    </div>
  </div>
</body>
</html>
