<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>问卷</title>
	<%--<link href="${base}/css/show.css" rel="stylesheet" type="text/css" />
	--%>
	<link href="${base}/js/boilerplate.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="${base}/css/ph.css" type="text/css"></link>
	<link rel="stylesheet" type="text/css" href="${base}/css/app_web.css">
<!--[if lt IE 9]>
<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<script src="${base}/js/respond.min.js"></script>
<script type="text/javascript" src="${base}/js/jquery.js"></script>
<script src="${base}/js/check.js"></script>
<script src="${base}/js/modernizr.js"></script>
<script type="text/javascript">
	function show(){
		var myTable=document.getElementById("myTable");
		myTable.style.display="block";
	}
	function hidden(){
		var myTable=document.getElementById("myTable");
		myTable.style.display="none";
	}
	
	function check(){
		var type3_span=$(".type3_span");
		var flag=true;
		for(var i=0;i<type3_span.length;i++){
			var span1=type3_span.eq(i).prev();
			var options=span1.parent().prev().children("li");
			var len=options.length;
			var option=options.eq(length-1);
			var letterstr=option.html().trim().split(",");
			var maxLetter=option.html().trim().split(",")[0];
			var minLetter="A";
			var writeStr=$(span1).val().trim();
			writeStr=writeStr.toUpperCase();
			for(var j=0;j<writeStr.length;j++){
				var letter=writeStr.substring(j,j+1);
				if(letter>maxLetter||letter<minLetter){
					$(span1).parent().children(".type3_span").html("没有您填写的选项或填入选项以外的字符");
					$(span1).focus().select();
					flag=false;
					break;
				}else{
					$(span1).parent().children(".type3_span").html("选项之间不需要用字符隔开");
				}
			}
			if(!flag)
				break;
		}
		if(flag){
			doradio();
			docheck();
		}
		return flag;
	}

	function docheck(){
		var checkobjs=$("li[type='checkbox']");
		for(var i=0;i<checkobjs.length;i++){
			var count=checkobjs.eq(i).parent().children("li").length;
			checkobjs.eq(i).parent().children("input[type='hidden']").val("");
			i+=count-1;
		}
		for(var i=0;i<checkobjs.length;i++){
			//var count=checkobjs.eq(i).parent().children("li");
			if(checkobjs.eq(i).attr("class")=="li_chec"){
			var checkStr=checkobjs.eq(i).parent().children("input[type='hidden']").val();
			var inumber=checkobjs.eq(i).val();
			checkStr+=checkStr==""?inumber:","+inumber;
			checkobjs.eq(i).parent().children("input[type='hidden']").val(checkStr);
			}
		}
	}

	function doradio(){
		var radioobjs=$("li[type='radio']");
		for(var i=0;i<radioobjs.length;i++){
			if(radioobjs.eq(i).attr("class")=="li_radc"){
			//var radioStr=i.toString();
			var radioStr=radioobjs.eq(i).val().toString();
			radioobjs.eq(i).parent().children("input[type='hidden']").val(radioStr);
			}
		}
	}

	function preferradioOrCheck(str){
		var radioobjs=$("li[type='"+str+"']");
		for(var i=0;i<radioobjs.length;i++){
			var radioStr=radioobjs.eq(i).parent().children("input[type='hidden']").val();
			if(radioStr!=""){
				var radioIds=radioStr.trim().split(",");
				if(radioIds.length!=0){
					for(var j=0;j<radioIds.length;j++){
						radioobjs.eq(i).parent().children("li").eq(radioIds[j]).click();
					}
					var optionnumber=radioobjs.eq(i).parent().children("li").length;
					i+=optionnumber-1;
				}
			}
		}
	}

	$(function(){
	var flag=${requestScope.hasResult};
	if(flag!=0)
	  hidden();
	else
		show();
	preferradioOrCheck("radio");
	preferradioOrCheck("checkbox");
	//prefercheck();
	
	$("li[type='radio']").click(
		function(){
			var myTitle=$(this).parent().children();
			if($(this).children("input[type='text']").length>0){
				$(this).children("input[type='text']").focus().select();
			}else{
				if(myTitle.children("input[type='text']").length==1){
					myTitle.children("input[type='text']").val("");	
				}
			}
	});
	
	$("li[type='checkbox']").click(
		function(){
			if($(this).children("input[type='text']").length==1){
				if($(this).attr("class")=="li_chec"){
					$(this).children("input[type='text']").focus().select();
				}else{
					if($(this).children("input[type='text']").is(":focus")){
						if($(this).attr("class")=="li_che"){
							$(this).children("input[type='text']").click();
						}
					}else{
						$(this).children("input[type='text']").val("");
					}
				}
			}
		});
	
 	$("input[name='modify']").click(
	  function(){
		  var showText=$("#showText").parent().parent();
		  showText.remove();
		  show();
	  });
	//$("input[type='text']").focusout(
	//	function(){
	//	$(this).prev().attr("checked",true);
	//	});
	
	$(".type3_span").prev().focusout(
		function(){
			var options=$(this).parent().prev().children("li");
			var len=options.length;
			var option=options.eq(length-1);
			var letterstr=option.html().trim().split(",");
			var maxLetter=option.html().trim().split(",")[0];
			var minLetter="A";
			var writeStr=$(this).val().trim();
			writeStr=writeStr.toUpperCase();
			for(var i=0;i<writeStr.length;i++){
				var letter=writeStr.substring(i,i+1);
				if(letter>maxLetter||letter<minLetter){
					$(this).parent().children(".type3_span").html("没有您填写的选项");
					$(this).focus().select();
					break;
				}else{
					$(this).parent().children(".type3_span").html("选项之间不需要用字符隔开");
				}
}
		});
	
});
</script>
</head>
<body >
<div class="gridContainer clearfix">
<div class="LayoutDiv1">
     <s:form action="survey_result!add.action?hasResult=%{#attr.hasResult}"  >
     <s:set name="user_id" value="#request.user_id"></s:set>
     <s:hidden name="user_id"></s:hidden>
     <s:hidden name="class_id"></s:hidden>
     <s:hidden name="hasResult" value="%{#attr.hasResult}"></s:hidden>
     <c:if test="${attr.hasResult==1}">
     	<div class="test_t"><div class="wenjian">
     		<span id="showText">您已提交过问卷<!-- ，点击按钮修改 --></span>
     	</div>
		<div class="btn_d">
     	<!-- <input type="button" name="modify" id="modify" value="修改问卷" class="btn_da"/> -->
     	<input type="button" name="modify2" id="modify2" value="查看问卷结果" class="btn_da" onclick="window.location = 'survey_result!list.action?class_id=${attr.class_id }&user_id=${attr.user_id }';"/>
     	</div>
     	</div>
     </c:if>
     <%--<c:if test="${attr.hasResult==2}">已开班，问卷无法查看</c:if>
     --%>
     <c:if test="${attr.hasResult==3}">
     	<div class="test_t"><div class="wenjian">无效用户，问卷无法查看</div></div></c:if>
     <c:if test="${attr.hasResult==4}">
     	<div class="test_t"><div class="wenjian">用户没有绑定班级，问卷无法查看</div></div></c:if>
     <!-- <div  id="myTable" style="display: none;"> -->
        <%-- <div class="title_t"><div class="title_t_1">${attr.surveyList[0].class_name }调查问卷</div></div> --%>
        <div class="timu">
	    <h1 class="blue">${attr.surveyList[0].class_name }调查问卷</h1>
        <!-- </div> -->
        <div class="test_t">
     <c:choose>
	     <c:when test="${empty attr.surveyList}">
		 	<span class="wenjian">该学习班下没有问卷</span><br/>
	     </c:when>
		 <c:otherwise>
         <c:forEach var="s" items="${attr.surveyList}">
	        <div class="Test_q" >
		        <div class="Test_q_t"><span class="q_n">题目${s.sn }:${s.title }(${title_type_map[s.type]})</span></div>
     			<input type="text" name="surveyResultID_${s.id }" value="${s.rs_id}" style="display: none;" />
	            <c:if test="${s.type==4}">
	            	<div class="Test_q_c">
	            		<textarea name="surveyID_t_${s.id }">${s.rs_content}</textarea>
	            	</div>
	            </c:if>
	            <c:if test="${s.type==3}">
	            <div class="Test_q_c_1 check_4" >
		            <ul>
		            	<c:forEach var="content" items="${s.contentList}" varStatus="i">
				            	 <li>${content }</li>
				        </c:forEach>
				    </ul>
				    <div class="btn_text">
				    	<input type="text" name="surveyID_${s.id }" value="${s.rs_options}" />
				        <%--<span style="color: red" class="type3_span">选项之间不需要用字符隔开</span>
				    --%>
				    	<div style="color: red" class="type3_span">选项之间不需要用字符隔开</span>
				    </div>
			    </div>
	            </c:if>
	            <c:if test="${s.type==2}">
	            <div class="Test_q_c_1 check_3" ><ul>
	            	<%--<s:hidden name="surveyID_${s.id }"></s:hidden>--%>
	            	<input type="hidden" name="surveyID_${s.id }" value="${s.rs_options }" />
	            	
	            	<c:forEach var="content" items="${s.contentList}" varStatus="i">
			            <tr ><td class="left" >
			            <c:choose>
			            <c:when test="${fn:contains(s.rs_options,i.index.toString()) }">
			            	<%--<input type="checkbox" name="surveyID_${s.id }" value="${i.index}" checked="checked"/>
			            	--%>
			            	<li type="checkbox" name="surveyID_${s.id }" value="${i.index}" />
			            </c:when>
			            <c:otherwise>
			            	<%--<input type="checkbox" name="surveyID_${s.id }" value="${i.index}"/>--%>
			            	<li type="checkbox" name="surveyID_${s.id }" value="${i.index}" />
			            </c:otherwise>
			            </c:choose>
			            	 ${content }
			            	<c:if test="${content.substring(2)=='其他'}">
			            		<input type="text" name="surveyID_t_${s.id }" value="${s.rs_content }" />
			            	</c:if>
			            </td></tr>
			        </c:forEach>
			        </ul></div>
	            </c:if>
	            <c:if test="${s.type==1}">
			        <div class="Test_q_c check_1" ><ul >
			        <input type="hidden" name="surveyID_${s.id }" value="${s.rs_options }" />
	            	<c:forEach var="content" items="${s.contentList}" varStatus="i">
			            <c:choose>
			            <c:when test="${fn:contains(s.rs_options,i.index.toString()) }">
			            	<%--<input type="radio" name="surveyID_${s.id}" value="${i.index}" checked="checked"/>
			            	--%>
			            	<li type="radio" name="surveyID_${s.id}" value="${i.index}" />
			            </c:when>
			            <c:otherwise>
			            	<%--<input type="radio" name="surveyID_${s.id}" value="${i.index}" />
			            	--%>
			            	<li type="radio" name="surveyID_${s.id}" value="${i.index}" />
			            </c:otherwise>
			            </c:choose>
			            	 ${content }
			            	<c:if test="${content.substring(2)=='其他'}">
			            		<input type="text" name="surveyID_t_${s.id }" value="${s.rs_content }" />
			            	</c:if>
			        </c:forEach>
			        </ul></div>
	            </c:if>
		    </div>
        </c:forEach>
	        <div class="btn_d">
	           <s:submit cssClass="btn_da" value="提交问卷" onclick="return check()"/>
	        </div>
	       <%-- <div class="wj_text">
	           <s:submit value="提交" class="f14 button_2" onClick="return check()"/>
           </div>  --%>
		</c:otherwise>
    </c:choose>
	</div>
    </div>
    </s:form>
</div>
</div>
</body>
</html>
