<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="my.dao.*,my.model.*,my.util.*,java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>본인인증</title>
<link rel="stylesheet" href="../main.css">
</head>
<body>
	<%
	String userId = (String) session.getAttribute("LOGINID");
	User user = null;
	Connection conn = ConnectionProvider.getConnection();
	try {
		UserDao dao = new UserDao();
		user = dao.selectById(conn, userId);
	} catch (SQLException e) {
	}
	%>

	<script type="text/javascript">
		function vote2_submit(form) {
			//form.userId.value = form.userId.value.trim();

			if (form.pubUserPhone.value.length == 0) {
				alert('휴대전화 번호를 입력해주세요.');
				form.pubUserPhone.focus();
				return;
			}
			
			if (form.pubUserPhone.value.length != 11) {
				alert('휴대전화 번호를 다시 입력해주세요.');
				form.pubUserPhone.focus();
				return;
			}
			
			if (form.authNumber.value.length == 0) {
				alert('인증번호를 입력해주세요.');
				form.authNumber.focus();
				return;
			}
			
			if (form.authNumber.value.length != 4) {
				alert('인증번호를 다시 입력해주세요.');
				form.authNumber.focus();
				return;
			}

			
			if (form.authNumber.value != 0820) {
				alert('인증번호를 다시 입력해주세요.');
				form.authNumber.focus();
				return;
			}

			form.submit();

		}
	</script>



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
				<h2 class="title">본인인증</h2>
				<div class="join-wrap">

					<!--내용-->
					<div class="join-input">
						<form action="../vote/userVoteList.jsp" method="post"
							onsubmit="vote2_submit(this); return false;">
							<div class="phone">
								<div class="row">
									<input type="text" placeholder="휴대폰 번호 (- 없이 입력)" name="pubUserPhone" class="pub-user-phone el-pub-user-phone number" maxlength="11"
										alt="휴대폰번호"> <a href="#none" onclick="alert('인증번호가 요청되었습니다.');return false;" class="sign-normal-btn request-auth">인증번호 요청</a> 
										<a href="#none" class="sign-normal-btn re-request-auth" style="display: none;">인증번호 재요청</a>
								</div>
							</div>

							<div class="phone-02">
								<div class="row">
									<input type="text" placeholder="인증번호를 입력" alt="인증번호"
										name="authNumber" class="auth-number" maxlength="6">
									<a href="#none" onclick="alert('인증이 완료되었습니다.');return false;"
										class="sign-normal-btn valid-auth-number number">인증 확인</a>
								</div>
							</div>

							<div class="btn-wrap">
								<input type="submit" class="sign-normal-btn" value="다음">
							</div>


						</form>
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