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
<body class="admin">
<div class="body">
    <s:form action="student!save">
    <s:hidden name="student.class_id"/>
    <s:hidden name="student.user_id"/>
    <table class="listTable">
        <caption>${student.class_name} - 指定学员</caption>
        <tr>
            <td width="100px">学员姓名</td>
            <td class="left">${student.realname}</td>
        </tr>
        <tr>
            <td>班委成员</td>
            <td class="left">
                <c:set var="classCommitteeList" value="${ta:dictList('class_committee')}"></c:set>
                <s:select name="student.class_committee" list="#attr.classCommitteeList" listKey="dict_key" listValue="dict_value" headerKey="" headerValue="否"/>
            </td>
        </tr>
        <tr>
            <td>学习分组</td>
            <td class="left"><s:select name="student.group_no" list="#{0:'未分组', 1:1, 2:2, 3:3, 4:4, 5:5, 6:6, 7:7, 8:8, 9:9, 10:10, 11:11, 12:12, 13:13, 14:14, 15:15, 16:16, 17:17, 18:18, 19:19, 20:20}"/></td>
        </tr>
        <tr>
            <td>是否组长</td>
            <td class="left"><s:radio name="student.group_leader" list="#{'1':'是', '0':'否'}"/></td>
        </tr>
        <tr>
            <td>研讨分组</td>
            <td class="left"><s:select name="student.discuss_no" list="#{0:'未分组', 1:1, 2:2, 3:3, 4:4, 5:5, 6:6, 7:7, 8:8, 9:9, 10:10, 11:11, 12:12, 13:13, 14:14, 15:15, 16:16, 17:17, 18:18, 19:19, 20:20}"/></td>
        </tr>
        <tr>
            <td>住宿公寓</td>
            <td class="left"><s:textfield cssClass="input_2" name="student.hotel"/></td>
        </tr>
        <tr>
            <td>房间号</td>
            <td class="left"><s:textfield cssClass="input_2" name="student.room"/></td>
        </tr>
        <tr>
            <td>房间电话</td>
            <td class="left"><s:textfield cssClass="input_2" name="student.room_phone"/></td>
        </tr>
        <tr>
            <td>接站信息</td>
            <td class="left"><s:textarea name="student.pickup" rows="5" cols="50"/></td>
        </tr>
        <tr>
            <td>送站信息</td>
            <td class="left"><s:textarea name="student.sendoff" rows="5" cols="50"/></td>
        </tr>
        <tr>
            <td class="left" colspan="2">
                <s:submit cssClass="button_2 cf" value="保存"/>
            </td>
        </tr>
    </table>
    </s:form>
</div>
</body>
</html>
