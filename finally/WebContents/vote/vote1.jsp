<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="my.dao.*,my.model.*,my.util.*,java.sql.*,java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보 조회</title>
<link rel="stylesheet" href="../main.css">
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

      <div class="body__container">

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
				<li><a href="/finally/mypage/myInfo.jsp"><%= userId %>님 환영합니다!</a></li>
                    <li><a href="/finally/main/mainLogout.jsp">로그아웃</a></li>
			</ul>

		</div>
	</div>


        <!--main-->
        <div class="content">
            <div class="inner">
                <div class="vote1-notice">
                <form action="../vote/vote2.jsp" method="post">
                    <h1>본인인증 후 투표하실 수 있습니다.</h1>
                    <p>본인인증을 해주세요.
                        <br>인증을 완료하시면 투표하실 수 있습니다.</p>
                    <button type="submit" class="btn-type1">
                            <span class="txt-type">본인인증</span>
                    </button>
                </div>
                </form>
                

            </div>
            
            
            
            
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
</body>
</html>