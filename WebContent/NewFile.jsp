<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try{
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "123");
	pstmt = conn.prepareStatement("select * from sangdata");
}catch(Exception e){
	out.println("실패");
	return;
}
try{
	rs = pstmt.executeQuery();

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>상품자료</h2>
<table border="1">
<tr><th>코드</th><th>품명</th><th>구량</th><th>단가</th></tr>
<%
while(rs.next()){
%>
<tr>
	<td><%=rs.getString("code") %></td>
	<td><%=rs.getString("sang") %></td>
	<td><%=rs.getString("su") %></td>
	<td><%=rs.getString("dan") %></td>
</tr>
<%
}
%>
</table>
</body>
</html>
<%
}catch(Exception e2){
	
}finally{
		if (rs != null)
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
}
%>