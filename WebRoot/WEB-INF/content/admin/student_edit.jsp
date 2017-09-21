<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
<script src="${base }/js/jquery.js"></script>
<script src="${base}/widget/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
	$(function() {
		if (${is_shuttle}==0)
		{
			$(".pickupInfo").hide();
			$(".sendoffInfo").hide();
		}else{
			$(".pickupInfo").show();
			$(".sendoffInfo").show();
		}
	})
/* 
	function changePickup(obj) {
		if (obj == 1)
			$(".pickupInfo").show();
		else
			$(".pickupInfo").hide();
	}
	function changeSendoff(obj) {
		if (obj == 1)
			$(".sendoffInfo").show();
		else
			$(".sendoffInfo").hide();
	} */
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
<body>
  <div class="content_box">
    <div class="content_tb">
      <s:form action="student!update">
        <s:hidden name="student.id" />
        <s:hidden name="student.class_id" />
        <s:hidden name="student.user_id" />
        <s:hidden name="student.sn" />
        <s:hidden name="student.sign" />
        <table class="list_table c3">
          <caption class="caption_title">${student.class_name}- 修改学员信息</caption>
          <tbody class="c5 f14">
          <tr>
            <td width="280px">学员姓名</td>
            <td>${student.realname}</td>
          </tr>
          <tr>
            <td>班委成员</td>
            <td><c:set var="classCommitteeList"
                value="${ta:dictList('class_committee')}"></c:set> <s:select
                name="student.class_committee"
                list="#attr.classCommitteeList" listKey="dict_key"
                listValue="dict_value" headerKey="" headerValue="否" /></td>
          </tr>
          <tr>
            <td>学习分组</td>
            <td><s:select name="student.group_no"
                list="#{0:'未分组', 1:1, 2:2, 3:3, 4:4, 5:5, 6:6, 7:7, 8:8, 9:9, 10:10, 11:11, 12:12, 13:13, 14:14, 15:15, 16:16, 17:17, 18:18, 19:19, 20:20}" /></td>
          </tr>
          <tr>
            <td>是否组长</td>
            <td><s:radio name="student.group_leader"
                list="#{'1':'是', '0':'否'}" /></td>
          </tr>
          <tr>
            <td>研讨分组</td>
            <td><s:select name="student.discuss_no"
                list="#{0:'未分组', 1:1, 2:2, 3:3, 4:4, 5:5, 6:6, 7:7, 8:8, 9:9, 10:10, 11:11, 12:12, 13:13, 14:14, 15:15, 16:16, 17:17, 18:18, 19:19, 20:20}" /></td>
          </tr>
          <tr>
            <td>住宿公寓</td>
            <td><s:textfield cssClass="input_2" name="student.hotel" /></td>
          </tr>
          <tr>
            <td>房间号</td>
            <td><s:textfield cssClass="input_2" name="student.room" /></td>
          </tr>
          <tr>
            <td>房间电话</td>
            <td><s:textfield cssClass="input_2" name="student.room_phone" /></td>
          </tr>
          <tr class="pickupInfo">
            <td>(接站) 时间</td>
            <%-- <td><s:textfield name="pick_time"/></td> --%>
            <td><input name="pick_time"
              value="${pick_time }" class="Wdate"
              onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'});" /></td>
          </tr>
          <tr class="pickupInfo">
            <td>(接站) 车站</td>
            <td><c:set var="stationList"
                value="${stationList}" scope="request" /> <s:select
                name="pick_station" list="#request.stationList"
                listKey="stationValue" listValue="stationValue"
                headerKey="" headerValue="-------请 选 择-------" /></td>
          </tr>
          <tr class="pickupInfo">
            <td>(接站) 车次</td>
            <td><s:textfield cssClass="input_2" name="pick_train_num" /></td>
          </tr>
          <tr class="sendoffInfo">
            <td>(送站) 时间</td>
            <%-- <td><s:textfield name="send_time"/></td> --%>
            <td><input name="send_time"
              value="${send_time }" class="Wdate"
              onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'});" /></td>
          </tr>
          <tr class="sendoffInfo">
            <td>(送站) 车站</td>
            <%-- <td><s:textfield name="send_station"/></td> --%>
            <td><c:set var="stationList"
                value="${stationList}" scope="request" /> <s:select
                name="send_station" list="#request.stationList"
                listKey="stationValue" listValue="stationValue"
                headerKey="" headerValue="-------请 选 择-------" /></td>
          </tr>
          <tr class="sendoffInfo">
            <td>(送站) 车次</td>
            <td><s:textfield cssClass="input_2" name="send_train_num" /></td>
          </tr>
          <tr>
            <td></td>
            <td><s:submit cssClass="button_2 cf"
                value="保存" /></td>
          </tr>
          </tbody>
        </table>
      </s:form>
    </div>
  </div>
</body>
</html>
