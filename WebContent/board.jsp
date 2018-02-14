<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.*,java.sql.*,hanjun.test.Entry,hanjun.test.EntryDao"  %>
<%
 String user = (String)request.getParameter("user");
 String title = (String)request.getParameter("title");
 String content = (String)request.getParameter("content");
 String pw = (String)request.getParameter("pw");
 String entryNum = (String)request.getParameter("entryNum");
 if (user!=null && title!=null && content!=null && pw!=null && entryNum==null){
     Entry entry = new Entry(user,title,pw);
     entry.setContent(content);
	 java.util.Date date = new java.util.Date();
	 Timestamp regdt = new java.sql.Timestamp(date.getTime());
     entry.setDate(regdt);
     EntryDao.register(entry);
 }
 else if (title!=null && content!=null && entryNum!=null){
	 EntryDao.updateEntries(Integer.parseInt(entryNum),title,content);
 }
 ArrayList<Entry> entries = new ArrayList<Entry>();
 int counts = EntryDao.countEntries();
 for(int i=0;i<counts;i++){
	 Entry entry = EntryDao.getEntries(i+1);
	 entries.add(entry);
 }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="jqueryLib.js"></script>
<link href="board_design.css" rel="stylesheet" media="all">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>러블리즈 갤러리 ITisLife-DCinside</title>
<script>
 $(document).ready(function(){
	var $table = $(document).find("table");
 });
</script>
</head>
<body>
<p>러블리즈 갤러리<br></p>

<table>
<tr>
<td class="entryNum">글번호</td>
<td class="user">작성자</td>
<td class="title">제목</td>
<td class="date">작성일</td>
</tr>
<%for(int i=0;i<counts;i++){ 
Entry entry = entries.get(i);%>
<tr>
<td class="entryNum"><%=entry.getEntryNum() %></td>
<td class="user"><%=entry.getUser() %></td>
<td class="title"><a href="view.jsp?entryNum=<%=entry.getEntryNum()%>"><%=entry.getTitle() %></a></td>
<td class="date"><%=entry.getDate() %></td>
<%} %>
</table>
<a href="write.jsp">글 쓰기 ></a>
</body>
</html>