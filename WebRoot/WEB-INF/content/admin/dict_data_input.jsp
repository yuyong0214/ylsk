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
		    <s:form action="dict_data!save">
		    <input type="hidden" name="dictData.dict_code" value="${dictCode}"/>
			    <table class="list_table c3">
			        <caption class="caption_title">新建字典数据【${dict.dict_name}】</caption>
			        <tbody class="c5 f14">
				        <tr>
				            <td>数据标识</td>
				            <td><s:textfield cssClass="input_2" name="dictData.dict_key"/> *</td>
				        </tr>
				        <tr>
				            <td>数据值</td>
				            <td><s:textfield cssClass="input_2" name="dictData.dict_value" size="50"/> *</td>
				        </tr>
				        <tr>
				            <td>序号</td>
				            <td><s:textfield cssClass="input_2" name="dictData.sn" size="50"/>（请输入整数，数字越小排的越靠前，不填默认排最后） </td>
				        </tr>
				        
				        <tr>
				            <td>扩展应用</td>
				            <td><s:textfield cssClass="input_2" name="dictData.dict_param" size="50"/> </td>
				        </tr>
				        
				        <tr>
				            <td>备注</td>
				            <td><s:textarea name="dictData.remark" rows="5" cols="50"/></td>
				        </tr>
				        <tr>
                            <td></td>
				            <td>
                                <s:submit cssClass="button_2 cf" value="保存"/>
				            </td>
				        </tr>
			        </tbody>
			    </table>
		    </s:form>
		</div>
	</div>
</body>
</html>
