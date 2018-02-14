<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Locate your Items</title>
<script type="text/javascript" src="jqueryLib.js"></script>
<link href="location_design.css" rel="stylesheet" media="all">
<script>
var $images=null;
var $info=null;
var $menu=null;
$(document).ready(function(){
	 $images=$(".childBox");
	 $info=$(".infoBox");
	 initEvent();
	});

function initEvent(){
	$menu=$(".menu");
	$menu.find("#btn1").click(function(){
		printOffset($images);
	});
	$menu.find("#btn2").click(function(){
		printPosition($images);
	})
}
function printOffset($item){
	 println("top Offset= "+$item.offset().top);
	 println("left Offset="+$item.offset().left);
}
function printPosition($item){
	 println("top Position= "+$item.position().top);
	 println("left Position= "+$item.position().left);
}
function println(text){
	var $infoBox = $(".infoBox");
	var $newContent = $("<p>"+text+"<p>");
	$infoBox.append($newContent);
}


</script>
</head>
<body>
<div class="menuWrap">
 <ul class="menu">
  <li id="btn1">getOffset</li>
  <li id="btn2">getLocation</li>
 </ul>
</div>
<div class="dropWrap">
Hello
<div class="parentBox">
<img class="childBox" src="newbtn.bar.1.png">
</div>
<div class="infoBox">
Information on Offset and Location will be printed here.
</div>
</div>
</body>
</html>