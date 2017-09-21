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
		function up(obj,id){
			$(".ids").each(function(i,item){
				if($(item).val()==id){
					if(i==0){
						alert("已经是第一个了!");
						return;
					}
					else
					{
	  					var $tr = $(obj).parents("tr"); 
			 			if ($tr.index() != 1) {
			 				$tr.fadeOut().fadeIn();
			 				$tr.prev().before($tr);
			 			}
					}
					return;
				}
			})
		}
		
		function down(obj,id){
			$(".ids").each(function(i,item){
				var len = $ (".ids").length;
				if($(item).val()==id){
					if(i==len-1){
						alert("已经是最后一个了!");
						return;
					}
					else
					{
			 			var $tr = $(obj).parents("tr"); 
			 	        if ($tr.index() != len) { 
			 	            $tr.fadeOut().fadeIn(); 
			 	            $tr.next().after($tr); 
			 	        }
					}
					return;
				}
			})
		}
		
		function submit(academy_id){
			var module_ids="";
			$(".ids").each(function(i,item){
				if(i!=0)
					module_ids+=",";
				module_ids += $(item).val();
			})
			$.ajax({
				url: "academy_module!saveSort.action",              //请求地址
		        type: "POST",                       //请求方式
		        data: { modules: module_ids, academy_id: academy_id },        //请求参数
		        dataType: "json",
		        success: function (data) {
				//此处放成功后执行的代码
		            alert("保存成功！");
		            window.location.href="academy_module!list.action?academy_id=" + data;
		        },
			})
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
    <table class="list_table c3 f14">
        <caption class="caption_title">
                                    模块列表
               <span class=" f14 fright">
 	              <a href="academy_module!addModule.action?academy_id=${academy_id }">添加模块</a>
 	              <%-- <a href="academy_module!moduleShow.action?academy_id=${academy_id }">手机展示</a> --%>
                  <a onclick="deleteSelectAll()">删除选中模块</a>
               </span>
        </caption>
        <tbody class="c5">
        <tr class="c3">
            <td>模块名称</td>
            <td>模块图标</td>
            <td>模块类型</td>
            <td>操作</td>
            <td onclick="selectAll();">全选</td>
        </tr>
        <c:forEach items="${modules}" var="m">
        <tr>
        	<fmt:formatNumber var="id" value="${m.module_id }"/>
        	<input id="ids" class="ids" name="moduleIds" type="hidden" value="${id}"/>
            <td>${m.module_name }</td>
            <td><img src="${base}/module/${m.module_icon }" style="width: 50px;height: 50px;" /></td>
            <!-- 类型转换 0.0转换成 0 -->
            <fmt:formatNumber var="type" value="${m.module_type }"/> 
            <td>${ta:dictValue('module_type',type)}</td>
            <td>
                <a onclick="up(this,${id})">上移</a>
                <a onclick="down(this,${id})">下移</a>
                <%--
                <a href="academy_module!up.action?academy_id=${academy_id}&module_id=${m.module_id}">上移</a>
                <a href="academy_module!down.action?academy_id=${academy_id}&module_id=${m.module_id}">下移</a>
                 --%>
                <a href="academy_module!detail.action?academy_id=${academy_id}&module_id=${m.module_id}">详情</a>
                <a href="academy_module!edit.action?academy_id=${academy_id}&module_id=${m.module_id}">修改</a>
                <a href="academy_module!delete.action?academy_id=${academy_id}&module_id=${m.module_id}"
                   onclick="return confirm('您确定要删除【${m.module_name}】吗？');">删除</a>
            </td>
            <td><input id="selectAll" name="danxuan" class="input_4"
                type="checkbox" value="${id}" /></td>
        </tr>
        </c:forEach>
         <tr>
        	<td>
        		<input type="submit"  class="button_2 cf" value="保存排序" onclick="submit(${academy_id })"/>
        	</td>
	    </tr>
      </tbody>
    </table>
    <g:pager/>
</div>
</div>
<script type="text/javascript">
    var selecttimes = 0;
    function selectAll() {
    	var items = document.getElementsByTagName("input");
    	if (selecttimes % 2 == 0) {
    		for (i = 0; i < items.length; i++) {
    			if (items[i].type == "checkbox")
    				items[i].checked = true;
    		}
    	} else {
    		for (i = 0; i < items.length; i++) {
    			if (items[i].type == "checkbox")
    				items[i].checked = false;
    		}
    	}
    
    	selecttimes++;
    };
    
    function deleteSelectAll(){
    	var items=document.getElementsByTagName("input");
    	var ids="";
    	for(var i=0;i<items.length;i++){
    		if(items[i].id == "selectAll" && items[i].checked == true){
    			ids = ids + items[i].value + ",";
    		}
    	}
    	if(ids == ""){
    		alert("请至少选择一条数据!");
    	}else{
    		var bool=window.confirm("确认删除选中的模块吗?");
    		if(bool){
    			document.write("<form action='academy_module!deletes.action' method='post' name='deleteform' style='display:none'>");
    			document.write("<input type='hidden' name='ids' value='"+ids+"'/>");
    			document.write("<input type='hidden' name='academy_id' value='"+${academy_id}+"'/>")
    			document.write("</form>");
    			document.deleteform.submit();
            }
        }
    }
</script>
</body>
</html>
