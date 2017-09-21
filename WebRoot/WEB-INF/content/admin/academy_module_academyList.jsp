<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>${system_name }</title>
	<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${base}/js/jquery.js"></script>
	<script type="text/javascript">
		function statusedit(id,obj)
		{
			//alert($(obj).children("img").attr("src"))
			if($(obj).children("img").attr("src") == "${base }/images/close.png"){
				$(obj).html("<img align='middle' src='${base }/images/open.png' />");
			}else if($(obj).children("img").attr("src") == "${base }/images/open.png"){
				$(obj).html("<img align='middle' src='${base }/images/close.png' />"); 
				
			}
			$.post("${base}/admin/academy_module!statusedit.action?id="+id,function(result){
				/* if(result==0){
					$(obj).html("<img align='middle' src='${base }/images/open.png' />");
				}else{
					$(obj).html("<img align='middle' src='${base }/images/close.png' />");
				} */
			});
		}
		
	</script>
  <script type="text/javascript">
    $(function(){
      var bef = "<label>";
      var aft = "<i>✓</i></label>";
      $("input[type='checkbox']").each(function(){
        $(this).replaceWith(bef+this.outerHTML+aft);
      });
      $("input[type='radio']").each(function(){
        $(this).replaceWith(bef+this.outerHTML+aft);
      });
    });
  </script>
</head>
<body>
<div class="content_box">
<div class="content_tb">
    <table class="list_table c3 f14" id="module_list">
        <caption class="caption_title">
                                    模块列表
              <span class=" f14 fright">
 	              <a href="academy_module!moduleShow.action?academy_id=${academy_id }">手机展示</a>
              </span>
        </caption>
        <tbody class="c5">
        <tr class="c3">
            <td>模块名称</td>
            <td>模块图标</td>
            <td>模块类型</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${modules}" var="m">
        <tr>
            <td>${m.module_name }</td>
            <td><img src="${base}/module/${m.module_icon }" style="width: 50px;height: 50px;" /></td>
            <!-- 类型转换 0.0转换成 0 -->
            <fmt:formatNumber var="type" value="${m.module_type }"/> 
            <td>${ta:dictValue('module_type',type)}</td>
            <td>
                <a href="academy_module!moduleEdit.action?academy_id=${academy_id}&module_id=${m.module_id}">修改</a>
				<a onclick="statusedit(${m.id},this)" style="margin-right: 0;">
                	<c:if test="${m.is_open==0 }"><img align="middle" src="${base }/images/close.png" /></c:if>
                	<c:if test="${m.is_open==1 }"><img align="middle" src="${base }/images/open.png"  /></c:if>
                </a>
            </td>
        </tr>
        </c:forEach>
      </tbody>
    </table>
    <g:pager/>
</div>
</div>
<script type="text/javascript">
    
</script>
</body>
</html>
