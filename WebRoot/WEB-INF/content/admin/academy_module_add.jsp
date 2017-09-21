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
    var selecttimes = 0;
	function selectAllUser() {
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
    <form action="academy_module!saveModule.action">
      <input type="hidden" name="academy_id" value="${academy_id }"></input>
      <table class="list_table c3 f14">
        <caption class="caption_title">模块列表</caption>
        <tbody class="c5">
        <tr class="c3">
          <td onclick="selectAllUser();" width="10%">全选</td>
          <td>模块名称</td>
          <td>模块图标</td>
          <td>模块类型</td>
        </tr>
        <c:forEach items="${modules}" var="m">
          <tr>
            <td><input class="input_4" name="moduleIds"
              type="checkbox" value="${m.id}" /></td>
            <td>${m.name }</td>
            <td><img src="${base}/module/${m.icon }" style="width: 50px;height: 50px;" /></td>
            <td>${ta:dictValue('module_type',m.type)}</td>
          </tr>
       </c:forEach>
        <tr>
          <td><input type="submit" class="button_2 cf" value="添加模块" />
          </td>
        </tr>
        </tbody>
      </table>
    </form>
    <g:pager/>
  </div>
  </div>
</body>
</html>
