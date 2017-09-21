<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link rel="stylesheet" type="text/css" href="${base }/css/ht_web.css">
	<script type="text/javascript" src="${base}/js/jquery.js"></script>
	<script type="text/javascript">
	function change(){
		var v=document.getElementById("type").value;
		if(v==1){
			$('#fenyuan').removeAttr("style");//移除style属性
		}
		else{
			document.getElementById("fenyuan").style.display="none";
		}
	}	
	</script>
</head>
<body style="background-color:#efeff8;">
<div class="content_box">
    <div class="content_tb">
    <s:form action="user!save" enctype="multipart/form-data">
    	<table class="list_table c3">
        <caption class="caption_title">新建用户</caption>
        <tbody class="c5 f14">
        <tr>
            <td>用户名</td>
            <td><input class="input_2" name="user.username"/><span class="red">*</span></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="password" class="input_2" name="user.password"/><span class="red">*</span></td>
        </tr>
        <tr>
            <td>重复密码</td>
            <td><input type="password" class="input_2" name="user.password_ag"/><span class="red">*</span></td>
        </tr>
        <tr>
            <td>真实名字</td>
            <td><input class="input_2" name="user.realname"/><span class="red">*</span></td>
        </tr>
        <tr>
            <td>用户类型</td>
            <td>
            	<select name="user.user_type" onchange="change()" id="type">
            	    <c:if test="${empty(academy_id)}">
            	    	<option value="1">管理员</option>
            	    </c:if>
            	    <c:if test="${!empty(academy_id)}">
                        <%--
            	    	<option value="0">学员</option>
                         --%>
						<option value="2">教职工</option>
					</c:if>
				</select>
            </td>
        </tr>
        <c:if test="${empty(academy_id)}">
	        <tr id="fenyuan">
	        	<td>所属院校</td>
	        	<td>
		        	<select name="user.academy_id">
		        		<option value="">--请选择--</option>
		        		<c:forEach items="${ academyList}" var="list">
		        			<option value="${list.id }">${list.academy_name }</option>
		        		</c:forEach>
		        	</select><span class="red">*</span>
	        	</td>
	        </tr>
        </c:if>
        <tr>
            <td>性别</td>
            <td>
            	<select name="user.sex" >
					<option value="0">女</option>
					<option value="1">男</option>
				</select>
            </td>
        </tr>
        <tr>
            <td>民族</td>
            <td>
            	<select name="user.folk" class="select">
						<option value="">--请选择--</option>
						<c:forEach var="dd" items="${ta:dictList('user_folk')}">
							<option value="${dd.dict_key}">${dd.dict_value}</option>
						</c:forEach>
				 </select>
            </td>
        </tr>
        <tr>
        	<td>头像</td>
        	<td><input type="file" class="input_2" name="upload"/><span class="c5">（建议尺寸：150px*150px）</span></td>
        	
        </tr>
        <tr>
            <td>邮箱</td>
            <td><input class="input_2" name="user.email"/></td>
        </tr>
        <tr>
            <td>手机号码</td>
            <td><input class="input_2" name="user.mobile"/><span class="red">*</span></td>
        </tr>
        <tr>
            <td>办公地点</td>
            <td><input class="input_2" name="user.office"/></td>
        </tr>
         <tr>
            <td>工作电话</td>
            <td><input class="input_2" name="user.office_phone"/></td>
        </tr>
        <tr>
            <td>
			个人简介
			</td>
			<td style="text-align: left;">
				<textarea rows="10" cols="50" name="user.introduction"></textarea>					
			</td>
        </tr>
        <tr>
            <td>
			备注
			</td>
			<td style="text-align: left;">
				<textarea rows="10" cols="50" name="user.remark"></textarea>					
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
    </s:form>
    <div class="userphoto">
    	
    </div>
    </div>
    
</div>
</body>
</html>
