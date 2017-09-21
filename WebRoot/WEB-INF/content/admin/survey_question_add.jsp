<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link rel="stylesheet" type="text/css" href="${base }/css/ht_web.css">
  <script type="text/javascript" src="${base}/js/jquery.js"></script>
</head>
<body style="background-color:#efeff8;">
  <script type="text/javascript">
			var index = 2;
			function addOption() {
				if (index >= 10) {
					alert("最多支持10个选项");
					return;
				}
				index++;
				var input = '<tr id="option'+index+'">'
						+ '<td>选项'
						+ String.fromCharCode(65 + index - 1)
						+ '</td>'
						+ '<td class="left">'
						+ '<input class="input_2" name="surveyQuestion.values"/></td>'
						+ '</tr>';
				$("#option_button").before(input);
			}
			function removeOption() {
				if (index > 0) {
					$("#option" + index).remove();
					index--;
				}
			}

			$(function() {
				$("select[name='surveyQuestion.type']").change(function() {
					if ($(this).val() == 3) {//判断题
						$("#option_button").hide();
					} else {
						$("#option_button").show();
					}
				})
			})
		</script>
  <div class="content_box">
    <div class="content_tb">
      <form action="survey_question!save.action">
        <s:hidden name="survey_title"></s:hidden>
        <s:hidden name="surveyQuestion.survey_id"></s:hidden>
        <table class="list_table c3">
          <caption class="caption_title">新建问卷题目</caption>
          <tbody class="c5 f14">
            <tr>
              <td width="280px">题目名称</td>
              <td><s:textarea name="surveyQuestion.title"
                  style="width:200px;height:100px;resize:none;" /> <span
                class="red"> *</span></td>
            </tr>
            <tr>
              <td>题目类型</td>
              <td><s:select name="surveyQuestion.type"
                  list="#{1:'单选题',2:'多选题'}" /> <span class="red">
                  *</span></td>
            </tr>
            <tr id="option1">
              <td>选项A</td>
              <td><input class="input_2"
                name="surveyQuestion.values" /></td>
            </tr>
            <tr id="option2">
              <td>选项B</td>
              <td><input class="input_2"
                name="surveyQuestion.values" /></td>
            </tr>

            <tr id="option_button">
              <td></td>
              <td>
              <a><label><input type="button" class="button_4" value="+" onclick="addOption()" /> 添加选项</label></a>
              <a><label><input type="button" class="button_4" value="-" onclick="removeOption()" /> 删除选项</label></a>
              </td>
            </tr>
            <tr>
              <td></td>
              <td><input type="submit"
                class="button_2 cf" value="保存" /> <input type="button"
                class="button_2 cf" value="取消" onclick="history.back()" />
              </td>
            </tr>
        </table>
      </form>
    </div>
  </div>
</body>
</html>