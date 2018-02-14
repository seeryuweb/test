<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*,java.sql.*,hanjun.test.Entry,hanjun.test.EntryDao" %>
<%
String entryCode = request.getParameter("entryNum");
String pw = request.getParameter("pw");
int entryNum = Integer.parseInt(entryCode);
Entry entry = EntryDao.getEntries(entryNum);
if(!pw.equals(entry.getPw())){
	response.sendRedirect("board.jsp");
}
String user = entry.getUser();
String title= entry.getTitle();
String content = entry.getContent();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="write_design.css" rel="stylesheet" media="all">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시물 수정</title>
</head>
<body>
중앙게시판 > 게시물 수정
<form action="board.jsp" method="post" target="_top">
게시자(20자 이내): <%=user %><br>
비밀번호(20자 이내):  <%=pw %><br>
**게시자와 비밀번호는 수정이 불가합니다!<br>
제목(50자 이내):     <input type="text" maxlength=50 name="title" class="TextTitle" value="<%=title %>"><br>
내용(200자 이내):    <input type="text" maxlength=200 name="content" class="TextTitle" value="<%=content %>">
<input type="hidden" name="entryNum" value=<%=entryCode %>>
<input type="submit" value="수정하기">
</form>
</body>
</html>