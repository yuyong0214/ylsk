<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
</head>
<body>
  <div class="content_box">
	    <div class="content_tb">
	      <form action="${base }/admin/user!importData.action" method="post"
	        enctype="multipart/form-data">
	        <table class="list_table c3 f14">
	          <caption class="caption_title">用户批量导入(默认类型为学员)</caption>
	          <tbody class="c5">
	          <tr>
	            <td >请选择批量添加文件</td>
	            <td><input name="resource" type="file" class="input_2"
	              size="50" /> <span >&nbsp;只支持Excel文件(用户默认密码为数据字典定义密码)</span>&nbsp;&nbsp;
	                <c:if test="${empty(academy_id)}">
            	    	<a href="${base}/doc/admin_user.xls">下载模板</a>
            	    </c:if>
            	    <c:if test="${!empty(academy_id)}">
            	    	<a href="${base}/doc/user.xls">下载模板</a>
					</c:if>
	            </td>
	          </tr>
	          <tr>
	            <td colspan="2"><input type="submit"
	              class="button_2 cf" value="导入" /> <input type="button"
	              class="button_2 cf" value="返回"
	              onclick="javascript:history.back();" /></td>
	          </tr>
	          </tbody>
	        </table>
	      </form>
	     </div>
    </div>
</body>
</html>
