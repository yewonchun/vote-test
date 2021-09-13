<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="my.dao.*,my.model.*,my.util.*,java.sql.*,java.util.*" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시흥시 주민참여예산</title>
<link rel="stylesheet" href="../main.css">
<link rel="stylesheet" type="text/css" href="full-page-scroll.css">

	<style type="text/css">
		.section1 {
			padding-top: 98px;
			background:  linear-gradient(#fff 93%, #f1f1f1 17%);
		}

		.section3 {
			/* background:  linear-gradient(#f1f1f1 10%, #ffffff 70%); */
			padding-top: 98px;
			background:  linear-gradient(#f1f1f1 10%, #ffffff 70%);

		}

		.section4 {
			/* background-color: #CC938E; */
		}


		section  {
			/* font-family: 'Open Sans'; */
			font-style: normal;
			text-align: center;
			position: relative;
			top: 50%;
			transform: translateY(-50%);
		}

	</style>
</head>
<body>
<%
   String userId = (String)session.getAttribute("LOGINID");
   User user = null; 
   Connection conn = ConnectionProvider.getConnection();
   try {
      UserDao dao = new UserDao();
      user = dao.selectById(conn, userId) ;
   }catch(SQLException e){}
%>

	<!-- Header -->
   <div class="head">
		<div class="header">
			<div class="logo">
			<a href="/finally/main/mainLogout.jsp">
				<img src="../images/logo.png" alt="시흥시주민참여예산">
				</a>
			</div>

			<div class="menu1">
				<li><a href="/finally/login/loginForm.jsp">투표</a></li>
				<li><a href="/finally/login/loginForm.jsp">고객센터</a></li>
			</div>

			<ul class="menu2">
				<li><a href="/finally/login/loginForm.jsp">로그인</a></li>
                    <li><a href="/finally/join/joinForm.jsp">회원가입</a></li>
			</ul>

		</div>
	</div>
	
	<!-- Main -->
	<div id="main" class="scroll-container">
		<section class="section1">

			<div>

				<h2 class="main1-title">
					<span>시흥의 특별한이야기 주민참여예산!</span></br>
					<span>시흥은 시민이 주인입니다</span>
				</h2>

				<div class="main1-con">
					<button type="submit" class="btn-type1" onClick="location.href='/finally/login/loginForm.jsp'">
						<span class="txt-type">투표하기</span>
					</button>
				</div>

			</div>
		</section>
		


		<section class="section3">
			<h2 class="main2-title">
				<span>주요 메뉴 한눈에 보기</span></br>
					<span>고객님들께서 자주찾는 메뉴를 바로 확인해보세요.</span>
			</h2>

			<div class="main2-con">
				<div class="main3-card">

					<div class="card">
						<h5 class="card-title">투표하러 가기</h5>
						<div class="card-text">
							<p>현재 진행되고 있는 투표를 확인하세요.</br>
								소중한 한표 부탁드려요!</p>
						</div>

						<button type="submit" class="btn-type1" onClick="location.href='/finally/login/loginForm.jsp'">
							<span class="txt-type2">투표하기</span>
						</button>
					</div>

					<div class="card">
						<h5 class="card-title">내 정보 조회</h5>
						<div class="card-text">
							<p>정보 확인이 필요하세요?<br>
							지금 내 정보 확인하기
							</p>
						</div>

						<button type="submit" class="btn-type1" onClick="location.href='vote1.html'">
							<span class="txt-type2">정보조회</span>
						</button>
					</div>
				</div>
			</div>
		</section>


		
		<section class="section4">
			<!--footer -->
		      <div class="footerVote1">
		         <div class="footerTxt1">
		            <p>상호명 (주)시흥시주민참여예산투표 </p>
		            <p>대표 : 한국산업기술대 경영학부 학생 외 4명<br>
		               사업자등록번호 : 123-45-67890 | 전자투표신고번호 : 제 2021-경기 시흥-2018호<br>
		               경기 시흥시 정왕동 산기대학로 237 공학관 G동. 대표번호 : 010-1234-5678<br>
		               본 사이트는 시흥시 주민참여예산 접수를 목적으로 만들어진 사이트 입니다.<br>
		               Copyright© 2021 한국산업기술대학교 IT경영학과. All Rights reserved.</p>
		         </div>
		      </div>
		</section>
		
	</div>
	<script src="full-page-scroll.js"></script>
	<script type="text/javascript">
		new fullScroll({
			displayDots: true,
			dotsPosition: 'left',
			animateTime: 0.7,
			animateFunction: 'ease'
		});
	</script>
</body>
</html>