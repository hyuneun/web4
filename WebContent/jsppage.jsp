<%@ page language="java"
		 contentType="text/html; charset=UTF-8"
   	 	 pageEncoding="UTF-8"
 	     import="java.util.Calendar"
 	     session="true"
 	     buffer="8kb"
 	     autoFlush="true"
 	     isThreadSafe="true"
 	     info="jsp문서정보 검색로봇을 통한 자료검색시 사용할수있다"
 	     errorPage="error.jsp"
 	     isELIgnored="false"
 	     isErrorPage="false"
 	     
 	         %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>directive</title>
</head>
<body>
페이지 지시어는 JSP 문서의 앞에서 읽기를 지시하는 역활<p/>
날짜 및 시간 출력:
<%
Calendar dt = Calendar.getInstance();
int y = dt.get(Calendar.YEAR);
int m = dt.get(Calendar.MONTH) + 1;
int d = dt.get(Calendar.DATE);
out.println("오늘은" + y + " " + m + " " + d);
%>
<br>
<%= this.getServletInfo() %>
<hr>
<%int a=10 /0;
out.println(a);
%>
</body>
</html>