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
<title>�Խù� ����</title>
</head>
<body>
�߾ӰԽ��� > �Խù� ����
<form action="board.jsp" method="post" target="_top">
�Խ���(20�� �̳�): <%=user %><br>
��й�ȣ(20�� �̳�):  <%=pw %><br>
**�Խ��ڿ� ��й�ȣ�� ������ �Ұ��մϴ�!<br>
����(50�� �̳�):     <input type="text" maxlength=50 name="title" class="TextTitle" value="<%=title %>"><br>
����(200�� �̳�):    <input type="text" maxlength=200 name="content" class="TextTitle" value="<%=content %>">
<input type="hidden" name="entryNum" value=<%=entryCode %>>
<input type="submit" value="�����ϱ�">
</form>
</body>
</html>