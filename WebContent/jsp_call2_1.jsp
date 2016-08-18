<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>서버가 넘겨준값</h2>
<%
String data = request.getParameter("data");
out.println("<h1>자료는 " + data + "</h1><br>");

String data2 = (String)request.getAttribute("mydata");
out.println("<h1>자료2는" + data2 + "</h1><br>");

ArrayList<String> data3 = (ArrayList<String>)request.getAttribute("mydata2");
out.println("<h1>자료3는</h1><br>");
for(String f:data3){
	out.println(f + " ");
}
%>
</body>
</html>