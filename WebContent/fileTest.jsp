<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.io.*,java.util.*"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String saveDir = "C:\\Users\\한준\\eclipse-workspace\\WebTest\\WebContent\\uploadFiles";//
	saveDir = application.getRealPath("/uploadFiles/");
	int maxSize = 1024*1024*100;
	String encType = "UTF-8";

	MultipartRequest multipartRequest
	= new MultipartRequest(request, saveDir, maxSize, encType, new DefaultFileRenamePolicy());

    File file = multipartRequest.getFile("image");
    
	response.setContentType("text/plain; charset=UTF-8");
    PrintWriter pw = response.getWriter();
    pw.print("{\"imageurl\" : \"http://localhost:8080/T1/uploadFiles/"+file.getName()+"\",\"filename\":\""+file.getName()+"\",\"filesize\":"+file.length()+ ",\"imagealign\":\"L\"}");
    pw.flush();
    pw.close(); 		
%>
</body>
</html>