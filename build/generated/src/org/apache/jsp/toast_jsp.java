package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class toast_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<button id=\"btn\">Show toast</button>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("/*    .toasts-container {\n");
      out.write("    position: fixed;\n");
      out.write("    width: 100%;\n");
      out.write("    max-width: 310px;\n");
      out.write("    min-height: 100px;\n");
      out.write("}*/\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(".toast--visible {\n");
      out.write("  opacity: .9;\n");
      out.write("  transform: translateY(-10%);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".toast--hidden {\n");
      out.write("  opacity: 0;\n");
      out.write("  transform: translateY(-20%);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".toast--green {\n");
      out.write("  background: rgba(189, 240, 191,0.5);\n");
      out.write("  color: #085a0c;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".toasts-container--left-bottom {\n");
      out.write("  left: .5em;\n");
      out.write("  bottom: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".toasts-container--left-top {\n");
      out.write("  left: .5em;\n");
      out.write("  top: 1em;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".toast__body {\n");
      out.write("  padding: .7em 1em .3em;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".toast__header {\n");
      out.write("  margin: 0 0 .5em;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".toast__text {\n");
      out.write("  margin: 0 0 .5em;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("BUTTON {\n");
      out.write("  margin-left: 50%;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("    /*\n");
      out.write("  Note: CSS Style for the toast should be set in Main css file or in separate css file for the Toast\n");
      out.write("  -------------------------------------------------------------------------------------------------------------\n");
      out.write("  Description: Toast message that will appear on the screen and disappear after defined time\n");
      out.write("*/\n");
      out.write("(function (globalNamespace) { // globalNamespace to which we can bind our Toast object\n");
      out.write("\"use strict\";\n");
      out.write("\n");
      out.write("var toast = { // toast object with predefined options\n");
      out.write("  containerClass: \"toasts-container\",\n");
      out.write("  containerID: \"toast-container\",\n");
      out.write("  toastClass: \"toast\",\n");
      out.write("  position: \"left-bottom\",\n");
      out.write("  direction: \"from-bottom\",\n");
      out.write("  messageTitleClass: \"toast__header\",\n");
      out.write("  messageClass: \"toast__text\",\n");
      out.write("  title: \"\",\n");
      out.write("  message: \"\",\n");
      out.write("  styleClass: undefined,\n");
      out.write("  showClass: \"toast--visible\",\n");
      out.write("  hideClass: \"toast--hidden\",\n");
      out.write("  Show: setToast,\n");
      out.write("  closeAfterSeconds: 10,\n");
      out.write("  isAutoClose: true,\n");
      out.write("  /*__initPos: 0,\n");
      out.write("  __incrementPosVal: 110*/ /*current height of the toast + 10px gap*/\n");
      out.write("};\n");
      out.write("  \n");
      out.write("    //self.closeBtnSelector = \".inline-alert__close-button\";\n");
      out.write("    // var transitionPropValRegExp = new RegExp(\"(?:transform)\\\\s*(\\\\d+\\\\.\\\\d+)(?:s)\", \"gi\");\n");
      out.write("\n");
      out.write("function setToast(options) {\n");
      out.write("  if (!options || this == undefined) { return; }\n");
      out.write("  var defOptsObj = extendObj(this, options); // gets option value from received options object or from predefined options\n");
      out.write("  \n");
      out.write("  // for the time being, we assume that there is only one place on page where toasts could appear\n");
      out.write("  var toastsContainer = document.getElementById(defOptsObj.containerID); // container for toasts\n");
      out.write("  \n");
      out.write("    if(!toastsContainer) { // if container doesn't define yet, we create it and place it on page\n");
      out.write("      var toastsContainer = document.createElement(\"div\");\n");
      out.write("      toastsContainer.id = defOptsObj.containerID;\n");
      out.write("      toastsContainer.classList.add(defOptsObj.containerClass); \n");
      out.write("      document.body.appendChild(toastsContainer);\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    /// Direction of the container could be changed, \n");
      out.write("   /// direction class pattern should be TOASTCLASS--TOASTDIRECTION e.g. .toasts-container--left-bottom\n");
      out.write("    toastsContainer.classList.add(defOptsObj.containerClass + \"--\" + defOptsObj.position);\n");
      out.write("  \n");
      out.write("  var toastEl = document.createElement(\"div\");\n");
      out.write("  toastEl.classList.add(defOptsObj.toastClass);\n");
      out.write("  if(defOptsObj.styleClass && defOptsObj.styleClass.length > 0) { // gives style to the toast (e.g. background, text color)\n");
      out.write("    toastEl.classList.add(defOptsObj.styleClass);\n");
      out.write("  }\n");
      out.write("  \n");
      out.write("  var toastBody = document.createElement(\"div\");\n");
      out.write("  toastBody.classList.add(\"toast__body\");\n");
      out.write("  \n");
      out.write("  var toastHeader = document.createElement(\"h4\");\n");
      out.write("  toastHeader.classList.add(defOptsObj.messageTitleClass);\n");
      out.write("  toastHeader.textContent = defOptsObj.title;\n");
      out.write("  \n");
      out.write("  var toastMessage = document.createElement(\"p\");\n");
      out.write("  toastMessage.classList.add(defOptsObj.messageClass);\n");
      out.write("  toastMessage.innerHTML = defOptsObj.message; // we can add HTML tags here (e.g. <br />)\n");
      out.write("  \n");
      out.write("  toastBody.appendChild(toastHeader);\n");
      out.write("  toastBody.appendChild(toastMessage);\n");
      out.write("  toastEl.appendChild(toastBody);\n");
      out.write("  \n");
      out.write("  /// set time after which element will be given class to reveal it\n");
      out.write("  var revealElemDelay = 5; /*in milliseconds*/\n");
      out.write("  \n");
      out.write("  if(defOptsObj.isAutoClose) { \n");
      out.write("    window.setTimeout(function () {\n");
      out.write("    toastEl.classList.remove(defOptsObj.showClass); // hides element (with animation) from the page\n");
      out.write("      toastEl.classList.add(defOptsObj.hideClass); /***********/\n");
      out.write("      \n");
      out.write("      window.setTimeout(function () { // removes element entirely from the page\n");
      out.write("        toastEl.parentNode.removeChild(toastEl);\n");
      out.write("      }, getTransitionDurationAvgTimeInMillSec(toastEl)); // should be larger then transition duration values\n");
      out.write(" \n");
      out.write("    }, (defOptsObj.closeAfterSeconds * 1000) + revealElemDelay);\n");
      out.write("  };\n");
      out.write("    \n");
      out.write("  //document.body.appendChild(toastEl);\n");
      out.write("  if(defOptsObj.direction === \"from-bottom\")\n");
      out.write("  toastsContainer.appendChild(toastEl);\n");
      out.write("  else if(defOptsObj.direction === \"from-top\")\n");
      out.write("  toastsContainer.insertBefore(toastEl, toastsContainer.firstElementChild); // new toast will appear above the last one\n");
      out.write("  \n");
      out.write("  window.setTimeout(function () {\n");
      out.write("    toastEl.classList.add(defOptsObj.showClass);\n");
      out.write("  }, revealElemDelay);\n");
      out.write("  \n");
      out.write("};\n");
      out.write("  \n");
      out.write("      // returns sum of transition duration css property values, for the element, in milliseconds (i.e. each value multiply by 1000)\n");
      out.write("    /// <param name=\"el\" type=\"HTMLElement\">Element from which transitionDuration, css property, should be read</param>\n");
      out.write("    function getTransitionDurationAvgTimeInMillSec(el) {\n");
      out.write("        var resultArr = window.getComputedStyle(el).transitionDuration.match(/(\\d+.\\d+)/gi); // gets only numbers from property e.g. \"0.7s, 0.6s\" \n");
      out.write("        var resultNum = 0;\n");
      out.write("        if (resultArr) {\n");
      out.write("            for (var i = 0, len = resultArr.length; i < len; i++) {\n");
      out.write("                var num = resultArr[i];\n");
      out.write("                resultNum += (parseFloat(num) * 1000); /// e.g. from 0.7 to 700\n");
      out.write("            }\n");
      out.write("            resultNum /= resultArr.length;\n");
      out.write("        }\n");
      out.write("        return resultNum;\n");
      out.write("    };\n");
      out.write("\n");
      out.write("\n");
      out.write("    /// Works like JQuery extend method\n");
      out.write("    /// Checks property from the second object if it's undefined\n");
      out.write("    /// gets property from the first object, otherwise gets property from the second object\n");
      out.write("    /// and set result object with received property and its value;\n");
      out.write("    // returns object with properties from first and second objects\n");
      out.write("    function extendObj(firstObj, secondObj) {\n");
      out.write("        var props = Object.getOwnPropertyNames(firstObj);\n");
      out.write("        var resultObj = {};\n");
      out.write("        for (var i = 0, len = props.length; i < len; i++) {\n");
      out.write("            var prop = props[i];\n");
      out.write("            if (secondObj[prop] == undefined) {\n");
      out.write("                resultObj[prop] = firstObj[prop];\n");
      out.write("            } else {\n");
      out.write("                resultObj[prop] = secondObj[prop];\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        return resultObj;\n");
      out.write("    };\n");
      out.write("\n");
      out.write(" return globalNamespace.Toast = toast;\n");
      out.write("})(window);\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("/*Test*/\n");
      out.write("var btn = document.getElementById(\"btn\");\n");
      out.write("  \n");
      out.write("  btn.addEventListener(\"click\", function (e) {\n");
      out.write("    var opts = {\n");
      out.write("     title: \"Toast Title\",\n");
      out.write("     message: \"This is toast message for test purposes only.\",\n");
      out.write("     styleClass: \"toast--green\",\n");
      out.write("     position: \"left-bottom\",\n");
      out.write("     direction: \"from-top\"\n");
      out.write("    };\n");
      out.write("   \n");
      out.write("    window.Toast.Show(opts);\n");
      out.write("  }, false);\n");
      out.write("/*END Test*/\n");
      out.write("</script>");
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
