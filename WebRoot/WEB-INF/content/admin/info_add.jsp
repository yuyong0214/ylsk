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
<body style="background-color:#efeff8;">
<div class="content_box">
    <div class="content_tb">
    <form action="info!save.action" enctype="multipart/form-data" method="post">
    <table class="list_table c3">
        <caption class="caption_title">新建信息</caption>
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
                <input type="text" name="info.title" class="input_2"/>
                <span style="color: red"> *</span>
            </td>
        </tr>
        <tr>
            <td>标题图片</td>
            <td>
                <input type="file" name="image"/>（图片最佳尺寸为：200 * 150）
            </td>
        </tr>
        <tr>
            <td>内容</td>
            <td>
                <textarea rows="3" cols="15" name="info.content" style="resize:none;" id="content"></textarea>
                <script>CKEDITOR.replace('content');</script>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input name="baocun" type="submit" class="button_2 cf" value="保存" />
            </td>
        </tr>
       </tbody>
    </table>
    </form>
    </div>
</div>
</body>
</html>
