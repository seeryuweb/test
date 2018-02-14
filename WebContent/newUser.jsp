<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.util.*,hanjun.test.Login,hanjun.test.User,hanjun.test.UserDao,hanjun.test.UserDaoImpl"%>
<%
  String hp1 = (String)request.getParameter("hp1");
  String hp2 = (String)request.getParameter("hp2");
  String hp3 = (String)request.getParameter("hp3");
  String email1 = (String)request.getParameter("email1");
  String email2 = (String)request.getParameter("email2");
  String id = (String)request.getParameter("id");
  String pw = (String)request.getParameter("pw");
  if (hp1==null || hp2==null || hp3==null || email1==null || email2==null || id==null || pw==null) {
		response.sendRedirect("memberjoin.jsp");
	}
  User user = new User(id,pw);
  user.setHp1(hp1);
  user.setHp2(hp2);
  user.setHp3(hp3);
  user.setEmail1(email1);
  user.setEmail2(email2);
  
  UserDaoImpl userManager = new UserDaoImpl();
  userManager.register(user);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%=user.getId() %> 님,회원가입을 축하합니다!<br>
<a href="login.jsp">로그인하기</a>
</body>
</html>