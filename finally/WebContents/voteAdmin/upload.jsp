<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="my.util.*,my.dao.*,my.model.*,java.util.*,java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int voteId = 0;
	String voteName="";
	String voteDate = "";
	String voteImg = "";
	String busDate = "";
	String background = "";
	String content = "";
	String benefit = "";
	int price = 0;
	String uploadPath = "C:\\ws\\0831\\WebContents\\images";
	Connection conn = ConnectionProvider.getConnection();
	try {
		MultipartRequest multi = new MultipartRequest(request, uploadPath, 
				100*1024, "utf-8", new DefaultFileRenamePolicy());
		voteId = Integer.parseInt(multi.getParameter("voteId"));
		voteName = multi.getParameter("voteName");
		voteDate = multi.getParameter("voteDate");
		voteImg = multi.getFilesystemName("voteImg");
		busDate = multi.getParameter("busDate");
		background = multi.getParameter("background");
		content = multi.getParameter("content");
		benefit = multi.getParameter("benefit");
		price = Integer.parseInt(multi.getParameter("price"));
		VoteDao dao = new VoteDao(); 
		Vote vote = new Vote(voteId, voteName, voteDate, voteImg, busDate, background, content, benefit,price);
		dao.insert(conn, vote);
	} catch(Exception e){}
%>
투표번호 : <%= voteId %> <br>
투표명: <%= voteName %> <br>
투표기간: <%= voteDate %> <br>
투표이미지: <%= voteImg %> <br>
사업기간: <%= busDate %> <br>
추진배경: <%= background %> <br>
추진내용: <%= content %> <br>
기대효과: <%= benefit %> <br>
소요예산: <%= price %> <br>데이터베이스 입력이 완료되었습니다. 

</body>
</html>