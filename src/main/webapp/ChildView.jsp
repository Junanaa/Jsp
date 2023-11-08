<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
여기다가 ChildCtrl에서 입력한 값<br><br>

<%

	request.setCharacterEncoding("UTF-8"); //한글 표시용
	String sID = request.getParameter("mID");
	String sPWD = request.getParameter("mPWD");
	String sEmail = request.getParameter("mEmail");
	String sNumber = request.getParameter("mNumber");
	String sChk = request.getParameter("mChk");
	
%>

	아이디: <%=sID%><br>
	비밀번호: <%=sPWD%><br>
	이메일: <%=sEmail%><br>
	숫자: <%=sNumber%><br>
	체크: <%=sChk%><br>

</body>
</html>