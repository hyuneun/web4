<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
홀수출력<br>
<%
for(int i =1; i <= 1000; i++){
	if(i % 2 ==1) out.println(i +" ");
}

%>
<br>
<%= "찍기위한몸부림"%>