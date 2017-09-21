<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="${base}/css/ht_web.css" rel="stylesheet" type="text/css" />
	<title>${system_name }</title>
<style>
.item_content ul { list-style: none; }
.item_content ul li { width: 130px; height: 70px; float: left;text-align: center; margin: 12px }
.item_content { width: 520px; height: auto; border: 1px solid #ccc; float:left;margin-left: 10px; }
.item_content .item { width: 200px; height: 120px; line-height: 120px; text-align: center; cursor: pointer; background: #ccc; }
.item_content .item img { width: 200px; height: 120px; border-radius: 6px; }
.close { display: block; width: 20px; height: 20px; top: 0; right: 0; z-index: 9999; position: absolute; text-align: center; font-size: 16px; cursor: pointer; color: aliceblue }
.item_container {background-color: #fff;height: 900px;text-align: center;}
.content_title{background-color: #efeff8;margin: 0;padding-top: 15px;width: 100%;}
.item{text-align: center;width: 125px;margin-left: 10px;}
img{padding-left: 25px;}
.name_span{text-align: center;padding-left: 25px;}
.save_button{clear: both;}
</style>
</head>
<body>
<div class="item_container">
	<div class="content_title">
	<table class="list_table c3 f14">
		<caption class="caption_title">
		  手机端样式(可拖动模块图标进行重新排序)
        </caption>
    </table>
   </div>
  <div class="item_content" id="imageChange">
    <ul>
    	<c:forEach items="${modules}" var="m">
	      <li>
	        <div class="item" ids="${m.id}" title="${m.module_name }"><img alt="${m.module_name }" src="${base}/module/${m.module_icon }" width="50" height="50" /><div class="name_span"><span>${m.module_name }</span></div></div>
	      </li>
	    </c:forEach>
    </ul>
	<div class="save_button"><input type="submit" class="button_2 cf" value="保存排序" onclick="submit(${academy_id })"/></div>
  </div>
</div>
</body>
</html>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script>
	$(function() {
		function Pointer(x, y) {
			this.x = x ;
			this.y = y ;
		}
		function Position(left, top) {
			this.left = left ;
			this.top = top ;
		}
		$(".item_container .item").each(function(i) {
			//$(".item_content .item").each(function(i) {	
			this.init = function() { // 初始化
				this.box = $(this).parent() ;
				$(this).attr("index", i).css({
					position : "absolute",
					left : this.box.offset().left,
					top : this.box.offset().top
				}).appendTo(".item_container") ;
				this.drag() ;
			},
			this.move = function(callback) {  // 移动
				$(this).stop(true).animate({
					left : this.box.offset().left,
					top : this.box.offset().top
				}, 500, function() {
					if(callback) {
						callback.call(this) ;
					}
				}) ;
			},
			this.collisionCheck = function() {
				var currentItem = this ;
				var direction = null ;
				$(this).siblings(".item").each(function() {
					if(
						currentItem.pointer.x > this.box.offset().left &&
						currentItem.pointer.y > this.box.offset().top &&
						(currentItem.pointer.x < this.box.offset().left + this.box.width()) &&
						(currentItem.pointer.y < this.box.offset().top + this.box.height())
					) {
						// 返回对象和方向
						if(currentItem.box.offset().top < this.box.offset().top) {
							direction = "down" ;
						} else if(currentItem.box.offset().top > this.box.offset().top) {
							direction = "up" ;
						} else {
							direction = "normal" ;
						}
						this.swap(currentItem, direction) ;
					}
				}) ;
			},
			this.swap = function(currentItem, direction) { // 交换位置
				if(this.moveing) return false ;
				var directions = {
					normal : function() {
						var saveBox = this.box ;
						this.box = currentItem.box ;
						currentItem.box = saveBox ;
						this.move() ;
						$(this).attr("index", this.box.index()) ;
						$(currentItem).attr("index", currentItem.box.index()) ;
					},
					down : function() {
						// 移到上方
						var box = this.box ;
						var node = this ;
						var startIndex = currentItem.box.index() ;
						var endIndex = node.box.index(); ;
						for(var i = endIndex; i > startIndex ; i--) {
							var prevNode = $(".item_container .item[index="+ (i - 1) +"]")[0] ;
							node.box = prevNode.box ;
							$(node).attr("index", node.box.index()) ;
							node.move() ;
							node = prevNode ;
						}
						currentItem.box = box ;
						$(currentItem).attr("index", box.index()) ;
					},
					up : function() {
						// 移到上方
						var box = this.box ;
						var node = this ;
						var startIndex = node.box.index() ;
						var endIndex = currentItem.box.index(); ;
						for(var i = startIndex; i < endIndex; i++) {
							var nextNode = $(".item_container .item[index="+ (i + 1) +"]")[0] ;
							node.box = nextNode.box ;
							$(node).attr("index", node.box.index()) ;
							node.move() ;
							node = nextNode ;
						}
						currentItem.box = box ;
						$(currentItem).attr("index", box.index()) ;
					}
				}
				directions[direction].call(this) ;
			},
			this.drag = function() { // 拖拽
				var oldPosition = new Position() ;
				var oldPointer = new Pointer() ;
				var isDrag = false ;
				var currentItem = null ;
				$(this).mousedown(function(e) {
					e.preventDefault() ;
					oldPosition.left = $(this).position().left ;
					oldPosition.top =  $(this).position().top ;
					oldPointer.x = e.clientX ;
					oldPointer.y = e.clientY ;
					isDrag = true ;
					
					currentItem = this ;
					
				}) ;
				$(document).mousemove(function(e) {
					var currentPointer = new Pointer(e.clientX, e.clientY) ;
					if(!isDrag) return false ;
					$(currentItem).css({
						"opacity" : "0.8",
						"z-index" : 999
					}) ;
					var left = currentPointer.x - oldPointer.x + oldPosition.left ;
					var top = currentPointer.y - oldPointer.y + oldPosition.top ;
					$(currentItem).css({
						left : left,
						top : top
					}) ;
					currentItem.pointer = currentPointer ;
					// 开始交换位置
					
					currentItem.collisionCheck() ;
					
					
				}) ;
				$(document).mouseup(function() {
					if(!isDrag) return false ;
					isDrag = false ;
					currentItem.move(function() {
						$(this).css({
							"opacity" : "1",
							"z-index" : 0
						}) ;
					}) ;
				}) ;
			}
			this.init() ;
		}) ;
	}) ;
		
		
	function submit(academy_id){
		var module_ids="";
		var indexs="";
		var moids="";
		var map="";
		$(".item").each(function(i,item){
			if(i!=0){
				module_ids+=",";
				indexs+=",";
				moid+=",";
				map+=",";
			}
			module_ids += $(item).attr("ids");
			moids +=$("div[index='"+i+"']").attr("ids");
			moid=$("div[index='"+i+"']").attr("ids")
			indexs+=i;
			map+="\""+i+"\""+":"+moid;
		})
		$.ajax({
			url: "academy_module!saveSort.action",              //请求地址
	        type: "POST",                       //请求方式
	        data: { modules: module_ids, academy_id: academy_id,indexes:encodeURIComponent(map)},        //请求参数
	        dataType: "json",
	        success: function (data) {
			//此处放成功后执行的代码
	            alert("保存成功！");
	            window.location.href="academy_module!academyList.action?academy_id=" + data;
	        },
		})
	}
</script>
</body>
</html>
