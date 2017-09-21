<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="${base}/css/ht_Web.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${base}/js/jquery.js"></script>
<script type="text/javascript">
  function clearParams(){
      $(":input[name='user_name']").val("");
  }
</script>
</head>
<body style="background-color:#efeff8;">
  <div class="content_box">
    <div class="content_tb">
      <s:form action="photo!list.action">
        <s:hidden name="photo.class_id" />
        <table class="list_table c3">
          <caption class="caption_title">查询</caption>
          <tbody class="c5 f14">
            <tr>
              <td width="100px">学员姓名</td>
              <td><input class="input_2" type="text"
                name="user_name" value="${photoParams['user_name'] }"/></td>
            </tr>
            <tr class="center">
              <td colspan="6"><s:submit
                  cssClass="button_2 cf" value="查询" />
                  <input type="button" class="button_2 cf" value="重置" onclick="clearParams()"/>
              </td>
            </tr>
          </tbody>
        </table>
      </s:form>
    </div>
    <div class="content_tb">
      <table class="list_table c3 f14">
        <caption class="caption_title">${class_name}
          -照片列表 <span class=" f14 fright"> <a
            href="${base }/admin/photo!addPhoto.action"
            style="cursor: pointer;">添加照片</a>
          </span>
        </caption>
        <tbody class="c5">
          <tr class="c3">
            <td width="40%">上传人</td>
            <td width="40%">上传时间</td>
            <td width="20%">操作</td>
          </tr>
          <c:forEach items="${photoList}" var="p">
            <tr>
              <td>${p.realname}</td>
              <td>${gfn:date(p.create_time, 'yyyy-MM-dd HH:mm:ss')}</td>
              <td><a href="photo!detail.action?photo.id=${p.id}">详情</a>
                <a
                href="photo!delete.action?photo.id=${p.id}&photo.class_id=${p.class_id}" 
                onclick="return confirm('您确定要删除吗？');">删除</a>
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
