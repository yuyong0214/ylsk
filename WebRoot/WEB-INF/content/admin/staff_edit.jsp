<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
<script src="${base}/widget/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${base}/js/jquery.js"></script>
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
<body>
  <div class="content_box">
    <div class="content_tb">
      <s:form action="staff!update">
        <s:hidden name="staff.id" />
        <s:hidden name="staff.class_id" />
        <s:hidden name="staff.user_id" />
        <table class="list_table c3">
          <caption class="caption_title">${staff.class_name}-
            修改工作人员信息</caption>
            <tbody class="c5 f14">
          <tr>
            <td width="280px">姓名</td>
            <td>${staff.realname}</td>
          </tr>
          <tr>
            <td>人员类型</td>
            <td><s:select name="staff.staff_type"
                list="#{0:'教师', 1:'班主任', 2:'工作人员'}" /></td>
          </tr>
          <tr>
            <td>学习分组</td>
            <td><s:select name="staff.group_no"
                list="#{0:'未分组', 1:1, 2:2, 3:3, 4:4, 5:5, 6:6, 7:7, 8:8, 9:9, 10:10}" /></td>
          </tr>
          <tr>
            <td>是否催化师</td>
            <td><s:radio name="staff.tutor"
                list="#{'1':'是', '0':'否'}" /></td>
          </tr>
          <tr>
            <td>住宿公寓</td>
            <td><s:textfield cssClass="input_2"
                name="staff.hotel" /></td>
          </tr>
          <tr>
            <td>房间号</td>
            <td><s:textfield cssClass="input_2"
                name="staff.room" /></td>
          </tr>
          <tr>
            <td>房间电话</td>
            <td><s:textfield cssClass="input_2"
                name="staff.room_phone" /></td>
          </tr>
          <tr>
            <td>序号</td>
            <td><s:textfield cssClass="input_2"
                name="staff.sn" /></td>
          </tr>
          <tr>
            <td></td>
            <td><s:submit
                cssClass="button_2 cf" value="保存" /></td>
          </tr>
          </tbody>
        </table>
      </s:form>
    </div>
  </div>
</body>
</html>
