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

	<script type="text/javascript">
		function move(url){
		q = confirm("정보가 수정되었습니다. 메인화면으로 이동합니다.");
		
		}
	</script>
		
		

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
                <h2 class="title">내 정보 조회</h2>



			<form action="../main/main.jsp" method="post" >
                <div class="table-area">
                    <table class="info-table">
                        <tbody class="tbody">
                         <tr>
                                <th class="td-head">아이디</th>
                                <td class="td-content-left"> 
                                    <input type="text" id="info-id" name="userId" maxlength="10"  value = "<%= user.getUserId() %>" readonly >
                                </td>
                            </tr>
                            <tr>
                                <th class="td-head">이름</th>
                                <td class="td-content-left">
                                    <input type="text" id="info-name" name="userName" maxlength="10" value="<%= user.getUserName() %>" >
                                </td>
                            </tr>
                            <tr>
                                <th class="td-head">주소</th>
                                <td class="td-content-left">
                                    <span class="si">경기도 시흥시</span>
                                    <div class="selectbox">
                                        <select id="cont-type" name="pubUserState" class="el-pub-user-state" value="<%= user.getPubUserState() %>">
                                            <option value="" selected="selected">== 지역을 선택해주세요 ==</option>

                                            <option value="DC01">과림동</option>

                                            <option value="DC02">군자동</option>

                                            <option value="DC03">능곡동</option>

                                            <option value="DC04">대야동</option>

                                            <option value="DC05">매화동</option>

                                            <option value="DC06">목감동</option>

                                            <option value="DC07">신천동</option>

                                            <option value="DC08">신현동</option>

                                            <option value="DC09">연성동</option>

                                            <option value="DC10">월곶동</option>

                                            <option value="DC11">은행동</option>

                                            <option value="DC12">장곡동</option>

                                            <option value="DC13">정왕1동</option>

                                            <option value="DC14">정왕2동</option>

                                            <option value="DC15">정왕3동</option>

                                            <option value="DC16">정왕4동</option>

                                            <option value="DC17">정왕본동</option>

                                            <option value="DC18">배곧동</option>

                                        </select>
                                    </div>
                                </td>
                            </tr>
                           
                            <tr>
                                <th class="td-head">생년월일</th>
                                <td class="td-content-left">
                                    <input type="text" id="info-year" name="year" maxlength="4" value="<%= user.getYear() %>"> <span class="td-d">년</span>
                                    <input type="text" id="info-month" name="month" maxlength="2" value="<%= user.getMonth() %>"> <span class="td-d">월</span>
                                    <input type="text" id="info-day" name="day" maxlength="2" value="<%= user.getDay() %>"> <span class="td-d">일</span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="myinfo-btn">
                        <button type="submit" class="btn-type1" onclick="move('../main/main.jsp')"> 
								<span class="txt-type">수정</span> 
                        </button> 
                        
                       
                    </div>
                </div>
                
                </form>
                
                


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