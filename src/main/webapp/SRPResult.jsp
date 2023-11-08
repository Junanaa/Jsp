<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String sHNick = request.getParameter("mHNick");
	//로그인 한 사람이 선택한 넘어온 값 저장(S/R)
	String sUser = request.getParameter("mRadio");
	int nUser = Integer.parseInt(sUser);//문자를 숫자로
	sUser = String.valueOf(nUser); //숫자가 문자로
	sUser = nUser + ""; //숫자를 문자로
	
	//컴퓨터 선택 처리 및 저장
	int nCom =((int)(Math.random()*3))+1; //1,2,3 중에 하나만 선택
	
	//두개의 값을 판단해서 결과 산출
	String sTempRes = "";
	if(nUser==1){
		if(nCom==1){
			sTempRes="비김";
		}
		else if(nCom==2){
			sTempRes="컴퓨터 승";
		}
		else if(nCom==3){
			sTempRes=sHNick+" 승";
		}
	}
%>
<%=sHNick%>이 선택한 것은 <%=sUser %> 입니다.<br>
컴퓨터가 선택한 것은 <%=nCom %> 입니다.<br>
결과는 <%=sTempRes %> 입니다.<br>

</body>
</html>