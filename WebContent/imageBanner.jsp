<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="jqueryLib.js"></script>
<link href="imageBanner_design.css" rel="stylesheet" media="all">
<title>ImageBanner</title>
<script>
 $(document).ready(function(){
	var $banner = $(".banner-container");
	var bannerLength = $banner.find("img").length;
	var bannerWidth = $(".banner").width();
	var currentIndex = 0;
	
	//currentIndex 째 배너 출력
	function showImage(index){
		var left=-(index*bannerWidth);
		$banner.css({left:left});
	}
	//prev 버튼 액션 정의
	$("#prev").click(function(){
		currentIndex--;
		if(currentIndex<0)
			currentIndex=bannerLength-1;
		
		showImage(currentIndex);
	});
	$("#next").click(function(){
		currentIndex++;
		if(currentIndex>=bannerLength)
			currentIndex=0;
		
		showImage(currentIndex);
	});
	
	});
</script>
</head>
<body>
 <div class="wrap">
  <button id="prev">prev</button>
  <button id="next">next</button>
  <div class="banner">
    <div class="banner-container">
    <img src="images/1.png">
    <img src="images/2.png">
    <img src="images/3.png">
    <img src="images/4.png">
    <img src="images/5.png">
  </div>
  </div>
 </div>
</body>
</html>