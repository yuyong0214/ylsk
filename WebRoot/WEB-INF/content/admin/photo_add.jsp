<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<html>
<head>
<link href="${base}/css/ht_Web.css" rel="stylesheet" type="text/css" />
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
      <s:form action="photo!addlist.action"
        enctype="multipart/form-data" methed="post">
          <table class="list_table c3 f14" id="tables2">
          <caption class="caption_title">添加照片</caption>
          <tbody class="c5">
          <tr>
            <td>照片：</td>
            <td><input type="file" name="upload" /><span>（建议尺寸：150px*150px）</span></td>
          </tr>
          </tbody>
        </table>
        <br />
        <input type="button" class="button_2 cf" value="添加"
          onclick="add()" />
        <input type="submit" class="button_2 cf" value="上传" />
      </s:form>
    </div>
  </div>
</body>
</html>