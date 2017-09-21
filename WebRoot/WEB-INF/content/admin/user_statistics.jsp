<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="${base}/css/admin.css" rel="stylesheet" type="text/css" />
</head>
<body class="admin">
<div class="body">
     <div id="main" style="height:600px;width:80%"></div>
    <script src="${base}/echarts-2.2.3/build/dist/echarts.js"></script>
    <script type="text/javascript">
        require.config({
            paths: {
                echarts: '${base}/echarts-2.2.3/build/dist'
            }
        });
        require(
            [
                'echarts',
                'echarts/chart/bar'
            ],
            function (ec) {
                var myChart = ec.init(document.getElementById('main')); 
                var option = ${optionsdemo};
                myChart.setOption(option); 
            }
        );
    </script>
</div>
</body>
</html>
