<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.*,hanjun.test.Login,hanjun.test.User,hanjun.test.UserDao,hanjun.test.UserDaoImpl"%>
<%
 String id = (String)request.getParameter("id");
 String pw = (String)request.getParameter("pw");
 if (id==null || pw==null) {
		response.sendRedirect("login.jsp");
	}
 UserDaoImpl loginManager = new UserDaoImpl();
 Login login = new Login(id,pw);
 User user = loginManager.validateUser(login);
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
Hello welcome!
<br><%=user.getId() %><br><%=user.getPw() %><br><%=user.getHp1() %>-<%=user.getHp2() %>-<%=user.getHp3() %><br>
<%=user.getEmail1() %>@<%=user.getEmail2() %>
</body>
</html>