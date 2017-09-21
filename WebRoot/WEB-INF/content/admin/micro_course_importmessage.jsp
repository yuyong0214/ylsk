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
       <div class = body>
           <table class="listTable">
                    <caption>
                                                             导入结果
                    </caption>
                    
                    <tr>
                        <td width="100px">
                                                                   导入成功数量
                        </td>
                         <td width="100px">
                          ${success}条
                        </td>
                        <td></td>
                    </tr>
         </table>
         <div class="blank"></div>
         <c:if test="${ !empty error }">
             <table class="listTable">
             <caption>
                                                     导入失败课程列表
             </caption>
             <tr>
             <td width="100px">
                                                                 错误行号
             </td>
                 <td>
                                                                 失败原因
                 </td>
             </tr>
             
              <c:forEach items="${error}" var="er">
                 <tr>
                     <td>
                         ${er.number}
                     </td>
                      <td>
                        ${er.info}
                     </td>
                 </tr>
               </c:forEach>
             </table>
         </c:if>
        </div>
    </body>
</html>
