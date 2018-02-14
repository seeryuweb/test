<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Index</title>
</head>
<body>
<%
 String email = (String) session.getAttribute("email");
%>
<% if(email!=null) { %>
Hello~ <%= email %> <a href="logout.jsp">[logout]</a>
<% } else { %>
<form action="result.jsp" method="post">
<table border="1">
  <tr>
    <th>name</th>
    <td>
      <input name="email" type="text">
    </td>
    <td>
      <input name="password" type="text">
    </td>
    <td>
      <input type="submit" value="save">
    </td>
  </tr>
</table>
</form>
<% } %>
</body>
</html>