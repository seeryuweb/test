<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="script/test.js"></script>
<title>result</title>
</head>
<%
String email = request.getParameter("email");
String pw = request.getParameter("password");

if(email!=null && email.equals(pw)){
	  session.setAttribute("email",email);
} else {
	response.sendRedirect("index.jsp");
}

%>
<body>
	<table>
		<tr>
			<td>user name</td>
			<td><%=email %></td>
		</tr>
		<tr>
			<td>password</td>
			<td><%=pw %></td>
		</tr>
	</table>

</body>
</html>