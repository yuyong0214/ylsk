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
		    <table class="list_table c3">
			    <tbody class="c5 f14">
			        <tr>
			            <td>
			    			<div style="color: gray;" align="left">${f.title }</div>
				            <div align="left" style="margin-left: 80px">${f.content }</div>
							<div align="right">发帖人：${user.realname }&nbsp;&nbsp;&nbsp;&nbsp;发表时间：${gfn:date(f.create_time, 'yyyy-MM-dd HH:mm:ss')}</div>
			            </td>
			        </tr>
			    </tbody>
		    </table>
    		<c:forEach items="${replyList }" var="r">
    			<table class="list_table c3">
    				<tbody class="c5 f14">
    					<tr>
				            <td>
					            <div align="left" style="margin-left: 80px">${r.content }</div>
					            <div align="right">回复人：${r.realname }&nbsp;&nbsp;&nbsp;&nbsp;回复于：${gfn:date(r.create_time, 'yyyy-MM-dd HH:mm:ss')}</div>
				            </td>
			        	</tr>
    				</tbody>
    			</table>
    		</c:forEach>
    	</div>
    	<div class="content_tb">
    		<s:form action="faq!saveReply" enctype="multipart/form-data" method="post">
	    		<input type="hidden" name="faq.class_id" value="${f.class_id }"/>
	    		<input type="hidden" name="faq.user_id" value="${sessionScope.loginUser.id}"/>
	    		<input type="hidden" name="faq.pid" value="${f.id}"/>
		    	<table  class="list_table c3">
		    		<tbody class="c5 f14">
				        <tr>
				            <td>回复：</td>
				            <td >
				                <textarea rows="10" cols="80" name="faq.content" style="resize:none;margin-left:4px" id="content"></textarea>
				            </td>
				        </tr>
				        <tr>
				            <td class="left" colspan="2">
				                <input type="submit" class="button_2 cf" value="保存"/>
				                <input class="button_2 cf" value="返回" onclick="history.back();" />
				            </td>
				        </tr>
				    </tbody>
			    </table>
		    </s:form>
    	</div>
	</div>
</body>
</html>