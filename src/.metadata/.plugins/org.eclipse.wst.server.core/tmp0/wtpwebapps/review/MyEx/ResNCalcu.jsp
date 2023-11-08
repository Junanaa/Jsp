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
   request.setCharacterEncoding("UTF-8"); //한글 표시용
   String sPWDStr ="";
   String sID ="";
   String sPWD1 ="";
   String sPWD2 ="";
   String sPhone ="";
   String sP1 ="";
   String sP2 ="";
   String sP3 ="";
   String sPRes = "";
   String sYMD ="";
   String sYYYY="";
   String sHobby1 ="";
   String sHobby2 ="";
   String sHobby3 ="";
   int nYYYY = 0;
   int nAge = 0;
   String sNum1="";
   String sNum2="";
   String sCalcu="";
   int nNum1 = 0;
   int nNum2 = 0;
   int nResult = 0;
   
   
   String sDev = request.getParameter("mDev");
   if(sDev.equals("U")){
      sPWDStr ="";
      sID = request.getParameter("mID");
      sPWD1 = request.getParameter("mPWD1");
      sPWD2 = request.getParameter("mPWD2");
      if (!sPWD1.equals(sPWD2)) {
         sPWDStr = "입력한 비번 2개가 다릅니다.";
      }
      else{
         sPWDStr = "입력한 비번 2개가 동일합니다.";
      }
      sPhone = request.getParameter("mPhone");
      sP1 = sPhone.substring(0,3);
      sP2 = sPhone.substring(3,7);
      sP3 = sPhone.substring(7,11);
      sPRes = sP1+"-"+sP2+"-"+sP3; // 이것도 가능
      
      sYMD = request.getParameter("mYMD");
      sYYYY = sYMD.substring(0,4);
      nYYYY = Integer.parseInt(sYYYY);
      nAge = 2023 - nYYYY;
      
      sHobby1 = request.getParameter("mHobby1");
      sHobby2 = request.getParameter("mHobby2");
      sHobby3 = request.getParameter("mHobby3");
      }   
      else if (sDev.equals("C")){
         sNum1 = request.getParameter("mNum1");
         nNum1 = Integer.parseInt(sNum1);
         sNum2 = request.getParameter("mNum2");
         nNum2 = Integer.parseInt(sNum2);
          sCalcu = request.getParameter("mCalcu");
         switch (sCalcu){
            case "P":
               nResult = nNum1 + nNum2;
            break;
            case "M":
               nResult = nNum1 - nNum2;
            break;
            case "S":
               nResult = nNum1 * nNum2;
            break;
            case "D":
               nResult = nNum1 / nNum2;
            break;
         }
      }
   %>
      아이디: <%=sID%><br>
      비밀번호: <%=sPWD1%><br>
      비밀번호확인: <%=sPWDStr%><br>
      핸드폰: <%=sP1%>-<%=sP2%>-<%=sP3%><br>
      나이: <%=nAge %><br>
      <% if (sHobby1 != null) { %>
      취미1: <%=sHobby1%><br>
      <% } %>
      <% if (sHobby2 != null) { %>
      취미2: <%=sHobby2%><br>
      <% } %>
      <% if (sHobby3 != null) { %>
      취미3: <%=sHobby3%><br>
      <% } %>
   <br><br>

   <Form action="ResNCalcu.jsp" name="CtrlForm" method="post">
          <input type="Hidden" name="mDev" value="C"><br>
             
      계산기:<input type="text" name="mNum1" size="3" value="0">
          <select name="mCalcu"size="1">
             <option value="P" selected>+</option>
             <option value="M">-</option>
             <option value="S">*</option>
             <option value="D">/</option>
          </select>
            <input type="text" name="mNum2" size="3" value="0">
            <input type="submit" value="확인"><br>
   </Form>
             <input type="text" name="mResult" size="3" value="<%=nResult%>">
             
   </body>
   </html>