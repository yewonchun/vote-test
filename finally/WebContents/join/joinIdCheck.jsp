<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="my.dao.*,my.model.*,my.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../main.css">
</head>
<body>

<body>
<h2>아이디중복체크</h2>
<%//1. 한글처리 & 받아온 파라미터 변수화
request.setCharacterEncoding("UTF-8");
String userId = request.getParameter("userId");

Connection conn = ConnectionProvider.getConnection();
boolean result = true;
try{
	UserDao dao = new UserDao();
	result = dao.checkUserId(conn, userId);
}catch(Exception e){
	
}
//3. joinIdCheck(ID)메서드
//int result = mdao.joinIdCheck(id);

if (!result){
	out.print("사용가능한 아이디입니다");
	//5. 아이디사용하기버튼추가 => 동기방식사용 but 요즘은 비동기방식을 더 많이사용한다
	%>
	 <input type="button" value="아이디 사용하기" onclick="result();">
	<%
	
}else {
	out.print("중복된 아이디입니다");
}

%>
<!-- 4.팝업창구현  -->
<fieldset>
	<!-- <form action="" method="post">
	action속성에 값이 없으면 기본적으로 자기자신을 불러오지만 중복확인 버튼을 클릭했을때 변경되지않는다.-->	
	<form action="joinIdCheck.jsp" method="post" name="wfr">
		ID : <input type="text" name="userId" value="<%=userId%>">
		<input type="submit" value="중복 확인">	 
	</form>
</fieldset>

<!-- 6. 선택된아이디는 중복확인창에서 회원가입 페이지로 정보전달  -->
 <script type="text/javascript">
    function result(){
    	//팝업창의 아이디정보를 회원가입창에 아이디정보로 전달
    	//팝업창은 기존창과 종속관계를 가지고 있으므로 opener를 이용하면 된다.
    	//alert("팝업창의 id값"+document.wfr.userid.value + ", 회원가입창의 id값 : " +opener.document.fr.id.value)
    	//6-1. 회원가입페이지의 id값에 아이디중복으로 선택된 id값을 대입.
    	opener.document.fr.userId.value = document.wfr.userId.value;
    	
    	//6-3. 회원가입창 제어
    	//readonly 속성제어(커멜표기가 아닐때는 제어가 안됨 신기하네 ㅋㅋㅋ)
    	opener.document.fr.userId.readOnly=true;
    	
    	//6-2. 창닫기
    	window.close();
    }
 
 </script>

</body>
</body>
</html>