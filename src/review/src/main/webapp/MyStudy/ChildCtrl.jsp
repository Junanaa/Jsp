<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
입력 Control <br><br>
<!-- 
	1.Form tag 지정 : action, name , method
	2.전부 Name 속성 입력
	3.Submit 처리
 -->
 ========================
<Form action="LoginOK.jsp" name="LoginForm" method="post">
 	<p> 로그인
	<p> 별명 : <input type="text" name="mNick" value="wondo" size="10">
	<p> Email : <input type="text" name="mMailID" size="5" value="candy143">@
				<input type="text" name="mMailURL" size="7" value="daum.net">
	<p> 초기화 : <input type="reset">
	<input type="submit">
	
	
	
 </Form>
  ========================
 <br><br>
 
<Form action="ChildView.jsp" name="CtrlForm" method="post"> <!-- get(클릭) post(입력) -->
	<p> 아이디 : <input type="text" name="mID" style="background-color:Yellow;"value="TEST" required>
	<p> 비밀번호 : <input type="password" name="mPWD" autofocus value="1234">
	<p> 이메일 : <input type="email" name="mEmail" placeholder="@필수" value="1@test.com">
	<p> 숫자 : <input type="number" name="mNumber" value="1111">
	<p> 체크 : <input type="checkbox" checked name="mChk" value="True">
	<p> 초기화 : <input type="reset">
	<input type="submit">
</Form>

	<p> 라디오1 : <input type="radio">
	<p> 라디오2 : <input type="radio">
	<p> 전송 : <input type="submit">
	<p> 범위 : <input type="range">
	<p> 날짜 : <input type="date">
	<p> 색깔 : <input type="color">
	<p> 숨김 : <input type="hidden">
	<p><textarea name="comment" rows="4" cols="50" placeholder="입력하세요"></textarea>
	<p><select name="fruit"size="3"> <!-- 기본 콤보박스, 사이즈늘어나면 리스트박스 -->
		<option value="A">Apple</option>
		<option value="B"selected>Banana</option>
		<option value="O">Orange</option>
	</select>
	
	<p> 확인 : <input type="button" value="확인">
	
	 	
	
</body>
</html>