<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="write_design.css" rel="stylesheet" media="all">
<title>글쓰기</title>
</head>
<body>

중앙게시판 > 글쓰기
<form action="board.jsp" method="post" target="_top">
게시자(20자 이내):  <input type="text" maxlength=20 name="user" class="TextUser"><br>
비밀번호(20자 이내):  <input type="text" maxlength=20 name="pw" class="TextUser"><br>
**비밀번호는 해당 게시물을 수정하거나 삭제할 때 필요합니다!<br>
제목(50자 이내):     <input type="text" maxlength=50 name="title" class="TextTitle"><br>
내용(200자 이내):    <input type="text" maxlength=200 name="content" class="TextTitle">
<input type="submit" value="글쓰기">
</form>
</body>
</html>