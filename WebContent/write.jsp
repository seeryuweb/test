<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="write_design.css" rel="stylesheet" media="all">
<title>�۾���</title>
</head>
<body>

�߾ӰԽ��� > �۾���
<form action="board.jsp" method="post" target="_top">
�Խ���(20�� �̳�):  <input type="text" maxlength=20 name="user" class="TextUser"><br>
��й�ȣ(20�� �̳�):  <input type="text" maxlength=20 name="pw" class="TextUser"><br>
**��й�ȣ�� �ش� �Խù��� �����ϰų� ������ �� �ʿ��մϴ�!<br>
����(50�� �̳�):     <input type="text" maxlength=50 name="title" class="TextTitle"><br>
����(200�� �̳�):    <input type="text" maxlength=200 name="content" class="TextTitle">
<input type="submit" value="�۾���">
</form>
</body>
</html>