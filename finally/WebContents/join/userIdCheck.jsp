<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="my.dao.*,my.model.*,my.util.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
		String userId = request.getParameter("userId");
		Connection conn = ConnectionProvider.getConnection();
		boolean result=true; 
		try {
			UserDao dao = new UserDao();
			result = dao.checkUserId(conn, userId);
			if(result)
				out.println("사용할 수 없는 아이디입니다.");
			else
				out.println("사용할 수 있는 아이디입니다.");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		

%>
</body>
</html>