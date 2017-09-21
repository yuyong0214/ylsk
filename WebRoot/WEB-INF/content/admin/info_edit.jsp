<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="${base}/widget/ckeditor/ckeditor.js"></script>
</head>
<body>
	<div class="content_box"> 
		<div class="content_tb"> 
		    <s:form action="info!update" enctype="multipart/form-data" method="post">
		    <s:hidden name="info.id"/>
		    <table class="list_table c3">
		        <caption class="caption_title">修改信息</caption>
		        <tbody class="c5 f14">
		        <tr>
		            <td>信息分类</td>
		            <td>
		                <c:set var="categoryList" value="${ta:dictList('info_category')}" scope="request"/>
		                <s:select name="info.category" list="#request.categoryList" 
		                listKey="dict_key" listValue="dict_value"/>
		                <span style="color: red"> *</span>
		            </td>
		        </tr>
		        <tr>
		            <td>标题</td>
		            <td>
		                <s:textfield cssClass="input_2" name="info.title" size="100"/>
		                <span style="color: red"> *</span>
		            </td>
		        </tr>
		        <tr>
		            <td>标题图片</td>
		            <td>
		                <div><img src="${base}/${info.image}" width="200" height="150"/></div>
		                <s:file name="image"/>（图片最佳尺寸为：200 * 150）
		            </td>
		        </tr>
		        <tr>
		            <td>内容</td>
		            <td>
		                <s:textarea cssClass="input_2" rows="5" cols="25" name="info.content" id="content"/>
		                <script>CKEDITOR.replace('content');</script>
		            </td>
		        </tr>
		        <tr>
                    <td></td>
		            <td>
		                <s:submit cssClass="button_2 cf" value=" 保存 "/>
		            </td>
		        </tr>
		        </tbody>
		    </table>
		    </s:form>
		</div>
	</div>
</body>
</html>
