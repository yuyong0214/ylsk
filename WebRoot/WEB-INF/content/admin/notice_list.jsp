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
      <table class="list_table c3 f14">
        <caption class="caption_title">${class_name}
          - 通知列表 <span class=" f14 fright"> 
          <a href="notice!add.action?notice.class_id=${class_id}">新建通知</a>
          </span>

        </caption>
        <tbody class="c5">
          <tr class="c3">
            <td width="30%">通知主题</td>
            <td width="10%">发送人</td>
            <td width="15%">发送时间</td>
            <td width="10%">发送状态</td>
            <td width="20%">操作</td>
          </tr>
          <c:forEach items="${noticeList}" var="n">
            <tr>
              <td>${gfn:br(n.title)}</td>
              <td>${n.username}</td>
              <td>${gfn:date(n.create_time, 'yyyy-MM-dd HH:mm:ss')}</td>
              <td><c:if test="${n.code==0}">
                                                       发送成功
               </c:if> <c:if test="${n.code!=0}">
                  <a href="notice!edit.action?notice.id=${n.id}">发送失败</a>
                </c:if></td>
              <td><a href="notice!detail.action?notice.id=${n.id}">详情</a>
                <a href="notice!edit.action?notice.id=${n.id}">修改</a> <a
                href="notice!delete.action?notice.id=${n.id}" onclick="return confirm('您确定要删除【${n.title}】吗？');">删除</a></td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
      <g:pager/>
    </div>
  </div>
</body>
</html>
