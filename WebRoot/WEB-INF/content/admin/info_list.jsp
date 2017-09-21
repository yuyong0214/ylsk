<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${base}/js/jquery.js"></script>
<script type="text/javascript">
  function clearParams(){
      $(":input[name='info.category']").val("");
      $(":input[name='info.title']").val("");
  }
</script>
</head>
<body style="background-color:#efeff8;">
<div class="content_box">
  <div class="content_tb">
    <s:form action="info!list">
    <table class="list_table c3">
        <caption class="caption_title">资源查询</caption>
        <tbody class="c5 f14">
        <tr>
            <td>信息分类</td>
            <td >
                <c:set var="categoryList" value="${ta:dictList('info_category')}" scope="request"/>
                <s:select name="info.category" list="#request.categoryList" 
                listKey="dict_key" listValue="dict_value" headerKey="" headerValue="全部"/>
            </td>
            <td>标题</td>
            <td>
                <input name="info.title" class="input_2"></input>
            </td>
        </tr>
        <tr style="text-align:center;">
			<td colspan="4"><input name="chaxun" onclick="submit()" type="button" class="button_2 cf" value="查询" />
            <input type="button" class="button_2 cf" value="重置" onclick="clearParams()"/>
      </td>
		</tr>	
        </tbody>
    </table>
    </s:form>
    </div>
    <div class="content_tb">
	<table class="list_table c3 f14">
    <caption class="caption_title">信息列表</caption>
       <tbody class="c5">
		<tr class="c3">
            <td>标题</td>
            <td width="100px">信息分类</td>
            <td width="180px">发布时间</td>
            <td width="200px">操作</td>
        </tr>
        <c:forEach items="${infoList}" var="info">
        <tr>
            <td>${info.title}</td>
            <td>
                ${ta:dictValue('info_category', info.category)}
            </td>
            <td>${gfn:date(info.create_time,'yyyy-MM-dd HH:mm:ss')}</td>
            <td>
                <a href="info!detail.action?info.id=${info.id}">详情</a>
                <a href="info!edit.action?info.id=${info.id}">修改</a>
                <a href="info!delete.action?info.id=${info.id}" 
                onclick="return confirm('您确定要删除【${info.title}】吗？');">删除</a>
            </td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
    <g:pager/>
    </div>
    
    </div>
</body>
</html>