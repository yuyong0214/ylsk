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
      <s:form action="question!importData" enctype="multipart/form-data">
        <table class="list_table c3">
          <caption class="caption_title">导入试题</caption>
          <tbody class="c5 f14">
          <tr>
            <td width="100px">导入文件</td>
            <td class="left"><input name="file" type="file"
              size="50" /> <span class="prompt">&nbsp;&nbsp;&nbsp;只支持Excel文件</span>&nbsp;&nbsp;&nbsp;&nbsp;
              <a href="${base}/doc/questions.xls">下载导入模板</a></td>
          </tr>
          <tr>
            <td class="left" colspan="2"><s:submit
                cssClass="button_2 cf" value="导入" /> <input
              type="button" class="button_2 cf" value="返回"
              onclick="javascript:history.back();" /></td>
          </tr>
          </tbody>
        </table>
      </s:form>
    </div>
  </div>
</body>
</html>
