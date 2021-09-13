<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<link rel="stylesheet" href="../main.css">
</head>
<body>
	<script type="text/javascript">
function idinputCheck() {
	if(document.fr.userId.value.length == 0){
		history.back()
		document.fr.userId.focus();
		return false;
	}
	
	if(document.fr.password.value.length == 0){
		alert("비밀번호를 입력해주세요.")
		history.back()
		document.fr.password.focus();
		return false;
	}
	
	if(document.fr.password.value != document.fr.passwordCheck.value){
		alert("비밀번호가 일치하지 않습니다.")
		history.back()
		document.fr.passwordCheck.focus();
		return false;
	}
	
	if(document.fr.userName.value.length == 0){
		alert("이름을 입력해주세요.")
		history.back()
		document.fr.userName.focus();
		return false;
	}
	
	if(document.fr.year.value.length == 0 && document.fr.month.value.length == 0 && document.fr.day.value.length == 0){
		alert("생년월일을 선택해주세요.")
		history.back()
		document.fr.year.focus();
		return false;
	}
	
	if(document.fr.pubUserState.value.length == 0){
		alert("지역을 선택해주세요.")
		history.back()
		document.fr.pubUserState.focus();
		return false;
	}
	
	if(document.fr.pubUserGender.value.length == 0){
		alert("성별을 선책해주세요.")
		history.back()
		document.fr.pubUserGender.focus();
		return false;
	}
	
	
	
} 

function winopen(){
	//새창을 열어서 페이지를 오픈 후 -> 회원아이디정보를 가지고 중복체크
	//1. 아이디가 없으면 알림창과 진행x
	if(document.fr.userId.value =="" || document.fr.userId.value.length < 0){
		alert("아이디를 먼저 입력해주세요")
		document.fr.userId.focus();
		return false;
	}else{
		//2. 회원정보아이디를 가지고 있는 지 체크하려면 DB에 접근해야한다.
		//자바스크립트로 어떻게 DB에 접근할까? => 파라미터로 id값을 가져가서 jsp페이지에서 진행하면 된다.
		window.open("../join/joinIdCheck.jsp?userId="+document.fr.userId.value,"","width=500, height=300");
	}
}
</script>



	<div class="body__container">

		<!-- Header -->
		<div class="head">
			<div class="header">
				<div class="logo">
					<a href="/finally/main/mainLogout.jsp"> <img
						src="../images/logo.png" alt="시흥시주민참여예산">
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

		<!--main-->
		<div class="content">
			<div class="inner">
				<h2 class="title">회원가입</h2>
				<div class="join-wrap">

					<!--진행도-->


					<!--내용-->
					<div class="join-input">
						<form name="fr" action="../login/loginForm.jsp" method="post"
							onsubmit="return idinputCheck(); ">
							<div class="member-id">
								<span class="head-title">아이디</span>
								<div class="row">
									<input type="text" name="userId" placeholder="아이디를 입력하세요."
										class="member id" maxlength="20" alt="아이디">
									<button onclick="winopen()">아이디 중복 확인</button>
								</div>
							</div>

							<div class="member-password">
								<span class="head-title">비밀번호</span>
								<div class="row">
									<input type="password" name="password"
										placeholder="비밀번호를 입력하세요." class="member password"
										maxlength="20" alt="비밀번호">
								</div>
							</div>

							<div class="check-password">
								<span class="head-title">비밀번호 확인</span>
								<div class="row">
									<input type="password" name="passwordCheck"
										placeholder="비밀번호를 확인해주세요." class="check"
										password"
                                    maxlength="13"
										alt="비밀번호 확인">
								</div>

							</div>

							<div class="member-name">
								<span class="head-title">이름</span>
								<div class="row">
									<input type="text" name="userName" placeholder="이름을 입력하세요."
										class="member name" maxlength="20" alt="이름">
								</div>
							</div>

							<div class="birth">
								<span class="head-title">생년월일</span>
								<div class="row">
									<input type="text" name="year" placeholder="년(YYYY) - 4자리 입력"
										class="year number" maxlength="4" data-nextlen="4"
										alt="생년월일(년도)"> <input type="text" name="month"
										placeholder="월(MM) - 2자리 입력" class="month number"
										maxlength="2" data-nextlen="2" alt="생년월일(월)"> <input
										type="text" name="day" placeholder="일(DD) - 2자리 입력"
										class="day number" maxlength="2" data-nextlen="2"
										alt="생년월일(일)">
								</div>
							</div>

							<div class="region">
								<span class="head-title">지역</span>
								<div class="row">
									<span class="si">경기도 시흥시</span>
									<div class="selectbox">
										<select id="cont-type" name="pubUserState"
											class="el-pub-user-state">
											<option value="" selected="selected">== 지역을 선택해주세요
												==</option>

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
								</div>
							</div>
							<div class="gender">
								<span class="head-title">성별</span>
								<div class="row">
									<div class="gender-select">
										<ul>
											<li><input type="radio" name="pubUserGender" id="gen_f"
												class="el-pub-user-gender" value="F"> <label
												for="gen_f" class="label-gender">여성</label></li>
											<li><input type="radio" name="pubUserGender" id="gen_m"
												class="el-pub-user-gender" value="M"> <label
												for="gen_m" class="label-gender">남성</label></li>
										</ul>
									</div>
								</div>
							</div>
					</div>

					<div class="btn-wrap">
						<input type="submit" class="submit" value="확인">
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