<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link rel="stylesheet" type="text/css" href="${base }/css/ht_web.css" />
<script type="text/javascript" src="${base}/js/jquery.js"></script>
<script type="text/javascript">
  function clearParams(){
      $(":input[name='survey.class_id']").val("");
      $(":input[name='survey.title']").val("");
  }
</script>
</head>
<body style="background-color:#efeff8;">
  <div class="content_box">
    <div class="content_tb">
      <s:form action="survey!list">
        <table class="list_table c3">
          <caption class="caption_title">问卷查询</caption>
          <tbody class="c5 f14">
            <tr>
              <td>班级名称</td>
              <td><s:select name="survey.class_id"
                  list="#attr.clazzList" listKey="id"
                  listValue="class_name" headerKey=""
                  headerValue="---请选择---"></s:select></td>
              <td>标题关键词</td>
              <td><input type="text" name="survey.title"
                class="input_2" value="${survey.title }" /></td>
            </tr>
            <tr style="text-align:center;">
              <td colspan="6">
                <input name="chaxun" onclick="submit()" type="button" class="button_2 cf" value="查询" />
                <input type="button" class="button_2 cf" value="重置" onclick="clearParams()" />
              </td>
            </tr>
          </tbody>
        </table>
      </s:form>
    </div>
    <div class="content_tb">
      <table class="list_table c3 f14">
        <caption class="caption_title">问卷列表</caption>
        <tbody class="c5">
          <tr class="c3">
            <td>问卷标题</td>
            <td>创建时间</td>
            <td>创建人</td>
            <td>是否开放</td>
            <td>操作</td>
          </tr>
          <c:forEach items="${result}" var="s">
            <tr>
              <td>${s.title}</td>
              <td>${gfn:date(s.create_time, "yyyy-MM-dd HH:mm")}</td>
              <td>${s.realname}</td>
              <td>${s.open==1?'是':'否'}</td>

              <td>
                <%-- <a href="survey!detail.action?survey.id=${s.id}">详情</a> --%>
                <a
                href="survey_question!list.action?surveyQuestion.survey_id=${s.id}&survey_title=${s.title}">问卷题目</a>
                <a href="survey!edit.action?survey.id=${s.id}">修改</a> <a
                href="survey!delete.action?survey.id=${s.id}&survey.class_id=${s.class_id}"
                onclick="return confirm('您确定要删除【${s.title}】吗？');">删除</a>

              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
      <g:pager />
    </div>
  </div>
</body>
</html>
