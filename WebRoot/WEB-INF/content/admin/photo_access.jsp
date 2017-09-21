<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${base }/app/jquery.min.js"></script>
<script type="text/javascript">
	function add() {
		var $tr = "<tr><td>照片:</td><td ><input type='file' name='upload'/><span>（建议尺寸：150px*150px）</span></td></tr>";
		$("#tables2").append($tr);
	}
</script>
</head>
<body>
  <div class="content_box">
    <div class="content_tb">
      <s:form action="photo!list.action">
        <s:hidden name="photo.class_id" />
        <table class="list_table c3">
          <caption class="caption_title">查询</caption>
          <tr>
            <td width="100px">学员姓名</td>
            <td class="left"><input class="input_2" type="text" name="user_name" />
            </td>
          </tr>
          <tr>
            <td class="left" colspan="2"><s:submit cssClass="button_2 cf"
                value="查询" /></td>
          </tr>
        </table>
      </s:form>
      <button onclick="add();">添加上传照片</button>
      <s:form action="photo!addlist.action"
        enctype="multipart/form-data" methed="post">
        <table id="list_table c3">
          <tr>
            <td>照片：</td>
            <td><input type="file" name="upload" /><span>（建议尺寸：150px*150px）</span></td>
          </tr>
        </table>
        <input type="submit" value="上传" />
      </s:form>
      <div class="blank"></div>
      <table class="listTable">
        <caption>${class_name}-照片列表</caption>
        <tr>
          <th>上传人</th>
          <th>上传时间</th>
          <th width="100px">操作</th>
        </tr>
        <c:forEach items="${photoList}" var="p">
          <tr>
            <td class="left">${p.realname}</td>
            <td>${gfn:date(p.create_time, 'yyyy-MM-dd HH:mm:ss')}</td>
            <td><a href="photo!detail.action?photo.id=${p.id}">详情</a>
              <a
              href="photo!delete.action?photo.id=${p.id}&photo.class_id=${p.class_id}">删除</a>
            </td>
          </tr>
        </c:forEach>
      </table>
    </div>
  </div>
</body>
</html>
