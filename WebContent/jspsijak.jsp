<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP TEST</title>
</head>
<body>
안녕 난 jsp문서야~
<br>
<% // Scriptlet 자바코드기술하는곳
String ir = "홍길동";
out.println(ir + "의 홈페이지");//out : 클라이언트에 자료를 내보내는  JSP내장객체
for(int i = 1; i < 7; i++){
	out.println("<h" + i + ">");
	out.println("자바를잡아");
	out.println("</h" + i + ">");
}
out.println("자료출력");
%>
<br>
<%="잘출력(표현식)" %><!-- ;금지 -->
<br>
<%= new java.util.Date() %>
<br>
<%
int a =0,b=0;
do{
a++;
b += a;
}while(a < 10);
%>
<%="10까지의합" + b%>
<br>
<%=ir + "님전번" + tel%>
<%! String tel = "111-1234";//선언 : 전역변수가된다(다른 변수들은 다 지역변수) %>
<!-- jsp는 get,post구분없다 jsp전체가 하나의 서비스메소드이기때문에(그러므로 메소드를 포함할수없다) -->
<%!
public int add(int m , int n){//맴버메소드
	return m + n;
}
%>
<%=add(10,5) %>
</body>
</html>