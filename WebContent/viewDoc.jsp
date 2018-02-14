<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.*,java.sql.*,hanjun.test.Entry,hanjun.test.EntryDao"  %>
<%
 request.setCharacterEncoding("utf-8");
 String content = (String)request.getParameter("content");
 String title = (String)request.getParameter("title");
 String user = (String)request.getParameter("user");
 String pw = (String)request.getParameter("pw");
 Entry entry = new Entry(user,title,pw);
 entry.setContent(content);
 java.util.Date date = new java.util.Date();
 Timestamp regdt = new java.sql.Timestamp(date.getTime());
 int num = EntryDao.countEntries();
 entry.setEntryNum(num);		 
 entry.setDate(regdt);
 EntryDao.register(entry);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="jqueryLib.js"></script>
<link rel="stylesheet" href="viewDoc_design.css" type="text/css">
<title>viewDoc</title>
</head>

<body>

<div class="headerArea">
제목 : <%=title %><br>
user : <%=user %>
</div>

<div class="contentArea">
<%=content %>
</div>

</body>

</html>