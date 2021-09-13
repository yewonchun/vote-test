<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
투표정보입력: <br><hr><br>
<form action="upload.jsp" method="post" enctype="multipart/form-data">
투표번호 : <input type="text" name="voteId" ><br>
투표명 : <input  name="voteName"><br>
투표기간: <input type="text" name="voteDate" value="강길동"><br>
사업 이미지: <input type="file" name="voteImg" ><br>
사업기간: <input type="text" name="busDate"><br>
추진배경: <textarea type="text" name="background" cols="50" rows="10"></textarea><br>
추진내용: <textarea type="text" name="content" cols="50" rows="10"></textarea><br>
기대효과: <textarea type="text" name="benefit" cols="50" rows="10"></textarea><br>
소요예산 : <input type="text" name="price" ><br>

<input type="submit" value="입력"><br>
</form>
</body>
</html>