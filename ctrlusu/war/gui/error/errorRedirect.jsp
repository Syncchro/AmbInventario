<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.io.StringWriter" %>

<% 
 
 // copy error objects to the session if you want to see details on the error page
 session.setAttribute("_error_message",
    request.getAttribute("javax.servlet.error.message"));
 session.setAttribute("_error_exception_type",
    request.getAttribute("javax.servlet.error.exception_type"));
 session.setAttribute("_error_exception",
    request.getAttribute("javax.servlet.error.exception"));
 session.setAttribute("_error_status_code",
    request.getAttribute("javax.servlet.error.status_code"));
 session.setAttribute("_error_request_uri",
    request.getAttribute("javax.servlet.error.request_uri"));
 session.setAttribute("_error_servlet_name",
    request.getAttribute("javax.servlet.error.servlet_name"));
    
	Throwable e = (Throwable)request.getAttribute("javax.servlet.error.exception");
	final StringWriter sw = new StringWriter();
	final PrintWriter pw = new PrintWriter(sw);
	if(e!=null){
	    e.printStackTrace(pw);
	}
	String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
	url = url + request.getContextPath();
  
  
	session.setAttribute("_error_stack_trace", sw.toString());
	response.sendRedirect(url + "/gui/error/error.iface");
 %>