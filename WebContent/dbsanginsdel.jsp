<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload = function(){
	
var con = confirm("진짜삭제?");
 if(con === true){
	<%
	
	request.setCharacterEncoding("utf-8");
	String del = request.getParameter("del");

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
		pstmt = conn.prepareStatement("delete from sangdata where code=?");
		pstmt.setString(1, del);
		pstmt.executeUpdate();
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
}else{
	response.sendRedirect("dbsangpum.jsp");
}
 
}
	

</script>
</head>
<body>

</body>
</html>

