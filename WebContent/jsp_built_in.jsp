<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");//request : 받을때(내장객체)
String id = request.getParameter("id");//response: 줄때(내장객체)
String pwd = request.getParameter("pw");
if(!(id.equals("aa") && pwd.equals("aa11"))){
	response.sendRedirect("jsp_built_in.html");
}
String[] names = request.getParameterValues("name");
String job = request.getParameter("job");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
입력된 자료 확인
아이디 : <%out.println(id + "<br>"); %><!-- out(내장객체) -->
이름 : <%out.println(names[0] + "별명은" + names[1] + "<br>"); %>
직업은 : <%=job %>
<hr>
기타정보<br>
client ip : <%=request.getRemoteAddr() %><br>
client domain <%=request.getRemoteHost() %><br>
protocol : <%=request.getProtocol() %><br>
method : <%=request.getMethod() %><br>
server domain : <%=request.getServerName()%><br>
server buffer size : <%=response.getBufferSize() %>
server charset : <%=response.getCharacterEncoding() %>
<br>
context path : <%=application.getContextPath() %><br><!--application(내장객체)  -->
session : <%=pageContext.getSession()%>
</body>
</html>





