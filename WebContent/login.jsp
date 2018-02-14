<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <form action="userEdit.jsp" method="post" target="_top">
     아이디를 입력하셔요<input type="text" name="id"><br>
     비번을 입력하셔요<input type="text" name="pw"><br>
  <input type="submit" value="login">
  계정이 아직 없으신가요? <a href="memberjoin.jsp">회원가입></a>
 </form>
</body>
</html>