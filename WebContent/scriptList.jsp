<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>싸니까! 믿으니까! Interpark</title>
<script type="text/javascript" src="jqueryLib.js"></script>
<script type="text/javascript" src="script/menuPanel.js"></script>
<script type="text/javascript" src="script/addToList.js"></script>
<script>
 var $menu=null;
 var $menuName=null;
 var $selectedItem=null;
 var tabPanel1=null;
 $(document).ready(function(){
	 init();
	 initEvent();
	 var tabMenu1 = tabMenu("#tabMenu1");
	 tabMenu1.$tabMenu.on("tabSelect",function(e){
		 tabPanel1.setSelectPanelAt(e.selectIndex);
	 })
	 tabPanel1 = tabPanel(".tab-contents");
 });


</script>
<link href="scriptListStyle.css" rel="stylesheet" media="all">
</head>
<body>
<div id="btnWrap" class="btnWrap">
 <input class="btn" id="menuName" type="text">
 <button class="btn" id="add">add</button>
 <button class="btn" id="edit">edit</button>
 <button class="btn" id="remove">remove</button>
 <button class="btn" id="up">UP</button>
 <button class="btn" id="down">DOWN</button>
</div>
<div id="menuWrap" class="menuWrap">
 <ul class="topList">
  <li> Hello you can edit the list</li>
  <li> use the buttons above</li>
 </ul>
</div>
<div class="tabMenuWrap">
 <ul class="tab-menu" id="tabMenu1">
  <li class="menuitem1">facebook</li>
  <li class="menuitem2">google</li>
  <li class="menuitem3">pinterest</li>
  <li class="menuitem4">twitter</li>
  <li class="menuitem5">path</li>
 </ul>
 <div class="tab-contents">
  <div class="content">
   <img src="content_facebook.png">
  </div>
  <div class="content">
   <img src="content_google.png">
  </div>
  <div class="content">
   <img src="content_pinterest.png">
  </div>
  <div class="content">
   <img src="content_twitter.png">
  </div>
  <div class="content">
   <img src="content_path.png">
  </div>
 </div>
</div>
</body>
</html>