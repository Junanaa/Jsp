<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
게임 로그인<br><br>
<%
	request.setCharacterEncoding("UTF-8"); //한글 표시용
%>
 ========================
<Form action="MyGame.jsp" name="LoginForm" method="post">
 	<p> 로그인
	<p> 이름 : <input type="text" name="mName" value="준한갓" size="10">
	<p> 전화번호 : <select name="mTel_1"size="1">
						<option value="010">010</option>
						<option value="02">02</option>
						<option value="031">031</option>
						<option value="O32">032</option>					
				</select>-
						<input type="text" name="mTel_2" size="4" value="9981">-
						<input type="text" name="mTel_3" size="4" value="1072">
	<p> 초기화 : <input type="reset"> <input type="submit">
 </Form>
 ========================
 <br><br>
</body>
</html>