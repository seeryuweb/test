<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="design.css" rel="stylesheet" media="all">
<title>Insert title here</title>
</head>
<body>
 <div class="headBar">
  <ul class="headBtns">
   <li>
    <a href="index.jsp">�α���</a>
   </li>
   <li>
    <a href="index.jsp">ȸ������</a>
   </li>
  </ul>
 </div>
 <div class="headWrap">
  <p class="logo">seeRyuWeb</p>
  <p class="contacts">developedBy:seeRyuWeb<br>email:seeRyuWeb@gmail.com<br>telephone:010-8888-8888</p>
 </div>
 <div class="gnbWrap">
  <ul class="gnbBtns">
   <li>
    <a href="index.jsp" class="index">INDEX</a>
   </li>
   <li>
    <a href="logout.jsp" class="logout">logout</a>   
   </li>
   <li>
    <a href="result.jsp" class="result">result</a>   
   </li>
   <li>
    <a href="design.css" class="design">design</a>   
   </li>
  </ul>
 </div>
 <div class="contentsWrap">
  <div class="joinWrap" style="text-align:left;">
  <form action="newUser.jsp" method="get" target="_top">
   <h2>ȸ������</h2>
   <p>seeRyuWeb ȸ������ �������Դϴ�. �Ʒ� ���� �ۼ��� �� submit �� �����ּ���.</p>
   <div class="essentialDataWrap">
    <h3><span>�ʼ�</span>�����Է�</h3>
    <div class="tableBox">
     <table>
      <colgroup>
       <col>
       <col>
      </colgroup>
      <tbody>
       <tr>
        <th scope="row">�޴�����ȣ</th>
        <td>
         <div class="phoneNumber">
          <input type="text" class="iText" name="hp1" maxlength="3">
          <span>-</span>
          <input type="text" class="iText" name="hp2" maxlength="4">
          <span>-</span>
          <input type="text" class="iText" name="hp3" maxlength="4">
         </div>
        </td>
       </tr>
       <tr>
        <th scope="row">E-mail</th>
        <td>
         <div class="mailArea">
          <input type="text" class="iText" name="email1" maxlength="50">
          <span>@</span>
          <input type="text" class="iText" name="email2" maxlength="50">
         </div>
         <div class="iCheckbox">
          <input id="ads" type="checkBox" name="ads" value="Y">
          <label for="ads">SMS,�̸����� ���� ���� ������ ���� ���� �����Դϴ�(����)</label>
         </div>
        </td>
       </tr>
       <tr>
        <th scope="row">ID</th>
        <td>
         <div class="id">
          <input type="text" class="iText" name="id" maxlength="20">
          <a href="welcome.jsp" class="blackBtn">�ߺ�Ȯ��</a>
          <p class="description">ID�� ���� �Ǵ� ���ڸ� �����մϴ�</p>
         </div>
        </td>
       </tr>
       <tr>
        <th scope="row">��й�ȣ</th>
        <td>
         <div class="password">
          <input type="text" class="iText" name="pw" maxlength="12">
          <p class="description"><span style="color:#ff3333">����,����,Ư������ ȥ�� �ִ� 12��</span></p>
         </div>
        </td>
       </tr>
      </tbody>
     </table>
    </div>
   </div>
   <div class="essentialTermsWrap">
   </div>
   <div class="joinBtnWrap">
    <input type="submit" class="join" value="Join">
   </div>
  </form>
  </div>
 </div>
</body>
</html>