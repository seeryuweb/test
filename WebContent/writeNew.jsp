<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<!-- 다음 에디터 -->
<link rel="stylesheet" href="/daumeditor/css/editor.css" type="text/css" charset="utf-8"/>
<script src="/daumeditor/js/editor_loader.js" type="text/javascript" charset="utf-8"></script>
<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
</head>
<body>
<form name="tx_editor_form" id="tx_editor_form" action="/insert.jsp" method="post" accept-charset="utf-8">
<table width="600px">
		<tr>
			<td>제목</td>
			<td><input type="text" id="title" name="title" /></td>
		</tr>
		<tr>
			<td>내용</td>
			<td id="editorTd"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" id="save" value="저장"/>
				<input type="button" value="취소"/>
			</td>
		</tr>
</table>
</form>

</body>
</html>