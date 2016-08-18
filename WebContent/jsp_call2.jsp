<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String data = request.getParameter("data");
String msg = "Mr." + data;

//1.redirect
//response.sendRedirect("jsp_call2_1.jsp?data=" + msg);


//2.foward
request.setAttribute("mydata", msg + "zzzzz");
ArrayList<String> list = new ArrayList<String>();
list.add("tom");
list.add("toi");
list.add("tolh");
request.setAttribute("mydata2",list);
/* request.getRequestDispatcher("jsp_call2_1.jsp").forward(request, response); */

%>
<!--html 에서는 이렇게 쓴다(forward)  -->
<jsp:forward page="jsp_call2_1.jsp"></jsp:forward>