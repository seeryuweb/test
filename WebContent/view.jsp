<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*,java.sql.*,hanjun.test.Entry,hanjun.test.EntryDao" %>
<%
String entryCode = (String)request.getParameter("entryNum");
int entryNum = Integer.parseInt(entryCode);
Entry entry = EntryDao.getEntries(entryNum);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="view_design.css" rel="stylesheet" media="all">
<title>Insert title here</title>
</head>
<body>
<a href="board.jsp">>����Ʈ�� ���ư���</a><br>
�۹�ȣ:<%=entryNum %>
<table>
<tr>
<td>����: <%=entry.getTitle() %> </td>
</tr>
<tr>
<td>�ۼ���: <%=entry.getUser() %> </td>
</tr>
<tr>
<td>��¥: <%=entry.getDate() %> </td>
</tr>
<tr>
<td class="content">����: <%=entry.getContent() %> </td>
</tr>
</table>
<a href="update.jsp?entryNum=<%=entryNum %>">�� �����ϱ�</a>
</body>
</html>