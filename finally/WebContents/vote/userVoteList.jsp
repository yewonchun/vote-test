<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="my.dao.*,my.util.*,my.model.*,java.sql.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../main.css">
</head>
<body>
	
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
	
	<!-- Header -->
   <div class="head">
		<div class="header">
			<div class="logo">
			<a href="/finally/main/main.jsp">
				<img src="../images/logo.png" alt="시흥시주민참여예산">
				</a>
			</div>

			<div class="menu1">
				<li><a href="/finally/vote/vote1.jsp">투표</a></li>
				<li><a href="/finally/customerService/cs.jsp">고객센터</a></li>
			</div>

			<ul class="menu2">
				<li><a href="/finally/mypage/myInfo.jsp">hyewon님 환영합니다!</a></li>
                    <li><a href="/finally/main/mainLogout.jsp">로그아웃</a></li>
			</ul>

		</div>
	</div>
	
	
	
	
	<c:set var="list" value="<%=list%>" />
	
	
	
		
		<!--main-->
		<div class="content">
			<div class="inner">
				<h2 class="title">투표</h2>
				<div class="vote2-notice">
					<h5>온라인 투표시 준수사항</h5>
					<h5>
						부정투표를 방지하기 위하여 투표진행 시 <span>개개인의 투표 일시와 정보가 기록됩니다. </span> 만약 아래
						사항을 <span>위반할 경우 관련법에 따라 조치돌 수 있음</span>을 알려드립니다. <br> <br>
						1. 본인 외 다른 사람의 대리투표를 하지 않는다. <br>2. 본인의 IP와 인증 시 사용한 휴대전화번호를
						투표 기록에 남기는 것에 대해 동의한다.
					</h5>
				</div>


				<!--main content-->
				<h3 class="local-title">정왕1동 제안사업</h3>
				<div class="vote2-content">
					<ul class="vote2-list">
							<c:forEach var="vote" items="${list}">
							
							<li class="vote2-item">
							<div class="vote2-img">
								<a href="#"> <img class="none-img" alt="제안사업 이미지">
								${vote.voteImg}</a>
							</div>
							<div class="vote2-info">
								<a href="../vote/vote4.jsp?voteId=${vote.voteId}">
									<div class="vote2-title">${vote.voteName}</div>
								</a>
								<div class="price-box">
									<div class="price">${vote.price} 천원</div>
								</div>
								<div class="date-box">
									<div class="date">${vote.busDate}</div>
								</div>
							</div>
						</li>
							
			
			
			
		</c:forEach>


	<%
	}
	%>
	<br>
	<br>
						
						
					</ul>

				</div>
			</div>
			
			<!--footer -->
		      <div class="footerVote">
		         <div class="footerTxt">
		            <p>상호명 (주)시흥시주민참여예산투표 </p>
		            <p>대표 : 한국산업기술대 경영학부 학생 외 4명<br>
		               사업자등록번호 : 123-45-67890 | 전자투표신고번호 : 제 2021-경기 시흥-2018호<br>
		               경기 시흥시 정왕동 산기대학로 237 공학관 G동. 대표번호 : 010-1234-5678<br>
		               본 사이트는 시흥시 주민참여예산 접수를 목적으로 만들어진 사이트 입니다.<br>
		               Copyright© 2021 한국산업기술대학교 IT경영학과. All Rights reserved.</p>
		         </div>
		      </div>
		</div>
		
	
	
	
</body>
</html>









