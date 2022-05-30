package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Slider_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Image SLider</title>\n");
      out.write(" \n");
      out.write("    <style>\n");
      out.write("        body {\n");
      out.write("    margin: 0;\n");
      out.write("    padding: 0;\n");
      out.write("    height: 100vh;\n");
      out.write("    display: flex;\n");
      out.write("    justify-content: center;\n");
      out.write("    align-items: center;\n");
      out.write("    background: #23E3C9;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".slider {\n");
      out.write("    width: 800px;\n");
      out.write("    height: 500px;\n");
      out.write("    border-radius: 10px;\n");
      out.write("    overflow: hidden;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".slides {\n");
      out.write("    width: 500%;\n");
      out.write("    height: 500px;\n");
      out.write("    display: flex;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".slides input {\n");
      out.write("    display: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".slide {\n");
      out.write("    width: 20%;\n");
      out.write("    transition: 2s;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".slide img {\n");
      out.write("    width: 800px;\n");
      out.write("    height: 500px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* css for manual slide navagation */\n");
      out.write(".navigation-manual {\n");
      out.write("    position: absolute;\n");
      out.write("    width: 800px;\n");
      out.write("    margin-top: -40px;\n");
      out.write("    display: flex;\n");
      out.write("    justify-content: center;\n");
      out.write("\n");
      out.write("}\n");
      out.write("\n");
      out.write(".manual-btn {\n");
      out.write("    border: 2px solid #40d3dc;\n");
      out.write("    padding: 5px;\n");
      out.write("    border-radius: 10px;\n");
      out.write("    cursor: pointer;\n");
      out.write("    transition: 1s;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".manual-btn:not(:last-child) {\n");
      out.write("    margin-right: 40px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".manual-btn:hover {\n");
      out.write("    background: #40d3dc;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#radio1:checked ~ .first {\n");
      out.write("    margin-left: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#radio2:checked ~ .first {\n");
      out.write("    margin-left: -20%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#radio3:checked ~ .first {\n");
      out.write("    margin-left: -40%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#radio4:checked ~ .first {\n");
      out.write("    margin-left: -60%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* css for automatic navigation */\n");
      out.write(".navigation-auto {\n");
      out.write("    position: absolute;\n");
      out.write("    display: flex;\n");
      out.write("    width: 800px;\n");
      out.write("    justify-content: center;\n");
      out.write("    margin-top: 460px;\n");
      out.write("}\n");
      out.write("    </style>\n");
      out.write("    <script>\n");
      out.write("         var counter = 1;\n");
      out.write("        setInterval(function() {\n");
      out.write("            document.getElementById('radio' + counter).checked = true;\n");
      out.write("            counter++;\n");
      out.write("            if (counter > 4) {\n");
      out.write("                counter = 1;\n");
      out.write("            }\n");
      out.write("        },4000);\n");
      out.write("    </script>\n");
      out.write("    \n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <!-- image slider start -->\n");
      out.write("    <div class=\"slider\">\n");
      out.write("        <div class=\"slides\">\n");
      out.write("            <!-- radio buttons start -->\n");
      out.write("            <input type=\"radio\" name=\"radio-btn\" id=\"radio1\">\n");
      out.write("            <input type=\"radio\" name=\"radio-btn\" id=\"radio2\">\n");
      out.write("            <input type=\"radio\" name=\"radio-btn\" id=\"radio3\">\n");
      out.write("            <input type=\"radio\" name=\"radio-btn\" id=\"radio4\">\n");
      out.write("            <!-- radio buttons end -->\n");
      out.write("\n");
      out.write("            <!-- slide images start -->\n");
      out.write("            <div class=\"slide first\">\n");
      out.write("                <img src=\"data:image/jpeg;base64,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\" alt=\"\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"slide\">\n");
      out.write("                <img src=\"data:image/jpeg;base64,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\" alt=\"\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"slide\">\n");
      out.write("                <img src=\"./assets/img/img3.jpg\" alt=\"\">\n");
      out.write("            </div> \n");
      out.write("            <div class=\"slide\">\n");
      out.write("                <img src=\"./assets/img/img4.jpg\" alt=\"\">\n");
      out.write("            </div>\n");
      out.write("            <!-- slide images end -->\n");
      out.write("\n");
      out.write("            <!-- automatic navigation start -->\n");
      out.write("            <div class=\"navigation-auto\">\n");
      out.write("                <div class=\"auto-btn1\"></div>\n");
      out.write("                <div class=\"auto-btn2\"></div>\n");
      out.write("                <div class=\"auto-btn3\"></div>\n");
      out.write("                <div class=\"auto-btn4\"></div>\n");
      out.write("            </div>\n");
      out.write("            <!-- automatic navigation end -->\n");
      out.write("        </div>\n");
      out.write("        <!-- manual navigation start -->\n");
      out.write("        <div class=\"navigation-manual\">\n");
      out.write("            <label for=\"radio1\" class=\"manual-btn\"></label>\n");
      out.write("            <label for=\"radio2\" class=\"manual-btn\"></label>\n");
      out.write("            <label for=\"radio3\" class=\"manual-btn\"></label>\n");
      out.write("            <label for=\"radio4\" class=\"manual-btn\"></label>\n");
      out.write("        </div>\n");
      out.write("        <!-- manual navigation end -->\n");
      out.write("    </div>\n");
      out.write("    <!-- image slider end -->\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
