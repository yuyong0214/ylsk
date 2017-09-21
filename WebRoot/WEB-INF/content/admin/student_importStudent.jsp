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
      <s:form action="student!importSubmit"
        enctype="multipart/form-data">
        <s:hidden name="student.class_id" />
        <table class="list_table c3">
          <caption class="caption_title">${clazz.class_name}-
            导入学员</caption>
            <tbody class="c5 f14">
          <tr>
            <td width="100px">导入文件</td>
            <td><input name="file" type="file" size="50" /> <span
              class="prompt">&nbsp;&nbsp;&nbsp;只支持Excel文件</span>&nbsp;&nbsp;&nbsp;&nbsp;
              <a href="${base}/doc/student.xls">下载导入模板</a></td>
          </tr>
          <tr>
            <td colspan="2">
              <p>注意事项：导入模板文件中的粗体列为必填项，其他列为选填项。多次重复导入同一个数据文件将对学员信息进行更新。</p>
              <p>如果导入的学员账号在用户信息中不存在，将为学员创建用户信息并加入到班级中。</p>
            </td>
          </tr>
          <tr>
            <td colspan="2"><s:submit cssClass="button_2 cf"
                value="导入" /> <input type="button" class="button_2 cf"
              value="返回" onclick="javascript:history.back();" /></td>
          </tr>
          </tbody>
        </table>
      </s:form>
      <!--     <s:form action="student!unzip" enctype="multipart/form-data"> -->
      <!--     <s:hidden name="student.class_id"/> -->
      <!--     <table class="listTable"> -->
      <!--         <caption>${clazz.class_name} - 导入学员头像</caption> -->
      <!--         <tr> -->
      <!--             <td width="100px">导入文件</td> -->
      <!--             <td class="left"> -->
      <!-- 	            <input name="avatarfiles" type="file" size="50"/> -->
      <!-- 	            <span class="prompt">&nbsp;&nbsp;&nbsp;只支持.Zip文件</span>&nbsp;&nbsp;&nbsp;&nbsp; -->
      <!--             </td> -->
      <!--         </tr> -->
      <!--         <tr> -->
      <!--             <td class="left" colspan="2"> -->
      <!--                 <p>注意事项：批量上传学员头像前，请将文件夹打包成.Zip格式的压缩包。</p> -->
      <!--                 <p>且学员头像命名命名规则建议为该学员的手机号，避免头像名称重复。</p> -->
      <!--             </td> -->
      <!--         </tr> -->
      <!--         <tr> -->
      <!--             <td class="left" colspan="2"> -->
      <!--                 <s:submit cssClass="btn" value="导入"/> -->
      <!--                 <input type="button" class="btn" value="返回" onclick="javascript:history.back();" /> -->
      <!--             </td> -->
      <!--         </tr> -->
      <!--     </table> -->
      <!--     </s:form> -->
    </div>
  </div>
</body>
</html>
