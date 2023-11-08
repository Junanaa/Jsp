<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	//window.onload = function(){
		//alert("onload 이벤트 발생함!!");
	//}
	// function : 함수(호출되서 뭔가를 실행함)
	// document : 브라우저 
//	function MyFuncion1(){
//		alert("MyFuncion1 함수가 호출됨");
		//document.body.style.background = "GREEN";
	}
</script>
<%!
	String makeItLower(String data) {
	 return data.toLowerCase();
	}
%>

<body onload="MyFuncion1()">
<%
	out.println(makeItLower("Hello World"));
	//String sTemp = "CANDY";
	//String sConvert = sTemp.toLowerCase();
	//out.println(sConvert + "<br>");
%>
	<br>오늘 : <%=new java.util.Date() %><br>

	<p> 아이디 : <input type="text">
	<p> 비밀번호 : <input type="password">
	<br><br>
	
	1.대림대학교 :<br>
	<a href="http://www.daelim.ac.kr">[바로 가기]</a><br>
	
	<a href="http://www.daelim.ac.kr">
	<img src="../MyImges/바탕화면1.bmp" width="500" height="500" border="2"></a><br>
	
	
	


</body>
</html>