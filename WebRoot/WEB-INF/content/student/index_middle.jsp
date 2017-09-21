<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<title>显示/隐藏菜单 </title>
		<link href="${base}/css/admin.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${base}/js/jquery.js"></script>
		<script type="text/javascript">
		var mainFrameset = window.parent.window.document.getElementById("mainFrameset");
			$().ready(function() {
				mainFrameset.cols = "160,15,*";
				$(".main").click( function() {
					if(mainFrameset.cols == "160,15,*") {
						mainFrameset.cols = "0,15,*";
						$(".main").removeClass("leftArrow");
						$(".main").addClass("rightArrow");
					} else {
						mainFrameset.cols = "160,15,*";
						$(".main").removeClass("rightArrow");
						$(".main").addClass("leftArrow");
					}
				})
			})
		</script>
	</head>
	<body>
		<div class="main leftArrow"></div>
	</body>
</html>