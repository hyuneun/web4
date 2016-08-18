<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
** 선택확인 **
<%
request.setCharacterEncoding("utf-8");
String movie = request.getParameter("movie");
String id = (String)session.getAttribute("idkey");

if(id != null){
%>
<%=id %>님이 좋아하는영화는<%= movie %> 입니다
<%
}else{
	out.println("쎄쎤없어");
}
%>
</body>
</html>