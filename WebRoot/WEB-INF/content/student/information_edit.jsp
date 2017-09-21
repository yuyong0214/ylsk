<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color:#efeff8;">
	<div class="content_box">
		<div class="content_tb">
		    <s:form action="information!update" enctype="multipart/form-data">
			    <s:hidden name="user.id"/>
			    <s:hidden name="user.uuid"/>
			    <input type="hidden" name="user.login_time" value="${gfn:date(user.login_time, 'yyyy-MM-dd HH:mm:ss')}"/>
			    <s:hidden name="user.create_time"/>
			    <s:hidden name="user.password"/>
			    <s:hidden name="user.avatar"/>
			    <s:hidden name="user.username"/>
			    <s:hidden name="user.user_type"/>
			    <s:hidden name="user.realname"/>
			    <s:hidden name="user.status"/>
			    <s:hidden name="user.deleted"/>
			    <table class="list_table c3">
			        <caption class="caption_title">信息修改</caption>
			        <tbody class="c5 f14">
				        <tr>
				            <td>用户名</td>
				            <td><s:textfield name="user.username" cssClass="input_2" disabled="true"/><span style="color: red">用户不能修改</span></td>
				        </tr>
				        <tr>
				            <td>姓名</td>
				            <td><s:textfield name="user.realname" cssClass="input_2" disabled="true"/><span style="color: red">用户不能修改</span></td>
				        </tr>
				        <tr>
				            <td>用户类型</td>
				            <td>
				            	<select name="user.user_type" disabled="disabled" >
									<option value="0" <c:if test="${user.user_type==0}">selected="selected" </c:if>  >学员</option>
									<option value="1" <c:if test="${user.user_type==1}">selected="selected" </c:if>  >管理员</option>
									<option value="2" <c:if test="${user.user_type==2}">selected="selected" </c:if>>教职工</option>
								</select>
								<span style="color: red">用户不能修改</span>
				            </td>
				        </tr>
				        <tr>
				            <td>性别</td>
				            <td>
				            	<select name="user.sex" >
									<option value="0" <c:if test="${user.sex==0}">selected="selected" </c:if>>女</option>
									<option value="1" <c:if test="${user.sex==1}">selected="selected" </c:if>>男</option>
								</select>
				            </td>
				        </tr>
				        <tr>
				            <td>民族</td>
				            <td>
				            	<select name="user.folk" class="select">
										<option value="">--请选择--</option>
										<c:forEach var="dd" items="${ta:dictList('user_folk')}">
											<c:if test="${dd.dict_value==user.folk}">
												<option value="${dd.dict_value}" selected="selected">${dd.dict_value}</option>
											</c:if>
											<c:if test="${dd.dict_value!=user.folk}">
												<option value="${dd.dict_value}">${dd.dict_value}</option>
											</c:if>
											
										</c:forEach>
								 </select>
				            </td>
				        </tr>
				        
				        <tr>
				            <td>头像</td>
				            <td><input type="file" name="upload" /></td>
				        </tr>
				        <tr>
				            <td>邮箱</td>
				            <td><s:textfield cssClass="input_2" name="user.email"/></td>
				        </tr>
				        <tr>
				            <td>手机号码</td>
				            <td><s:textfield cssClass="input_2" name="user.mobile"/></td>
				        </tr>
				        <tr>
				            <td>办公地点</td>
				            <td><s:textfield cssClass="input_2" name="user.office"/></td>
				        </tr>
				         <tr>
				            <td>工作电话</td>
				            <td><s:textfield cssClass="input_2" name="user.office_phone"/></td>
				        </tr>
				        <tr>
				            <td width="150px">
							个人简介
							</td>
							<td style="text-align: left;">
								<textarea rows="10" cols="50" name="user.introduction">${user.introduction}</textarea>					
							</td>
				        </tr>
				        <tr>
				            <td width="150px">
							备注
							</td>
							<td style="text-align: left;">
								<textarea rows="10" cols="50" name="user.remark">${user.remark}</textarea>					
							</td>
				        </tr>
				        <tr>
				            <td colspan="2">
				                <s:submit cssClass="button_2 cf" value="保存"/>
				                <input type="button" class="button_2 cf" value="返回" onclick="history.back();"/>
				            </td>
				        </tr>
				     </tbody>
			    </table>
		    </s:form>
		</div>
	</div>
</body>
</html>
