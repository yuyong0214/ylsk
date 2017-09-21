<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
	function up(id) {
		location.href = "dict_data!up.action?dictData.id=" + id;
	}

	function down(id) {
		location.href = "dict_data!down.action?dictData.id=" + id;
	}
</script>
</head>
<body>
	<div class="content_box">
		<div class="content_tb">
  			<s:form action="dict_data!list">
				<table class="list_table c3">
  					<caption class="caption_title">数据字典查询</caption>
  					<tbody class="c5 f14">
						<tr>
						  <td>数据项名称</td>
						  <td><s:select name="dictCode" list="dictList"
						listKey="dict_code" listValue="dict_name" headerKey=""
						headerValue="请选择" onchange="this.form.submit();" /></td>
						</tr>
					</tbody>
				</table>
			</s:form>
		</div>
		<div class="blank"></div>
		<div class="content_tb">
			<table class="list_table c3 f14">
				<caption class="caption_title">
				  字典数据列表
					<s:if test="dict.dict_permission == 2">
						<span class=" f14 fright">
							<a href="dict_data!add.action?dictCode=${param.dictCode}">新建字典数据</a>
						</span>
					</s:if>
				</caption>
				<tbody class="c5">
					<tr class="c3">
						<td>数据标识</td>
						<td>数据值</td>
						<td>扩展应用</td>
						<td>备注</td>
						<td width="120px">排序</td>
						<td width="80px">排序号</td>
						<td width="160px">操作</td>
					</tr>
					<s:iterator value="dictDataList" var="d">
					<tr>
						<td>${d.dict_key}</td>
						<td>${d.dict_value}</td>
						<td>${d.dict_param}</td>
						<td>${d.remark}</td>
						<td>
							<s:if test="dict.dict_permission > 0">
								<img style="cursor:hand;" width="24px" height="25px;" alt="向上" src="${base}/images/admin/up1.png" align="center" onclick="javascript:up(${d.id})"></img>
								<img style="cursor:hand;" width="24px" height="25px;" alt="向下" src="${base}/images/admin/down1.png" align="center" onclick="javascript:down(${d.id})"></img>
							</s:if>
						</td>
						<td>${d.sn}</td>
						<s:if test="dict.dict_permission > 0">
							<td>
								<a href="dict_data!edit.action?dictData.id=${d.id}" title="编辑"><img alt="编辑" src="${base}/images/btn/edit.gif" /></a> 
								<s:if test="dict.dict_permission == 2">
									<a href="dict_data!delete.action?dictData.id=${d.id}" title="删除" onclick="return confirm('确定要删除该数据？');">
										<img alt="删除" src="${base}/images/btn/delete.gif" />
									</a>
								</s:if>
							</td>
						</s:if>
						<s:else>
							<td></td>
						</s:else>
					</tr>
					</s:iterator>
				</tbody>
			</table>
			<g:pager />
		</div>
	</div>
</body>
</html>
