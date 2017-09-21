<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<META HTTP-EQUIV="Refresh" content="${refresh }"/>
  <title></title>
  <link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
  <script src="${base}/js/jquery.js"></script>
  <script src="${base}/js/jquery.qrcode.js"></script>
  <script src="${base}/js/qrcode.js"></script>
  <script>
		$(function(){
			if(${course.is_evaluate == 1})
				$("#paper_name").show();
			else
				$("#paper_name").hide();
		})
	</script>
</head>
<body>
  <div class="content_box">
    <div class="content_tb">
      <table class="list_table c3">
        <caption class="caption_title">课程详情</caption>
        <tbody class="c5 f14">
        <tr>
          <td width="280px">班级名</td>
          <td>${clazz.class_name}</td>
        </tr>
        <tr>
          <td>课程名</td>
          <td>${course.course_name}</td>
        </tr>
        <tr>
          <td>开课时间</td>
          <td>${gfn:date(course.course_start, "yyyy-MM-dd HH:mm")}</td>
        </tr>
        <tr>
          <td>结课时间</td>
          <td>${gfn:date(course.course_end, "yyyy-MM-dd HH:mm")}</td>
        </tr>
        <tr>
          <td>是否启用评估</td>
          <td><c:if test="${course.is_evaluate == 0 }">停用</c:if>
            <c:if test="${course.is_evaluate == 1 }">启用</c:if></td>
        </tr>
        <tr id="paper_name">
          <td>试卷名称</td>
          <td>${paper_name }</td>
        </tr>
        <tr>
          <td>上课地点</td>
          <td>${course.location}</td>
        </tr>
        <tr>
          <td>主讲人</td>
          <td>${course.lecturer}</td>
        </tr>
        <tr>
          <td>简介</td>
          <td>${course.introduction}</td>
        </tr>
        <tr>
          <td>签到二维码</td>
          <td>
            <div id="qrcodeCanvas"></div> <script>
	                window.onload = function(){
						var qrcode = new QRCode(document.getElementById("qrcodeCanvas"));
			        	qrcode.makeCode("${pqi}&1&${course.id }&"+new Date().getTime());
					};
                </script>
          </td>
        </tr>
        <tr>
          <td></td>
          <td><input type="button"
            class="button_2 cf" value="返回" onclick="history.back();" /></td>
        </tr>
        </tbody>
      </table>
    </div>
  </div>
</body>
</html>
