<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="Top.jsp" %><!-- 같은부분이 여러번 반복될때 따로만들어서 include한다(간편) -->
<h1>나의 페이지</h1><!--소스자체를 가져옴  -->
<pre>
본문
1
2
3
4
5
6
7
</pre>
<div style="color: blue; font: bold;"><!--jsp 액션테그(결과를가져옴)  -->
<jsp:include page="inclu_action1.jsp"></jsp:include>
</div>
<div style="color: cyan;">
<jsp:include page="inclu_action2.jsp">
	<jsp:param value="korea" name="msg"/>
</jsp:include>
</div>
<%@include file="Bottom.jsp" %>
</body>
</html>