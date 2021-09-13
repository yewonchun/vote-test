<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="my.dao.*,my.model.*,my.util.*,java.sql.*,java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
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
                <h2 class="title">고객센터</h2>


                <!-- 고객센터 게시글 -->
                <div class="arrcodion">
                    <h3 class="mypage-title">자주하는 질문 TOP 5</h3>
                    <div class="arrcodi">
                        <input type="radio" name="arrcodion" id="answer01">
                        <label for="answer01"><span class="top-q">Q </span>주민참여예산제란 무엇인가요?<em></em></label>
                        <div>
                            <p>주민참여예산제란 주민이 직접 아디이어를 기획하고 구성해서 진행할 수 있도록 하는 제도입니다.
                                이곳에서 자연스럽게 나오는 효과를 볼 수 있습니다. 이 기능으로 자주묻는 질문컨텐츠를 만들 수 있습니다.
                            </p>
                        </div>

                        <input type="radio" name="arrcodion" id="answer02">
                        <label for="answer02"><span class="top-q">Q </span>투표 결과는 어디서 확인할 수 있나요?<em></em></label>
                        <div>
                            <p>최근에 진행된 투표 결과의 경우 저희 홈페이지 메인화면에서 확인이 가능합니다. 또한 본인이 투표를 진행했던 결과에
                                대해서는 마이페이지를 통해서도 확인이 가능합니다.
                            </p>
                        </div>

                        <input type="radio" name="arrcodion" id="answer03">
                        <label for="answer03"><span class="top-q">Q </span>투표 진행 방식은 어떻게 되나요?<em></em></label>
                        <div>
                            <p>주민의견수혐에서 의견을 공모하고 안건에 대해 검토하고 자체심사를 하는 과정을 거치게 됩니다.
                                이곳에서 자연스럽게 나오는 효과를 볼 수 있습니다. 이 기능으로 자주묻는 질문컨텐츠를 만들 수 있습니다.
                            </p>
                        </div>

                        <input type="radio" name="arrcodion" id="answer04">
                        <label for="answer04"><span class="top-q">Q </span>투표 가능한 사람은 누구인가요?<em></em></label>
                        <div>
                            <p>시흥시 주민이라면 누구나 투표가 가능합니다.
                            </p>
                        </div>
                    </div>
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