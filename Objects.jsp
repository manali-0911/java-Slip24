<%@page import ="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   Calendar c = Calendar.getInstance();
   
   int dd = c.get(Calendar.DATE);
   int h = c.get(Calendar.HOUR_OF_DAY);
   int m = c.get(Calendar.MINUTE);
   int s = c.get(Calendar.SECOND);
   
   out.println("\nDate: "+ dd+"<br>Time: " + h + ":" + m + ":"+s);
   
   String path = request.getContextPath();
   out.println("<br>Path: "+ path);
   
   Cookie cookie = new Cookie("p",path);
   response.addCookie(cookie);
   out.println("\nCookie Added");
   
   out.println("<br>Config:");
   out.println("\n"+config.getServletName());
   
   out.println("<br>Application: ");
   out.println("\n"+application.getServerInfo());
%>
        