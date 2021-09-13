<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="my.dao.*,my.util.*,my.model.*,java.sql.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	투표 리스트:
	<br>
	<hr>
	<br>
	<%
	List<Vote> list = null;
	Connection conn = ConnectionProvider.getConnection();
	try {
		VoteDao dao = new VoteDao();
		list = dao.selectList(conn);
	} catch (SQLException e) {
	}
	if (list != null) {
	%>
	<c:set var="list" value="<%=list%>" />
	<table border="1" width="1000" cellpadding="10">
		<tr>
			<th>투표번호</th>
			<th>투표명</th>
			<th>투표기간</th>
			<th>사업 이미지</th>
			<th>사업기간</th>
			<th>추진배경</th>
			<th>추진내용</th>
			<th>기대효과</th>
			<th>소요예산</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>

		<c:forEach var="vote" items="${list}">
			<tr>
				<td>${vote.voteId}</td>
				<td>${vote.voteName}</td>
				<td>${vote.voteDate}</td>
				<td>${vote.voteImg}</td>
				<td>${vote.busDate}</td>
				<td>${vote.background}</td>
				<td>${vote.content}</td>
				<td>${vote.benefit}</td>
				<td>${vote.price}</td>
				<td><a href="/0831/purchase/purchase.jsp?voteId=${vote.voteId}">
						<img src="/admin/images/${vote.voteImg}" width="60" height="70">
				</a></td>
				<td><button
						onclick="location.href='updateForm.jsp?voteId=${vote.voteId}'">수정</button></td>
				<td><button
						onclick="location.href='delete.jsp?voteId=${vote.voteId}'">삭제</button></td>
			</tr>
		</c:forEach>

	</table>
	<%
	}
	%>
	<br>
	<br>
	<a href="uploadForm.jsp">투표 등록하기</a>
	
</body>
</html>









