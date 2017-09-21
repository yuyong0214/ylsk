<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${base}/js/jquery.js"></script>
<style type="text/css">   
	.htmer{  
	width: 500px;  
	white-space: nowrap;  
	overflow: hidden;  
	text-overflow:ellipsis;      /*兼容IE*/  
	}  
</style>  
<script type="text/javascript">
	function clearParams() {
		$(":input[name='suggestion.class_id']").val("");
		$(":input[name='suggestion.type']").val("");
		$(":input[name='realname']").val("");
	}
</script>
</head>
<body style="background-color:#efeff8;">
	<div class="content_box">
		<c:if test="${type==0||empty type }">
		<div class="content_tb">
			    <s:form action="suggestion!list">
				    <table class="list_table c3">
				        <caption class="caption_title">意见查询</caption>
				        <tbody class="c5 f14">
							<tr>
							    <td>班级名称</td>
							    <td>
									<s:select name="suggestion.class_id" list="#attr.clazzList" listKey="id" listValue="class_name"  headerKey="" headerValue="---请选择---"></s:select>
							    </td>
							    <td>软件类型</td>
					            <td><s:select name="suggestion.type"
					                list="#{'':'全部',0:'软件相关',1:'培训相关'}"></s:select></td>
							    <td>学员姓名</td>
							    <td>
									<input type="text" class="input_2" name="realname"><input>
							    </td>
							</tr>
							<tr style="text-align:center;">
								<td colspan="6"><input name="chaxun" onclick="submit()" type="button" class="button_2 cf" value="查询" />
								<input type="button" class="button_2 cf" value="重置" onclick="clearParams()" />
								</td>
							</tr>
					      </tbody>
				    </table>
			    </s:form>
		</div>	
		</c:if>
		<div class="content_tb">
			<table class="list_table c3 f14">
				<caption class="caption_title"><c:if test="${not empty clazz.class_name }">${clazz.class_name}-</c:if>意见列表</caption>
				<tbody class="c5">
					<tr class="c3">
						<td width="150px">学员姓名</td>
						<td width="50%">意见建议</td>
						<!-- <td>类型</td> -->
						<td width="200px">发表时间</td>
						<td width="200px">回复时间</td>
						<td width="100px">操作</td>
					</tr>
					<c:forEach items="${suggestionList}" var="s">
					<tr>
						<td>${s.realname}</td>
						<td><div class="htmer">${s.content}</div></td>
						<%-- <td>${s.type==1?'培训相关':'软件相关'}</td> --%>
						<td>${gfn:date(s.create_time,'yyyy-MM-dd HH:mm:ss')}</td>
						<td>${gfn:date(s.reply_time,'yyyy-MM-dd HH:mm:ss')}</td>
						<td>
							<a href="suggestion!reply.action?suggestion.id=${s.id }">
							    <c:if test="${empty(s.reply_time) }">回复</c:if>
							    <c:if test="${!empty(s.reply_time) }">查看</c:if>
							</a>
							<a href="suggestion!delete.action?suggestion.id=${s.id}" onclick="return confirm('您确定要删除【${s.realname}】的反馈信息吗？');">删除</a>
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