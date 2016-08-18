<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("utf-8");
String sang = request.getParameter("sang");
String su = request.getParameter("su");
String dan = request.getParameter("dan");

//자료 검사 2차 - 1차는 js에서 수행
if(sang.equals("") || sang == null ||
	su.equals("") || su == null ||
	dan.equals("") || dan == null){
	return;
}
try{
	//수량과 단가는 숫자만 허용
	int suryang = Integer.parseInt(su);
	su = Integer.toString(suryang);
	int danga = Integer.parseInt(dan);
	dan = Integer.toString(danga);
}catch(Exception e){
	response.sendRedirect("sangins.html");
	return;
}

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try{
	Class.forName("com.mysql.jdbc.Driver");      //--> Mysql 드라이버 이용
}catch(Exception e){
	System.out.println("db연결 실패:" + e);
	out.println("db연결 실패:" + e);
	return;
}
try{
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "123");
	//신상코드를 구하
	pstmt = conn.prepareStatement("select max(code) from sangdata");
	rs = pstmt.executeQuery();
	rs.next();
	int maxcode = rs.getInt(1);
	//System.out.print(maxcode);
	pstmt = conn.prepareStatement("insert into sangdata values(?,?,?,?)");
	pstmt.setInt(1, maxcode+1);
	pstmt.setString(2, sang);
	pstmt.setString(3, su);
	pstmt.setString(4, dan);
	pstmt.executeUpdate();
	//request.getRequestDispatcher("dbsangpum.jsp").forward(request, response);
	//포워드를 쓸경우 주소는 여기그대로이기때문에 새로고침할때마다 값이 추가되버림
	response.sendRedirect("dbsangpum.jsp");
	
}catch(Exception e){
	System.out.println("처리 실패:" + e);
	out.println("처리 실패:" + e);
	return;
}finally{
	if(rs != null) rs.close();
	if(pstmt != null) pstmt.close();
	if(conn != null) conn.close();
}
%>



