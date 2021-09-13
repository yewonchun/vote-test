<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="my.dao.*,my.model.*,my.util.*,java.sql.*,java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="user" class="my.model.User" />
<jsp:setProperty property="*" name="user"/>
<%
	
	Connection conn = ConnectionProvider.getConnection();
	boolean loginCheck = false;
	try {
		UserDao dao = new UserDao();
		loginCheck = dao.checkPassword(conn, user.getUserId(), user.getPassword());
		if (loginCheck) {
			session.setAttribute("LOGINID", user.getUserId());
			if (user.getUserId().equals("admin")){
				response.sendRedirect("/finally/voteAdmin/adminMenu.jsp");
			} else {
				response.sendRedirect("/finally/main/main.jsp");
			}
		} else {
%>
	<script type="text/javascript">
		alert("아이디와 비밀번호가 일치하지않습니다.");
		history.go(-1);
	</script>
<% 			
		}
	} catch(SQLException e){
		e.printStackTrace();
	}
%>

</body>
</html>