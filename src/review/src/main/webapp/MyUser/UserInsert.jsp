<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">

function CheckForm(){
    if(document.CtrlForm.mID.value === ""){
        alert("아이디를 입력하세요!");
        document.CtrlForm.mID.focus();
        return false;
    }
    
    var id = document.CtrlForm.mID.value;
    
    // 아이디는 8자 이상
    if (id.length < 8) {
        alert("아이디는 8자 이상이어야 합니다.");
        document.CtrlForm.mID.focus();
        return false;
    }
    var pw = document.CtrlForm.mPWD1.value;
    
    // 비밀번호 허용 문자 정의
    var allowedChars = /^[a-z0-9^&]+$/;
    
    // 조건확인
    if (!allowedChars.test(pw)) {
        alert("비밀번호는 영어 소문자, 숫자, '^' 또는 '&'만 포함해야 합니다.");
        document.CtrlForm.mPWD1.focus();
        return false;
    }
    //비번 = 비번확인 체크
    if(document.CtrlForm.mPWD1.value != document.CtrlForm.mPWD2.value ){
       alert("비번이 서로 다릅니다!");
    document.CtrlForm.mPWD1.focus();
    return false;
 }
    //이름빈칸검사
    if(document.CtrlForm.mName.value == ""){
        alert("이름을 입력하세요!");
        document.CtrlForm.mID.focus();
        return false;
     }
    //핸드폰 11자리 체크
    if(document.CtrlForm.mPhone.value.length != 11){
       alert("핸드폰은 11자리로 입력하세요!");
       document.CtrlForm.mPhone.focus();
       return false;
    }
    //생년월일 8자리 체크
    if(document.CtrlForm.mYMD.value.length != 8){
       alert("생년월일은 8자리로 입력하세요!");
       document.CtrlForm.mPhone.focus();
       return false;
    }
    var mEmail = document.CtrlForm.mEmail.value;
    if (mEmail.indexOf('@') === -1) {
        alert("올바르지 않은 이메일 형식입니다");
        document.CtrlForm.mEmail.focus();
        return false;
    }
    // 모든 유효성 검사를 통과하면 폼을 제출
    document.CtrlForm.submit();
}

</script>
<body>

	<Form action="UserInsertOK.jsp" name="CtrlForm" method="post">
  	 	<p> 아이디 : <input type="text" name="mID" value="Jun5231" required><br>
  	 	아이디는 8자이상<br>
   		<p> 비밀번호 : <input type="password" name="mPWD1"  value="1234"><br>
   		비밀번호는 영어소문자, 숫자, 문자는 ^ 와 & 만 사용가능<br>
   		<p> 비밀번호확인 : <input type="password" name="mPWD2"  value="1234"><br>
   		비번이 같은지 체크<br>
   		<p> 이름 : <input type="text" name="mName" value="박준한"><br>
   		빈칸체크<br>
  	 	<p> 핸드폰 : <input type="text" name="mPhone" value="01083800931"><br>
  	 	11자리체크<br>
  	 	<p> 생년월일 : <input type="text" name="mYMD" maxlength="11" value="20001024"><br>
  	 	8자리체크<br>
  		<p> 이메일 : <input type="text" name="mEmail" value="junhan5231@naver.com"><br>

   		<input type="button" value="확인" onclick="CheckForm()">
   
	</Form>
</body>
</html>

<!-- CREATE TABLE `mydatabase`.`tbl_userinfo` (
  `nSeq` INT NOT NULL AUTO_INCREMENT,
  `vID` VARCHAR(20) NOT NULL,
  `vPwd` VARCHAR(10) NULL,
  `vName` VARCHAR(20) NULL,
  `vPhone` VARCHAR(11) NULL,
  `vEmail` VARCHAR(50) NULL,
  `dRegdate` DATETIME NULL,
  PRIMARY KEY (`nSeq`));
-->