<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="jqueryLib.js"></script>
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
 var attachments = {};
 attachments['text'] = [];
 attachments['text'].push("hi");
 attachments['integer'] = [];
 attachments['integer'].push(1);
 attachments['integer'].push(2);
 attachments['integer'].push(3);
 
 var allattachments = [];
 for (var i in attachments) {
	allattachments = allattachments.concat(attachments[i]);
 }
 $(document).ready(function(){
	alert(allattachments);
 });
</script>
<ul>
<li>Hello</li>
</ul>
</body>
</html>