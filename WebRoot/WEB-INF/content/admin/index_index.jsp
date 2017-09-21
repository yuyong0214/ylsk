<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<title></title>
		<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
	</head>
	<body style="background-color:#efeff8;">
		<div class="content_box">
			<div class="content_tb">
				<table class="list_table c3">
			        <caption class="caption_title">系统信息</caption>
			        <tbody class="c5 f14">
				        <tr>
				            <td width="200px">Java版本</td>
				            <td><%=System.getProperty("java.version")%></td>
				        </tr>
				        <tr>
				            <td>操作系统名称</td>
				            <td><%=System.getProperty("os.name")%></td>
				        </tr>
				        <tr>
				            <td>操作系统构架</td>
				            <td><%=System.getProperty("os.arch")%></td>
				        </tr>
				        <tr>
				            <td>操作系统版本</td>
				            <td><%=System.getProperty("os.version")%></td>
				        </tr>
				        <tr>
				            <td>当前工作目录</td>
				            <td><%=System.getProperty("user.dir")%></td>
				        </tr>
				        <tr>
				            <td>临时文件路径</td>
				            <td><%=System.getProperty("java.io.tmpdir")%></td>
				        </tr>
				      </tbody>
			    </table>
			  </div>
	    <div class="content_tb">
		    <table class="list_table c3">
		        <caption class="caption_title">软件信息</caption>
		        <tbody class="c5 f14">
		        <tr>
		            <td width="200px">系统名称</td>
		            <td>学习秘书</td>
		        </tr>
		        <tr>
		            <td>系统版本</td>
		            <td>Version 1.0</td>
		        </tr>
		        <tr>
		            <td>官方网站</td>
		            <td>
		                <span style="color:#30658d; font-weight: bold;">中国公务员培训网</span> <a href="http://www.gwypx.com.cn" target="_blank">http://www.gwypx.com.cn</a>
		            </td>
		        </tr>
		        <tr>
		            <td>授权提示</td>
		            <td>
		                <span>国家行政学院音像出版社</span>
		            </td>
		        </tr>
		        </tbody>
		    </table>
		   </div>
	    <div class="content_tb">
			<p style="margin-left: 15px;" class="copyright">&copy; 2008-2012 国家行政学院音像出版社　版权所有</p>
		</div>
		</div>
	</body>
</html>