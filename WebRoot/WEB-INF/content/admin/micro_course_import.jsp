<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <link href="${base}/css/admin.css" rel="stylesheet" type="text/css" />
    </head>
    <body class="admin">

        <div class="body">
            <form action="${base }/admin/micro_course!importData.action?subject_id=${subject_id}" method="post" 
                enctype="multipart/form-data">
                <table class="listTable">
                    <caption>
                                                               课程批量导入
                    </caption>
                    <tr>
                        <td width="160px">
                            请选择批量添加文件
                        </td>
                        <td class="left">
                            <input name="resource" type="file" size="50" />
                            <span class="prompt">&nbsp;&nbsp;&nbsp;只支持Excel文件</span>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="${base}/doc/microCourse.xls">下载模板</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="left" colspan="2">
                            <input type="submit" class="btn" value="导入" />
                            <input type="button" class="btn" value="返回"
                                onclick="javascript:history.back();" />
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
