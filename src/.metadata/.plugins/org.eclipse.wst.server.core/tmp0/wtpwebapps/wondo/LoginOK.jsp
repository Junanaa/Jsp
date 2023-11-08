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
	String sNick = request.getParameter("mNick");
	String sMailID = request.getParameter("mMailID");
	String sMailURL = request.getParameter("mMailURL");
	String sMyEmail = sMailID + "@" + sMailURL;
%>

	별명: <%=sNick%><br>
	Email: <%=sMyEmail%><br><br>
	====================<br><br>
	가위 바위 보 !! <br>
	<Form action="SRPResult.jsp" name="SRPForm" method="post">
		<input type="hidden" name="mHNick" value="<%=sNick%>">
		
		<input type="radio" name="mRadio" value="1">가위
		<input type="radio" name="mRadio" value="2">바위
		<input type="radio" name="mRadio" value="3">보 <br>
		<input type="submit">
	</Form>
	
	
	
</body>
</html>