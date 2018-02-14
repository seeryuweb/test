<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
  String hp1 = request.getParameter("hp1");
  String hp2 = request.getParameter("hp2");
  String hp3 = request.getParameter("hp3");
%>
<html>
<head>
  <meta http-equiv="content-type" content="text/html; charset=EUC-KR">
  <meta charset="EUC-KR">
  <meta name="viewport" content="width=device-width, initial-scale=1"> 
  <title>setListEdit</title> 
  <meta name="author" content="forresst" />
  <!-- link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.0-alpha.2/jquery.mobile-1.4.0-alpha.2.min.css" /-->
  <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
  <script src="http://code.jquery.com/mobile/1.4.0-alpha.2/jquery.mobile-1.4.0-alpha.2.min.js"></script>
  <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.min.js"></script>
  <script src="http://forresst.github.io/js/jquery.ui.touch-punch.min.js"></script>
  <script>
   var musicNameDic={
		    "11": "(걸인베) Candy Jelly Love",
		    "12": "(걸인베) 어제처럼 굿나잇",
		    "13": "(걸인베) 이별 Chapter1",
		    "14": "(걸인베) 비밀여행",
		    "15": "(1집리팩) 안녕",
		    "16": "(1집리팩) 놀이공원",
		    "21": "(럽8) 아츄",
		    "22": "(럽8) 작별하나",
		    "23": "(럽8) 예쁜 여자가 되는 법",
		    "24": "(럽8) Hug Me",
		    "25": "(럽8) 새콤달콤",
		    "26": "(럽8) 라푼젤",
		    "31": "(LVLNS) 그대에게",
		    "32": "(LVLNS) Circle",
		    "33": "(LVLNS) BeBe",
		    "41": "(뉴트릴) Destiny",
		    "42": "(뉴트릴) 퐁당",
		    "43": "(뉴트릴) 책갈피",
		    "44": "(뉴트릴) 1 cm",
		    "45": "(뉴트릴) 마음(*취급주의)",
		    "46": "(뉴트릴) 인형",
		    "51": "(2집리팩) 지금,우리",
		    "52": "(2집리팩) 아야(Aya)",
		    "53": "(RUR) WoW!",
		    "54": "(RUR) Cameo",
		    "55": "(RUR) Emotion",
		    "56": "(RUR) 첫눈",
		    "57": "(RUR) 똑똑",
		    "58": "(RUR) Night and Day",
		    "59": "(RUR) 숨바꼭질",
		    "50": "(Fever) Take Me Somewhere",
		    "61": "(폴인럽) 종소리",
		    "62": "(폴인럽) 삼각형",
		    "63": "(폴인럽) 그냥",
		    "64": "(폴인럽) 비밀정원",
		    "65": "(폴인럽) FALLIN'",
		    "66": "(폴인럽) 졸린꿈"
   };
  </script>
  <script>

  $(document).ready(function(e) {
	    (function() {
            var listTab = getSelect($(".listTab"),function(){
            	var nameList = listTab.getSelectedItemsList();
            	selectTab.addItem(nameList);
            });
            
            var selectTab = getSelect($(".selectTab"),function(){
            	var nameList = selectTab.getSelectedItemsList();
            	listTab.addItem(nameList);
            	selectTab.removeItem();
            });
            $("#submitBtn").on("click",function() {
            	$("form").submit();
            });
            
            $("form").on("submit",function(){
              var itemList = listTab.getItemsList(); 	
      		  var isValid = checkListCount(itemList);
    		  if(isValid) {
    			  fillForm(itemList);
    		  }
    		  alert(isValid);
    		  return isValid;
    	  	});
            
            function fillForm(itemList) {
            	$("form").find("#inputItemList").attr("value",itemList.join());
            }
           
            function checkListCount(list){
        	  var counts= list.length;
        	  if(counts>5){
	      		  alert(counts);
	      		  return false;
        	  } else if(counts<5){
	      		  alert(counts);
	      		  return false;
        	  } else {
        		  return true;
        	  }
            }
           
            function getSelect($item,callback){
              var $div = $item
              var $titleItem = $div.find(".titleWrap");
              var $infoItem = $div.find(".infoWrap");
              var $ulItem = $div.find(".listWrap ul");
              var $liItem = $ulItem.find("li");
              var $btns = $div.find(".buttonWrap ul.buttons");
              var $selectedItems = null;
              var $unselectBtn = $btns.find("li.unselectBtn");
              var $removeBtn = $btns.find("li.removeBtn");
              var $addBtn = $btns.find("li.addBtn");
              
              initEvent();


              function initEvent(){
              	  $ulItem.on("click","li",function(){
              		  selectItem($(this));
              	  });  
              	  $unselectBtn.on("click",function(){
              		  unselectItem();
              	  });
              	  $removeBtn.on("click",function(){

              		  if(callback){
              			  callback();
              		  }
              		  removeItem();
              	  });
              	  $addBtn.on("click",function(){
              		  if(callback){
              			  callback();
              		  }
              	  });
              }
              
              function selectItem($itm){
            	  var $item=$itm;
            	  if($item.attr("class")!="selected"){
            		  $item.addClass("selected");
            	  }else{
            		  $item.removeClass("selected");
            	  }
            	  updateSelectedItemsList();
              }
              
              function unselectItem(){
            	  if ($selectedItems!=null){
            		  $selectedItems.removeClass("selected");
            	  }
            	  else{
            		  alert("선택된 항목이 없습니다.");
            	  }
                  updateSelectedItemsList();
              }
              
              function removeItem(){
            	  if ($selectedItems!=null){
            		  $selectedItems.remove();
            		  updateSelectedItemsList();
            		  updateItemsList();
            	  }
            	  else{
            		  alert("선택된 항목이 없습니다.");
            	  }
              }
              
              
              function addItem(array){
            	  var itemNamesList= array;
            	  for(var i=0;i<itemNamesList.length;i++){
                  var musicKey = itemNamesList[i];
            	  var newItem = "<li value="+musicKey+"><img src='images/"+musicKey+".png'></li>";
            	  $ulItem.prepend(newItem);
            	  }
            	  updateItemsList();

              }
              
              function updateItemsList(){
            	  $liItem=$ulItem.children();
                  updateInfoItem($liItem.length);
              }
              
              function updateInfoItem(length){
            	  var counts = length;
            	  if(counts<25){
            		  $titleItem.children().remove();
            		  var $newLine = "<p> total "+counts+" items in the list<br>must select more items to submit"
            		  $titleItem.prepend($newLine);
            	  }else if(counts>25){
            		  $titleItem.children().remove();
            		  var $newLine = "<p> total "+counts+"items selected <br> delete some from the list</p>"
            		  $titleItem.prepend($newLine);
            	  }else if(counts==25){
            		  $titleItem.children().remove();
            		  var $newLine = "<p> 25 items selected <br> you may submit now</p>"
            	  }
              }
              
              function updateSelectedItemsList(){
            	  $selectedItems=$ulItem.children("li.selected");
            	  if($selectedItems.length!==0){
            		  $infoItem.css("display","block");
            		  $infoItem.children().remove();
            		  var $newLine = "<p>총 "+$selectedItems.length+" 개의 항목을 선택하셨습니다</p>"
            		  $infoItem.prepend($newLine);
            	  }else{
            		  $infoItem.css("display","none");
            	  }
              }
              
              function getSelectedItemsList(){
            	  var selectedItemsList = [];
	           	  $selectedItems.each(function(index){
	           		  selectedItemsList.push($(this).attr("value"));
	           	  });
            	  return selectedItemsList;
              }
              
              function getItemsList(){
            	  var itemsList =[];
            	  $liItem.each(function(index){
            		  itemsList.push($(this).attr("value"));
            	  }); 
            	  return itemsList;
              }
            
              return {
            	  removeItem:removeItem,
            	  addItem:addItem,
            	  getSelectedItemsList:getSelectedItemsList,
            	  getItemsList:getItemsList           
              }
            }
	    })();
	  }); 
 /*
  var $selectedItems1 = null;
  var $selectedItems2 = null;
  */


  
  $(document).bind('pageinit', function() {
    $( "#sortable" ).sortable({
       items: "li:not(.ui-li-divider)"
    });
    $( "#sortable" ).sortable();
    $( "#sortable" ).disableSelection();
    $( "#sortable" ).bind( "sortstop", function(event, ui) {
      $('#sortable').listview('refresh');
    });
  });

  function send() {
    
  }
  </script>  
  <style type="text/css">
*{
 border:0;
 padding:0;
 margin:0;
}
ul{
list-style:none;
}

#sortable li{
width:278px;
height:54px;
border:3px solid #A7C7AF;

overflow:hidden;
background-color:#A7C7AF;
}
.selectTab{
width:300px;
height:600px;
margin:30px;
background-color:#6fdb8f;
position:absolute;
bottom:0;
left:0;
}
.selectTab .listWrap li{
width:278px;
height:54px;
border:3px solid #A7C7AF;
overflow:hidden;
background-color:#A7C7AF;
}
.listTab{
width:300px;
height:600px;
margin:30px;
background-color:#db73ce;
position:absolute;
bottom:0;
right:0;
}
.buttonWrap{
width:300px;
height:60px;
position:absolute;
bottom:0px;
}
.buttonWrap ul.buttons{
list-style:none;
}
.buttonWrap ul.buttons li{
display:inline-block;
float:left;
height:56px;
width:146px;
padding:2px;
background-color:#3ebd22;
}
.listWrap{
width:100%;
height:500px;
background-color:#A7C7AF;
overflow:scroll;
position:absolute;
top:65px;
}
.listWrap li.selected{
background-color:#FF4083;
border:3px solid #FF4083;
}
#sortable li.selected{
background-color:#FF4083;
border:3px solid #FF4083;
}
.infoWrap{
width:100%;
background-color:#555555;
position:absolute;
bottom:60px;
display:none;
color:#fff;
height:20px;
}
.titleWrap{
width:100%;
height:65px;
background-color:#3ebd22;
position:absolute;
top:0;
display:block;
color:#fff;
}
.SongsWrap{
width:294px;
height:59px;
position:absolute;
top:0;
display:block;
border:3px solid #3ebd22;
background-image:url(images/songList.png);
}
.submitWrap{
width:630px;
height:60px;
margin:30px;
background-color:#6fdb8f;
clear:both;
}
.submitBtn{
width:100px;
height:40px;
margin:30px;
background-color:#6fdb8f;
}
img{
margin:0;
padding:0;
}
.contentsArea{
width:720px;
height:860px;
clear:both;
background-color:#000;
position:relative;
}
   </style>	
</head>
<body> 
<div class="contentsArea">
<div class="selectTab">
<div class="songsWrap">

</div>
<div class="listWrap">
<ul>
      <li value="0"><img src="images/0.png"></li>
      <li value="1"><img src="images/1.png"></li>
      <li value="2"><img src="images/2.png"></li>
      <li value="3"><img src="images/3.png"></li>
      <li value="4"><img src="images/4.png"></li>
      <li value="5"><img src="images/5.png"></li>
      <li value="6"><img src="images/6.png"></li>
      <li value="7"><img src="images/7.png"></li>
      <li value="8"><img src="images/8.png"></li>
      <li value="9"><img src="images/9.png"></li>
      <li value="10"><img src="images/10.png"></li>
      <li value="11"><img src="images/11.png"></li>
      <li value="12"><img src="images/12.png"></li>
      <li value="13"><img src="images/13.png"></li>
      <li value="14"><img src="images/14.png"></li>
      <li value="15"><img src="images/15.png"></li>
      <li value="16"><img src="images/16.png"></li>
      <li value="17"><img src="images/17.png"></li>
      <li value="18"><img src="images/18.png"></li>
      <li value="19"><img src="images/19.png"></li>
      <li value="20"><img src="images/20.png"></li>
      <li value="21"><img src="images/21.png"></li>
      <li value="22"><img src="images/22.png"></li>
      <li value="23"><img src="images/23.png"></li>
      <li value="24"><img src="images/24.png"></li>
      <li value="25"><img src="images/25.png"></li>
      <li value="26"><img src="images/26.png"></li>
      <li value="27"><img src="images/27.png"></li>
      <li value="28"><img src="images/28.png"></li>
      <li value="29"><img src="images/29.png"></li>
      <li value="30"><img src="images/30.png"></li>
      <li value="31"><img src="images/31.png"></li>
      <li value="32"><img src="images/32.png"></li>
      <li value="33"><img src="images/33.png"></li>
      <li value="34"><img src="images/34.png"></li>
      <li value="35"><img src="images/35.png"></li>
      <li value="36"><img src="images/36.png"></li>
      <li value="37"><img src="images/37.png"></li>
      <li value="38"><img src="images/38.png"></li>
      <li value="39"><img src="images/39.png"></li>
      <li value="40"><img src="images/40.png"></li>
      <li value="41"><img src="images/41.png"></li>
      <li value="42"><img src="images/42.png"></li>
      <li value="43"><img src="images/43.png"></li>
      <li value="44"><img src="images/44.png"></li>
      <li value="45"><img src="images/45.png"></li>
      <li value="46"><img src="images/46.png"></li>
      <li value="47"><img src="images/47.png"></li>
</ul>
</div>
<div class="infoWrap">

</div>
<div class="buttonWrap">
 <ul class="buttons">
  <li class="unselectBtn"><img src="images/unselect.png"></li>
  <li class="addBtn"><img src="images/addItem.png"></li>
 </ul>
</div>
</div>
<div class="listTab">
<div class="titleWrap">

</div>
<div class="listWrap">
 <ul id="sortable">

 </ul>
</div>
<div class="infoWrap">

</div>
<div class="buttonWrap">
 <ul class="buttons">
  <li class="unselectBtn"><img src="images/unselect.png"></li>
  <li class="removeBtn"><img src="images/removeItem.png"></li>
 </ul>
</div>
</div>
</div>
<button id="submitBtn" type="button" class="submitBtn"> clickMe </button>
<form class="submitWrap" target="_top" method="get" action="test.jsp">
 <input name="ph1" type="hidden" value="<%=hp1%>">
 <input name="ph2" type="hidden" value="<%=hp2%>">
 <input name="ph3" type="hidden" value="<%=hp3%>">
 <input id="inputItemList" name="itemsList" type="hidden" value="">
</form>
</body>
</html>