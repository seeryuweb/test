<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.util.*,java.sql.*,hanjun.test.Entry,hanjun.test.EntryDao" %>
<%
String entryCode = (String)request.getParameter("entryNum");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시물 수정 확인</title>
</head>
<body>
게시물을 수정하시려면, 작성 시 입력했던 비밀번호를 입력해 주십시오.<br>
<form action="updateEntry.jsp" method="post" target="_top">
<input type="hidden" name="entryNum" value=<%=entryCode %>>
<input type="text" maxlength="20" name="pw">
<input type="submit" value="확인">
</form> 
</body>
</html>