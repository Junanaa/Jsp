<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중간고사</title>
</head>
<script type="text/javascript">
   //alert("자바스크립트 실행됨");
   function CheckForm(){
      if(document.CtrlForm.mID.value == ""){
         alert("아이디를 입력하세요!");
         document.CtrlForm.mID.focus();
         return false;
      }
      //아이디 체크
      for(count=0; count<document.CtrlForm.mID.value.length;count++){
         var ch = document.CtrlForm.mID.value.charAt(count);
         /*
         if((ch <'0'||(ch >'9') && (ch <))) {
            alert("아이디를 숫자로 입력하세요!");
            document.CtrlForm.mID.focus();
            return false;
         }
         */
         
         if((ch < 'A' || ch > 'Z') && (ch >'a'||ch <'z')&&(ch>'0'||ch<'9')){
            alert("아이디는 영문 대문자로만 입력해 주세요.");
            document.CtrlForm.mID.focus();
            return false;
         } 
      }
      //비번 = 비번확인 체크
      if(document.CtrlForm.mPWD1.value != document.CtrlForm.mPWD2.value ){
         alert("비번이 서로 다릅니다!");
      document.CtrlForm.mPWD1.focus();
      return false;
   }
      //핸드폰 11자리 체크
      if(document.CtrlForm.mPhone.value.length != 11){
         alert("핸드폰은 11자리로 입력하세요!");
         document.CtrlForm.mPhone.focus();
         return false;
      }
      //핸드폰 숫자 체크
      if(isNaN(document.CtrlForm.mPhone.value)){
         alert("핸드폰은 숫자로 입력하세요!");
         document.CtrlForm.mPhone.focus();
         return false;
      }
      document.CtrlForm.submit();
   }
</script>
<body>
   회원입력
<Form action="ResNCalcu.jsp" name="CtrlForm" method="post">
   <input type="Hidden" name="mDev" value="U"><br>
   <p> 아이디 : <input type="text" name="mID" value="TEST" required>
   <p> 비밀번호 : <input type="password" name="mPWD1"  value="1234">
   <p> 비밀번호확인 : <input type="password" name="mPWD2"  value="1234">
   <p> 핸드폰 : <input type="text" name="mPhone" maxlength="11" value="01099811072">
   <p> 생년월일 : <input type="text" name="mYMD" maxlength="8" value="20001024">
   <p> 취미 : <input type="checkbox" name="mHobby1" value="음악" checked>음악,
           <input type="checkbox" name="mHobby2"value="운동" >운동,
           <input type="checkbox" name="mHobby3" value="영화">영화 <br><br>
   <input type="button" value="확인" onclick="CheckForm()">
   
</Form>



</body>
</html>