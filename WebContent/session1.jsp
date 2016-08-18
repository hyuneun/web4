<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
session.setAttribute("idkey", id);
session.setMaxInactiveInterval(10);//10초간 세션유지
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>세션연습</h2>
<form action="session1_1.jsp" method="post">
* 영화 골라 *
<input type="radio" name="movie" checked="checked" value="트루먼쇼">트루먼쇼
<input type="radio" name="movie" value="원데이">원데이
<input type="radio" name="movie" value="다크나이트">다크나이트
<br>
<input type="submit" value="결과보기">

</form>
</body>
</html>