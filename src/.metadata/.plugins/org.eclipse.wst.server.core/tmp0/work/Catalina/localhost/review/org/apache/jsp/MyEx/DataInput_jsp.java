/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.15
 * Generated at: 2023-10-31 00:51:11 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.MyEx;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class DataInput_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public boolean getErrorOnELNotFound() {
    return false;
  }

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>중간고사</title>\r\n");
      out.write("</head>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("   //alert(\"자바스크립트 실행됨\");\r\n");
      out.write("   function CheckForm(){\r\n");
      out.write("      if(document.CtrlForm.mID.value == \"\"){\r\n");
      out.write("         alert(\"아이디를 입력하세요!\");\r\n");
      out.write("         document.CtrlForm.mID.focus();\r\n");
      out.write("         return false;\r\n");
      out.write("      }\r\n");
      out.write("      //아이디 체크\r\n");
      out.write("      for(count=0; count<document.CtrlForm.mID.value.length;count++){\r\n");
      out.write("         var ch = document.CtrlForm.mID.value.charAt(count);\r\n");
      out.write("         /*\r\n");
      out.write("         if((ch <'0'||(ch >'9') && (ch <))) {\r\n");
      out.write("            alert(\"아이디를 숫자로 입력하세요!\");\r\n");
      out.write("            document.CtrlForm.mID.focus();\r\n");
      out.write("            return false;\r\n");
      out.write("         }\r\n");
      out.write("         */\r\n");
      out.write("         \r\n");
      out.write("         if((ch < 'A' || ch > 'Z') && (ch >'a'||ch <'z')&&(ch>'0'||ch<'9')){\r\n");
      out.write("            alert(\"아이디는 영문 대문자로만 입력해 주세요.\");\r\n");
      out.write("            document.CtrlForm.mID.focus();\r\n");
      out.write("            return false;\r\n");
      out.write("         } \r\n");
      out.write("      }\r\n");
      out.write("      //비번 = 비번확인 체크\r\n");
      out.write("      if(document.CtrlForm.mPWD1.value != document.CtrlForm.mPWD2.value ){\r\n");
      out.write("         alert(\"비번이 서로 다릅니다!\");\r\n");
      out.write("      document.CtrlForm.mPWD1.focus();\r\n");
      out.write("      return false;\r\n");
      out.write("   }\r\n");
      out.write("      //핸드폰 11자리 체크\r\n");
      out.write("      if(document.CtrlForm.mPhone.value.length != 11){\r\n");
      out.write("         alert(\"핸드폰은 11자리로 입력하세요!\");\r\n");
      out.write("         document.CtrlForm.mPhone.focus();\r\n");
      out.write("         return false;\r\n");
      out.write("      }\r\n");
      out.write("      //핸드폰 숫자 체크\r\n");
      out.write("      if(isNaN(document.CtrlForm.mPhone.value)){\r\n");
      out.write("         alert(\"핸드폰은 숫자로 입력하세요!\");\r\n");
      out.write("         document.CtrlForm.mPhone.focus();\r\n");
      out.write("         return false;\r\n");
      out.write("      }\r\n");
      out.write("      document.CtrlForm.submit();\r\n");
      out.write("   }\r\n");
      out.write("</script>\r\n");
      out.write("<body>\r\n");
      out.write("   회원입력\r\n");
      out.write("<Form action=\"ResNCalcu.jsp\" name=\"CtrlForm\" method=\"post\">\r\n");
      out.write("   <input type=\"Hidden\" name=\"mDev\" value=\"U\"><br>\r\n");
      out.write("   <p> 아이디 : <input type=\"text\" name=\"mID\" value=\"TEST\" required>\r\n");
      out.write("   <p> 비밀번호 : <input type=\"password\" name=\"mPWD1\"  value=\"1234\">\r\n");
      out.write("   <p> 비밀번호확인 : <input type=\"password\" name=\"mPWD2\"  value=\"1234\">\r\n");
      out.write("   <p> 핸드폰 : <input type=\"text\" name=\"mPhone\" maxlength=\"11\" value=\"01099811072\">\r\n");
      out.write("   <p> 생년월일 : <input type=\"text\" name=\"mYMD\" maxlength=\"8\" value=\"20001024\">\r\n");
      out.write("   <p> 취미 : <input type=\"checkbox\" name=\"mHobby1\" value=\"음악\" checked>음악,\r\n");
      out.write("           <input type=\"checkbox\" name=\"mHobby2\"value=\"운동\" >운동,\r\n");
      out.write("           <input type=\"checkbox\" name=\"mHobby3\" value=\"영화\">영화 <br><br>\r\n");
      out.write("   <input type=\"button\" value=\"확인\" onclick=\"CheckForm()\">\r\n");
      out.write("   \r\n");
      out.write("</Form>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}