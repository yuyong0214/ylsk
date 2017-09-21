<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link rel="stylesheet" type="text/css" href="${base }/css/ht_web.css" />
<script src="${base}/widget/My97DatePicker/WdatePicker.js"></script>
<script src="${base }/js/jquery.js"></script>
<script type="text/javascript">
	var index = 1;
	function addStation() {
		index++;
		var r = '<tr id="station'+index+'">'
				+ '<td>接送站点'
				+ index
				+ '</td>'
				+ '<td><input class="input_2" name="academy.values"/></td></tr>';
		$("#add_btn").before(r);
	}
	function removeStation() {
		if (index > 1) {
			$("#station" + index).remove();
			index--;
		}
	}
	function find() {
		parent.mainFrame.window.open("http://api.map.baidu.com/lbsapi/getpoint/index.html");
	}
</script>
</head>
<body>
  <div class="content_box">
    <div class="content_tb">
      <s:form action="academy!save" method="post"
        enctype="multipart/form-data">
        <table class="list_table c3">
          <caption class="caption_title">新建分院</caption>
          <tbody class="c5 f14">
            <tr>
              <td>分院简称</td>
              <td><input class="input_2"
                name="academy.academy_name" /><span class="red">*</span></td>
            </tr>
            <tr>
              <td>分院全称</td>
              <td><input class="input_2"
                name="academy.academy_full_name" /><span class="red">*</span></td>
            </tr>
            <tr>
              <td>分院编号</td>
              <td><input class="input_2"
                name="academy.academy_code" /><span class="red">*</span></td>
            </tr>
            <tr>
              <td>分院状态</td>
              <td><select name="academy.status">
                  <option value="0">正常</option>
                  <option value="1">停用</option>
              </select></td>
            </tr>
            <tr>
              <td>截止日期</td>
              <td><s:textfield name="academy.deadline"
                  onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})"
                  cssClass="Wdate" readonly="true" /></td>
            </tr>
            <tr>
              <td>logo</td>
              <td><input type="file" class="input_2" name="upload" /><span>（建议尺寸：150px*150px）</span></td>
            </tr>
            <tr>
              <td>地图经纬度</td>
              <td><input class="input_2" name="academy.coordinates" />
                <span class="red">*</span> <a onclick="find()">查询经纬度</a></td>
            </tr>
            <tr id="station1">
              <td>接送站点1</td>
              <td><input name="academy.values" class="input_2" /></td>
            </tr>
            <tr id="add_btn">
              <td></td>
              <td>
              <a><label><input type="button" class="button_4" value="+" onclick="addStation()" /> 添加接站点</label></a> 
              <a><label><input type="button" class="button_4" value="-" onclick="removeStation()" /> 删除接站点</label></a></td>
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
