<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
<script src="${base}/widget/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
  <div class="content_box">
    <div class="content_tb">
      <s:form action="restaurant!update">
        <table class="list_table c3">
          <s:hidden name="restaurant.class_id"></s:hidden>
          <s:hidden name="restaurant.class_name"></s:hidden>
          <s:hidden name="restaurant.id"></s:hidden>
          <caption class="caption_title">修改就餐</caption>
          <tbody class="c5 f14">
          <tr>
            <td width="280px">就餐描述</td>
            <td><s:textfield cssClass="input_2" name="restaurant.title" />
              <span style="color: red">*</span>(如：早餐，午餐，晚餐，或其他)</td>
          </tr>
          <tr>
            <td>就餐时间</td>
            <td><s:textfield cssClass="input_2"
                name="restaurant.rest_time" /></td>
          </tr>
          <tr>
            <td>地点</td>
            <td><s:textfield cssClass="input_2"
                name="restaurant.location" /></td>
          </tr>
          <tr>
            <td>备注</td>
            <td><s:textarea rows="10" cols="50"
                name="restaurant.remark"></s:textarea></td>
          </tr>
          <tr>
            <td></td>
            <td><s:submit cssClass="button_2 cf"
                value="保存" /> <input type="button" class="button_2 cf"
              value="返回" onclick="history.back();" /></td>
          </tr>
          </tbody>
        </table>
      </s:form>
    </div>
  </div>
</body>
</html>
